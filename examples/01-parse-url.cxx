#define LURLPARSER_IMPLEMENTATION
#include <lurlparser.h>
#include <string>
#include <iostream>


int main() {
    const std::string url = "https://username:password@www.example.com:8080/path?query=123#fragment";

    LUrlParser::ParseURL parsed = LUrlParser::ParseURL::parseURL(url);

    if (!parsed.isValid()) {
        std::cerr << "Failed to parse URL." << std::endl;
        return 1;
    }

    std::cout << "Scheme: " << parsed.scheme_ << std::endl;
    std::cout << "Host: " << parsed.host_ << std::endl;
    std::cout << "Port: " << parsed.port_ << std::endl;
    std::cout << "Path: " << parsed.path_ << std::endl;
    std::cout << "Query: " << parsed.query_ << std::endl;
    std::cout << "Fragment: " << parsed.fragment_ << std::endl;
    std::cout << "Username: " << parsed.userName_ << std::endl;
    std::cout << "Password: " << parsed.password_ << std::endl;

    return 0;
}
