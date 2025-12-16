**Lightweight URL & URI parser (RFC 1738, RFC 3986)**

(C) [Sergey Kosarevsky](https://github.com/corporateshark), 2015-2020

@corporateshark sk@linderdaum.com

http://www.linderdaum.com

http://blog.linderdaum.com

=============================

A tiny and lightweight URL & URI parser (RFC 1738, RFC 3986) written in C++.

=============================

Installation

Run:
```bash
$ npm i lurlparser.cxx
```

And then include `LUrlParser.h` as follows:
```c
#include "node_modules/lurlparser.cxx/LUrlParser.h"
```

You may also want to include `LUrlParser.cpp` as follows:
```cxx
#ifndef __LURLPARSER_CXX__
#define __LURLPARSER_CXX__
#include "node_modules/lurlparser.cxx/LUrlParser.cpp"
#endif
```

This will include both the function declaration and their definitions into a single file.

=============================

Usage example:

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

=============================

<br>
<br>


[![ORG](https://img.shields.io/badge/org-nodef-green?logo=Org)](https://nodef.github.io)
![](https://ga-beacon.deno.dev/G-RC63DPBH3P:SH3Eq-NoQ9mwgYeHWxu7cw/github.com/nodef/lurlparser.cxx)
[![SRC](https://img.shields.io/badge/src-repo-green?logo=Org)](https://github.com/corporateshark/LUrlParser)
