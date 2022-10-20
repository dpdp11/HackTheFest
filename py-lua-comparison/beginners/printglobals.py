import re;
x = 1

while x == 1:
    print("GLOBALS:")
    for name in globals().copy().keys():
        t = type(globals()[name])
        print(name + " & class == " + re.search("<class '(.*)'>", str(t)).group(1))
    x = 0
    break