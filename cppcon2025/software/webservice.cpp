#include <string>
#include <vector>
#include <curl/curl.h>
#include <cstdlib>
#include <fmt/core.h>
#include <fmt/format.h>
#include <simdjson.h>

#if !SIMDJSON_STATIC_REFLECTION
#error "You need to enable static reflection for this to work"
#endif


struct weather_data {
    std::vector<std::string> time;
    std::vector<float> temperature_2m;
    std::vector<float> relative_humidity_2m;
    std::vector<float> winddirection_10m;
    std::vector<float> precipitation;
    std::vector<float> windspeed_10m;
};

std::string grab_weather_data(const std::string& latitude, const std::string& longitude) {
    std::string url = fmt::format("https://api.open-meteo.com/v1/forecast?latitude={}&longitude={}&hourly=temperature_2m,relative_humidity_2m,winddirection_10m,precipitation,windspeed_10m", latitude, longitude);
    CURL *curl = curl_easy_init();
    if (!curl) {
        throw std::runtime_error("Could not initialize cURL");
    }
    std::string response_data;
    curl_easy_setopt(curl, CURLOPT_URL, url.c_str());
    curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, +[](char *ptr, size_t size, size_t nmemb, void *userdata) -> size_t {
        auto *str = static_cast<std::string*>(userdata);
        str->append(ptr, size * nmemb);
        return size * nmemb;
    });
    curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response_data);
    CURLcode res = curl_easy_perform(curl);
    if (res != CURLE_OK) {
        curl_easy_cleanup(curl);
        throw std::runtime_error("Request failed cURL: " + std::string(curl_easy_strerror(res)));
    }
    curl_easy_cleanup(curl);
    return response_data;
}

int main() {
    std::string weather_data_str = grab_weather_data("45.5017", "-73.5673");
    simdjson::ondemand::parser parser;
    simdjson::ondemand::document doc = parser.iterate(simdjson::pad(weather_data_str));
    weather_data wd = doc["hourly"].get<weather_data>();
    // Assuming all vectors have the same length
    for (size_t i = 0; i < wd.time.size(); ++i) {
        fmt::print("Time: {}, Temperature: {:.1f}°C, Humidity: {:.1f}%, Wind Direction: {:.1f}°, Precipitation: {:.1f}mm, Wind Speed: {:.1f}km/h\n",
            wd.time[i],
            wd.temperature_2m[i],
            wd.relative_humidity_2m[i],
            wd.winddirection_10m[i],
            wd.precipitation[i],
            wd.windspeed_10m[i]);
    }
    return EXIT_SUCCESS;
}