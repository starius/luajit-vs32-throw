local throw = require 'throw'

local status, error_message = pcall(throw)
assert(not status)
assert(error_message == 'Lua error')
