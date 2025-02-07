local function foo(a, b)
  a = a or 0  -- Use 0 as default if a is nil
  b = b or 0  -- Use 0 as default if b is nil
  return a + b
end

print(foo(10, 20)) -- Output: 30
print(foo(nil, 20)) -- Output: 20
print(foo(10, nil)) -- Output: 10
print(foo(nil, nil)) -- Output: 0

--Alternative solution using error handling:
local function foo_error(a, b)
  if a == nil or b == nil then
    error("One or both inputs are nil")
  end
  return a + b
end

--print(foo_error(10,20)) --Output: 30
--print(foo_error(nil, 20)) -- throws error