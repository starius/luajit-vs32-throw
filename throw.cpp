#include <lua.hpp>
#include <stdexcept>

int throwing_func0(lua_State* L) {
    try {
        throw std::logic_error("C++ error");
    } catch (...) {
        return -1;
    }
    return 0;
}

int throwing_func(lua_State* L) {
    int result = throwing_func0(L);
    if (result == -1) {
        return luaL_error(L, "Lua error");
    }
    return result;
}

extern "C" {
int luaopen_throw(lua_State* L) {
    lua_pushcfunction(L, throwing_func);
    return 1;
}
}
