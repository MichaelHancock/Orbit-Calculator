-- Universal gravitational constant
g = 6.67408 * (10 ^ 11)

-- Calculate the semi major axis of an orbit given an apsis and periapsis (r1, r2)
semiMajorAxis r1 r2 = (r1 + r2) / 2

-- Convert value of au (astronomical unit) to more general kilometres
auToKilometres au = if au > 0
                    then au * 149597871
                    else 0

-- Velocity at a given point (radius r) around object with mass (M) with apsis and periapsis (r1, r2)
velocityAt r r1 r2 m = if r == semiMajorAxis r1 r2
                       then (g * m) * (1 / semiMajorAxis r1 r2)
                       else (g * m) * ((2 / r) - (1 / semiMajorAxis r1 r2))
