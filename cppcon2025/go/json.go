package main

import (
	"encoding/json"
	"fmt"
	"log"
)

// Player represents a player with their attributes
type Player struct {
	Username  string   `json:"username"`  // Player's username
	Level     int      `json:"level"`     // Player's level
	Health    float64  `json:"health"`    // Player's health points
	Inventory []string `json:"inventory"` // Player's inventory
}

func main() {
	// Example of serialization (struct to JSON)
	player := Player{
		Username:  "hero123",
		Level:     42,
		Health:    95.5,
		Inventory: []string{"sword", "shield", "potion"},
	}

	// Serialize to JSON
	jsonData, err := json.MarshalIndent(player, "", "  ")
	if err != nil {
		log.Fatalf("Error during serialization: %v", err)
	}
	fmt.Println("Serialized JSON:")
	fmt.Println(string(jsonData))

	// Example of deserialization (JSON to struct)
	jsonStr := `{
		"username": "hero123",
		"level": 42,
		"health": 95.5,
		"inventory": ["sword", "shield", "potion"]
	}`

	var deserializedPlayer Player
	err = json.Unmarshal([]byte(jsonStr), &deserializedPlayer)
	if err != nil {
		log.Fatalf("Error during deserialization: %v", err)
	}

	fmt.Println("\nDeserialized Player:")
	fmt.Printf("Username: %s\n", deserializedPlayer.Username)
	fmt.Printf("Level: %d\n", deserializedPlayer.Level)
	fmt.Printf("Health: %.1f\n", deserializedPlayer.Health)
	fmt.Printf("Inventory: %v\n", deserializedPlayer.Inventory)
}
