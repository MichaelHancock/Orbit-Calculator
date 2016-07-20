# Orbit-Calculator
Simple orbital calculations in a haskell program

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

### How to use it
- Download the Haskell platform from https://www.haskell.org/platform/
- Run the source.hs file using GHCI
- Type the name of function you wish to call with parameters separated by spaces
```
prelude> semiMajorAxis 1203001 38340009
```
