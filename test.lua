local throw = require 'throw'

for i = 1, 100 do
    print(i)
    io.stdout:flush()
    local status, error_message = pcall(throw)
    assert(not status)
    assert(error_message == 'Lua error')
end
