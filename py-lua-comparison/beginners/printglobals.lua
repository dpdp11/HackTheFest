do
    print("GLOBALS:")
    for index, value in pairs(_ENV) do
        print(tostring(index), "& type == " .. type(value))
    end
end