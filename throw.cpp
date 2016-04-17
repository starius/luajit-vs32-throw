#include <lua.hpp>
#include <stdexcept>

int throwing_func(lua_State* L) {
    try {
        throw std::logic_error("C++ error");
    } catch (...) {
        return luaL_error(L, "Lua error");
    }
    return 1;
}

extern "C" {
int luaopen_throw(lua_State* L) {
    lua_pushcfunction(L, throwing_func);
    return 1;
}
}
