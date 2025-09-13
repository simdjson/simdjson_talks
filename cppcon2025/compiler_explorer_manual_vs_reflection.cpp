// Manual vs Reflection Serialization using simdjson
// Compile with: clang++ -std=c++26 -freflection -fexpansion-statements -stdlib=libc++ -O3
// Compare the assembly of these two approaches!

#define SIMDJSON_STATIC_REFLECTION 1
#include "simdjson.h"
#include <string>
#include <vector>

struct Car {
    std::string make;
    std::string model;
    int year;
    std::vector<float> tire_pressure;
};

// ============ APPROACH 1: MANUAL - What developers typically write ============
// This is realistic manual JSON serialization code
std::string serialize_manual(const Car& car) {
    std::string json = "{";

    // Field 1: make
    json += "\"make\":\"";
    for (char c : car.make) {
        switch(c) {
            case '"':  json += "\\\""; break;
            case '\\': json += "\\\\"; break;
            case '\b': json += "\\b"; break;
            case '\f': json += "\\f"; break;
            case '\n': json += "\\n"; break;
            case '\r': json += "\\r"; break;
            case '\t': json += "\\t"; break;
            default:
                if (c >= 0x20 && c <= 0x7f) {
                    json += c;
                } else {
                    // Unicode escape for control characters
                    char buf[7];
                    snprintf(buf, sizeof(buf), "\\u%04x", (unsigned char)c);
                    json += buf;
                }
        }
    }
    json += "\",";

    // Field 2: model
    json += "\"model\":\"";
    for (char c : car.model) {
        switch(c) {
            case '"':  json += "\\\""; break;
            case '\\': json += "\\\\"; break;
            case '\b': json += "\\b"; break;
            case '\f': json += "\\f"; break;
            case '\n': json += "\\n"; break;
            case '\r': json += "\\r"; break;
            case '\t': json += "\\t"; break;
            default:
                if (c >= 0x20 && c <= 0x7f) {
                    json += c;
                } else {
                    char buf[7];
                    snprintf(buf, sizeof(buf), "\\u%04x", (unsigned char)c);
                    json += buf;
                }
        }
    }
    json += "\",";

    // Field 3: year
    json += "\"year\":" + std::to_string(car.year) + ",";

    // Field 4: tire_pressure
    json += "\"tire_pressure\":[";
    for (size_t i = 0; i < car.tire_pressure.size(); ++i) {
        if (i > 0) json += ",";
        // Format float with precision
        char buf[32];
        snprintf(buf, sizeof(buf), "%.1f", car.tire_pressure[i]);
        json += buf;
    }
    json += "]";

    json += "}";
    return json;
}

// ============ APPROACH 2: REFLECTION with simdjson ============
// This is what you write WITH reflection - just one line!
std::string serialize_reflection(const Car& car) {
    // The magic happens here - reflection does everything!
    return simdjson::to_json(car);
}

// ============ TEST ALL APPROACHES ============
void benchmark() {
    Car car{"Toyota", "Camry", 2018, {40.1f, 39.9f}};

    // Force all functions to be compiled
    volatile auto json1 = serialize_manual(car);         // Manual approach
    volatile auto json2 = serialize_reflection(car);     // Reflection one-liner
}

// WHAT TO LOOK FOR IN COMPILER EXPLORER:
//
// 1. serialize_manual():
//    - Count instructions for building "make", "model", "year", "tire_pressure"
//    - Notice character-by-character string building
//    - Many small append operations
//
// 2. serialize_reflection_simulated():
//    - Field names in .rodata section as FIELD_MAKE, FIELD_MODEL, etc.
//    - Direct memcpy or append with known sizes
//    - Fewer instructions for field names
//
// 3. Compare instruction counts:
//    - How many instructions to append "make"?
//    - How many instructions to append "model"?
//    - Total function size difference
//
// This gives you REAL numbers, not estimates!
