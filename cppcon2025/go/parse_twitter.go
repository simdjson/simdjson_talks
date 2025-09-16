package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"
	"os"
	"time"
)

type TwitterUser struct {
	ID             uint64 `json:"id"`
	Name           string `json:"name"`
	ScreenName     string `json:"screen_name"`
	Location       string `json:"location"`
	Description    string `json:"description"`
	FollowersCount uint64 `json:"followers_count"`
	FriendsCount   uint64 `json:"friends_count"`
	Verified       bool   `json:"verified"`
	StatusesCount  uint64 `json:"statuses_count"`
}

type Status struct {
	User TwitterUser `json:"user"`
}

type TwitterData struct {
	Statuses []Status `json:"statuses"`
}

// Benchmark parsing of twitter.json and report speed in GB/s
func main() {
	filename := "twitter.json"
	file, err := os.Open(filename)
	if err != nil {
		fmt.Println("Error opening file:", err)
		return
	}
	defer file.Close()

	bytes, err := ioutil.ReadAll(file)
	if err != nil {
		fmt.Println("Error reading file:", err)
		return
	}

	// Warmup parse
	var warmup TwitterData
	if err := json.Unmarshal(bytes, &warmup); err != nil {
		fmt.Println("Error parsing JSON:", err)
		return
	}

	// Benchmark loop
	const iterations = 1000
	var totalBytes int64 = int64(len(bytes)) * iterations
	start := now()
	for i := 0; i < iterations; i++ {
		var data TwitterData
		if err := json.Unmarshal(bytes, &data); err != nil {
			fmt.Println("Error parsing JSON on iteration", i, ":", err)
			return
		}
	}
	elapsed := since(start)
	gb := float64(totalBytes) / 1e9
	seconds := elapsed.Seconds()
	speed := gb / seconds * 1000 // Convert GB/s to MB/s
	fmt.Printf("Parsed %.2f GB in %.3f seconds (%.2f MB/s)\n", gb, seconds, speed)
}

// now returns current time
func now() Time {
	return Time{t: timeNow()}
}

// since returns duration since start
func since(start Time) Duration {
	return Duration{d: timeSince(start.t)}
}

// Time and Duration wrappers for benchmarking
type Time struct{ t interface{} }
type Duration struct{ d interface{} }

func (d Duration) Seconds() float64 {
	switch v := d.d.(type) {
	case float64:
		return v
	case int64:
		return float64(v) / 1e9
	default:
		return 0
	}
}

// Use Go's time package
func timeNow() interface{} { return time.Now() }
func timeSince(t interface{}) interface{} {
	if tt, ok := t.(time.Time); ok {
		return float64(time.Since(tt).Nanoseconds()) / 1e9
	}
	return 0
}
