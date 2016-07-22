-- Universal gravitational constant
g = 6.67408 * (10 ^ 11)

-- Calculate the semi major axis of an orbit given an apsis and periapsis (r1, r2)
semiMajorAxis r1 r2 = (r1 + r2) / 2

-- Convert value of au (astronomical unit) to more general kilometres
auToKilometres au = if au > 0
                    then au * 149597871
                    else 0

-- Velocity at a given point (radius r) around object with mass (m) along with apsis and periapsis (r1, r2)
velocityAt r r1 r2 m = if r == semiMajorAxis r1 r2
                       then (g * m) * (1 / semiMajorAxis r1 r2)
                       else (g * m) * ((2 / r) - (1 / semiMajorAxis r1 r2))

-- Calculate the orbital period of an object with mass (m) along with apsis and periapsis (r1, r2)
orbitalPeriod r1 r2 m = (2 * pi) * (sqrt (((semiMajorAxis r1 r2) ^ 3) / (g * m)))
 -- (2 * pi) * (sqrt (((semiMajorAxis r1 r2 ^ 3) / (g * m))

-- Calculate the escape velocity of an object given the mass of the central object (m) and distance from it's centre (r)
escapeVelocity r m = sqrt ((2 * (g * m)) / r)

-- Calculate the orbital eccentricity of an object given the apsis and periapsis (r1, r2)
eccentricity r1 r2 = (r1 - r2) / (r1 + r2)

-- Get info about Supported functions
help = do
    putStrLn "Supported Functions:"
    putStrLn "\t g -- get the universal gravitational constant"
    putStrLn "\n\t semiMajorAxis r1 r2 -- calculate the semi major axis of an orbit given an apsis and periapsis (r1, r2)"
    putStrLn "\n\t velocityAt r r1 r2 m -- get the velocity at a given point (radius r) around object with mass (m) along with apsis and periapsis (r1, r2)"
    putStrLn "\n\t orbitalPeriod r1 r2 m -- calculate the orbital period of an object with mass (m) along with apsis and periapsis (r1, r2)"
    putStrLn "\n\t escapeVelocity r m -- calculate the escape velocity of an object given the mass of the central object (m) and distance from it's centre (r)"
    putStrLn "\n\t eccentricity r1 r2 -- calculate the orbital eccentricity of an object given the apsis and periapsis (r1, r2)"
