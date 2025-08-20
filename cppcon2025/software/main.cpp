#include <iostream>
#include <nlohmann/json.hpp>
#include <string>
#include <vector>
#include <fmt/format.h>
#include <fmt/core.h>
#include <fmt/ranges.h>

struct Player {
  std::string username;
  int level;
  double health;
  std::vector<std::string> inventory;
  bool operator<=>(const Player &other) const = default;
};

std::string to_json_string(const Player &p) {
  return nlohmann::json{{"username", p.username},
                        {"level", p.level},
                        {"health", p.health},
                        {"inventory", p.inventory}}
      .dump();
}

void to_json(nlohmann::json &j, const Player &p) {
  j = nlohmann::json{{"username", p.username},
                     {"level", p.level},
                     {"health", p.health},
                     {"inventory", p.inventory}};
}

Player from_json_string(const std::string& json_str) {
    nlohmann::json j = nlohmann::json::parse(json_str);
    Player p;
    j.at("username").get_to(p.username);
    j.at("level").get_to(p.level);
    j.at("health").get_to(p.health);
    j.at("inventory").get_to(p.inventory);
    return p;
}

std::string escape_json(const std::string& str) {
    return str; // fake
}

std::string serialize_player(const Player& p) {
    return fmt::format(
        "{{"
        "\"username\":\"{}\","
        "\"level\":{},"
        "\"health\":{},"
        "\"inventory\":{}"
        "}}",
        escape_json(p.username),
        p.level,
        std::isfinite(p.health) ? p.health : -1.0,
        p.inventory| std::views::transform(escape_json)
    );
}

int main() {
  Player p{"Alice", 42, 99.5, {"sword", "shield", "potion"}};
  std::cout << "Serialized Player: " << to_json_string(p) << std::endl;
  Player back = from_json_string(to_json_string(p));
  std::cout << "== " << (p == back) << std::endl;
  std::cout << serialize_player(p) << std::endl;

  return EXIT_SUCCESS;

}
