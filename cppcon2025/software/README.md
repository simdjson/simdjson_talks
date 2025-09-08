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

## Use docker

```sh
./run_docker.sh bash
```

## Install OpenSLL

Your password is your username.

```
sudo apt update
sudo apt-get install libssl-dev -y
```

## Compilation

While in the `software` directory.

```sh

CXX=clang++ CC=clang cmake -B build
cmake --build build
```

## Exécution

```sh
./build/player_demo
./build/webservice
```

