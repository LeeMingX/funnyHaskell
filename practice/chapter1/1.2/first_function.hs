doubleMe x = x + x

-- doubleUs x y = x * 2 + y * 2 =>
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x < 100
                      then x*2
                      else x

doubleSmallNumber' x = (if x < 100 then x * 2 else x) + 1
conanO'Brien = "It's a-me, Conan O'Brien!"