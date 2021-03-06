# Orbit-Calculator
Simple orbital calculations in a haskell module

### Supported functions

#### g
*Get the universal gravitational constant*

#### semiMajorAxis r1 r2
*Calculate the semi major axis of an orbit given an apsis and periapsis (r1, r2)*

#### auToKilometres au
*Convert value of au (astronomical unit) to more general kilometres*

#### velocityAt r r1 r2 m
*Velocity at a given point (radius r) around object with mass (M) along with apsis and periapsis (r1, r2)*

#### orbitalPeriod r1 r2 m
*Calculate the orbital period of an object with mass (m) along with apsis and periapsis (r1, r2)*

#### escapeVelocity r m
*Calculate the escape velocity of an object given the mass of the central object (m) and distance from it's centre (r)*

#### eccentricity r1 r2
*Calculate the orbital eccentricity of an object given the apsis and periapsis (r1, r2)*

#### incliation h hz
*Calculate the inclination of an orbit given the Orbital Momentum Vector (h) and the z component of h (hz)*

### How to use it

```haskell
import OrbitCalculator

main = do print(semiMajorAxis 1203001 38340009)
```
