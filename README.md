**Lightweight URL & URI parser (RFC 1738, RFC 3986)**

(C) [Sergey Kosarevsky](https://github.com/corporateshark), 2015-2020

@corporateshark sk@linderdaum.com

http://www.linderdaum.com

http://blog.linderdaum.com

----

A tiny and lightweight URL & URI parser (RFC 1738, RFC 3986) written in C++.

----

<br>

## Installation

Run:

```sh
$ npm i lurlparser.cxx
```

And then include `lurlparser.h` as follows:

```cxx
// main.cxx
#define LURLPARSER_IMPLEMENTATION
#include <lurlparser.h>

int main() { /* ... */ }
```

Finally, compile while adding the path `node_modules/lurlparser.cxx` to your compiler's include paths.

```bash
$ clang++ -std=c++17 -I./node_modules/lurlparser.cxx main.cxx  # or, use g++
$ g++     -std=c++17 -I./node_modules/lurlparser.cxx main.cxx
```

You may also use a simpler approach with the [cpoach](https://www.npmjs.com/package/cpoach.sh) tool, which automatically adds the necessary include paths of all the installed dependencies for your project.

```bash
$ cpoach clang++ -std=c++17 main.cxx  # or, use g++
$ cpoach g++     -std=c++17 main.cxx
```

----

<br>

## Usage example

```cxx
const auto URL = LUrlParser::ParseURL::parseURL( "https://John:Dow@github.com:80/corporateshark/LUrlParser" );

if ( URL.isValid() )
{
  cout << "Scheme    : " << URL.scheme_ << endl;
  cout << "Host      : " << URL.host_ << endl;
  cout << "Port      : " << URL.port_ << endl;
  cout << "Path      : " << URL.path_ << endl;
  cout << "Query     : " << URL.query_ << endl;
  cout << "Fragment  : " << URL.fragment_ << endl;
  cout << "User name : " << URL.userName_ << endl;
  cout << "Password  : " << URL.password_ << endl;
}
```

----

<br>
<br>


[![](https://raw.githubusercontent.com/qb40/designs/gh-pages/0/image/11.png)](https://wolfram77.github.io)<br>
[![SRC](https://img.shields.io/badge/src-repo-green?logo=Org)](https://github.com/corporateshark/LUrlParser)
[![ORG](https://img.shields.io/badge/org-nodef-green?logo=Org)](https://nodef.github.io)
![](https://ga-beacon.deno.dev/G-RC63DPBH3P:SH3Eq-NoQ9mwgYeHWxu7cw/github.com/nodef/lurlparser.cxx)
