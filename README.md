# Lorenz-Attractor #
The Lorenz Attractor was first studied by Ed N. Lorenz, a meteorologist, around 1963. It was derived from a simplified model of convection in the earth's atmosphere. It is also known as The Butterfly Effect, because it's trajectory resemble a butterfly or figure eight. It also arises naturally in models of lasers and dynamos. The system is most commonly expressed as 3 coupled non-linear differential equations.

                                              dx / dt = a (y - x)

                                              dy / dt = x (b - z) - y

                                              dz / dt = xy - c z

One commonly used set of constants is a = 10, b = 28, c = 8 / 3. Another is a = 28, b = 46.92, c = 4. "a" is sometimes known as the Prandtl number and "b" the Rayleigh number.

![picture alt](http://paulbourke.net/fractals/lorenz/lorenz3.png "Title is optional")


### Implementation ###
* Used the OPENGL renderer but a P3D renderer can also be used
* Implemented the above logic visually in Processing Java
* Used an external Processing library called PeasyCam for 3d environment workflow

----
