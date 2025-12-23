#define LURLPARSER_IMPLEMENTATION
#include <lurlparser.h>
#include <string>
#include <iostream>


int main() {
    const std::string url = "https://www.example.com:8080";

    LUrlParser::ParseURL parsed = LUrlParser::ParseURL::parseURL(url);

    if (!parsed.isValid()) {
        std::cerr << "Failed to parse URL." << std::endl;
        return 1;
    }

    int port;
    if (parsed.getPort(&port)) {
        std::cout << "Valid port: " << port << std::endl;
    } else {
        std::cerr << "Invalid port." << std::endl;
    }

    return 0;
}
