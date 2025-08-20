package main

import (
    "fmt"
    "reflect"
)

// Player struct, equivalent to the C++ struct
type Player struct {
    Username  string
    Level     int
    Health    float64
    Inventory []string
}

// Function to enumerate fields of a struct using reflection
func enumerateFields(obj interface{}) {
    // Get the value and type of the object
    val := reflect.ValueOf(obj)
    typ := reflect.TypeOf(obj)

    // Check if the object is a struct
    if val.Kind() == reflect.Struct {
        fmt.Println("Fields of the struct:")
        for i := 0; i < typ.NumField(); i++ {
            field := typ.Field(i)
            value := val.Field(i)
            fmt.Printf("  Name: %s, Type: %s, Value: %v\n", field.Name, field.Type, value)
        }
    } else {
        fmt.Println("The object is not a struct")
    }
}

func main() {
    // Create an instance of Player
    player := Player{
        Username:  "Hero123",
        Level:     10,
        Health:    85.5,
        Inventory: []string{"Sword", "Shield", "Potion"},
    }

    // Enumerate the fields using reflection
    enumerateFields(player)
}
