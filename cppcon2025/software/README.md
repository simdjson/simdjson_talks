# PlayerJsonDemo

Ce projet C++ montre comment sérialiser et désérialiser la structure `Player` en JSON avec la bibliothèque [JSON for Modern C++ (nlohmann/json)](https://github.com/nlohmann/json).

## Structure Player
```cpp
struct Player {
    std::string username;
    int level;
    double health;
    std::vector<std::string> inventory;
};
```

## Compilation

```sh
cd software
cmake -B build
cmake --build build
```

## Exécution

```sh
./build/player_demo
```

## Dépendance
La bibliothèque nlohmann/json est récupérée automatiquement via CMake FetchContent.
