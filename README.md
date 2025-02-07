# Lua Nil Behavior in Arithmetic Operations

This repository demonstrates a common, yet subtle, issue in Lua related to how `nil` values interact with arithmetic operations.  In many languages, attempting an arithmetic operation with `nil` might throw an exception.  However, Lua's behavior is more nuanced and can lead to unexpected results.

The `bug.lua` file contains a function that illustrates this behavior. The function `foo` adds two numbers, but returns `nil` immediately if either input is `nil`. This can be unexpected if you're not aware of Lua's handling of `nil` in such scenarios.

The `bugSolution.lua` file shows a possible solution by explicitly checking for `nil` and handling it appropriately, perhaps returning a default value or throwing an error. 