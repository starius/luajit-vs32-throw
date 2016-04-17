package = "throw"
version = "dev-1"
source = {
    url = "git://github.com/starius/luajit-vs32-throw.git",
}
description = {
    summary = "Example of handling C++ excpetions in Lua module",
    homepage = "https://github.com/starius/luajit-vs32-throw",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ['throw'] = {
            sources = {
                "throw.cpp",
            },
        },
    },
    platforms = {
        unix = {
            modules = {
                ['throw'] = {
                    libraries = {"stdc++"},
                },
            },
        },
        mingw32 = {
            modules = {
                ['throw'] = {
                    libraries = {"stdc++"},
                },
            },
        },
    },
}
