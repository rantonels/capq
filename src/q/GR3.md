# Singularity

So let's imagine we're in our last moments in our life. The singularity is close, so $r \ll r_S$. Let's now fix units such that $r_S = 1$. We have the following approximation for the $f(r)$ factor:

$$1 - \frac{1}{r} \sim - \frac{1}{r}$$

therefore the metric becomes

$$ds^2 \sim \frac{1}{r} dt^2 - r dr^2 + r^2 d\Omega^2$$

Now, first thing we want to do is rename $t$, since it is now spacelike, a space direction. This is a no-op but it's useful to avoid confusion. So

$$t \longrightarrow x$$

Also, a more meaningful coordinate change we really need is to reparametrize $r$ as our proper time. $r$ is indeed a time coordinate, but not exactly "our" time, as in the time $\tau$ we would measure, because that is $d\tau^2 = - ds^2$ computed over our worldline. So we have

$$d\tau^2 = r dr^2$$

This can be solved by taking the square root and integrating:

$$\tau = r^{1/2} dr \Rightarrow \tau = \frac{2}{3} r^{3/2} \Rightarrow \left( \frac{3}{2} \tau \right)^{2/3}$$

I've chosen the constant of integration so that $\tau=0$ at the singularity $r=0$. The metric is now, substituting:

$$ds^2 = -d\tau^2 + \left(\frac{3}{2}\tau\right)^{-2/3} dx^2 +  \left(\frac{3}{2}\tau\right)^{4/3} d\Omega^2$$

Which is very convenient because it's diagonal (there are no mixed terms like $d\tau \, dx$).

Let's review the domains of these coordinates. $\tau$ lies in the vague interval $0 < \tau \leq \epsilon$ with the small number $\epsilon$ small enough for our approximation $r \ll 1$ to work. I chose $0.25$ for the simulation. $\tau$ runs backwards, and equals our proper time left until the singularity.

$x$ is actually $t$ so it lies in $\mathbb{R}$. Therefore space extends indefinitely in the $x$ direction. Not that it matters much, since there's only so much we can travel in that direction before dying.

$\theta$ and $\phi$ still parametrize a sphere $\mathbb{S}^2$. If we were to only consider the equator of the sphere (which we will do for visualization purposes), fixing $\theta = \frac{\pi}{2}$, $\phi$ would run from $0$ to $2\pi$ along the equator.

So our spacetime, on a purely topological standpoint (i.e. only considering the *shape*, ignoring the metric) close to the singularity looks like:

$$(0,\epsilon]_\tau \times \left( \mathbb{R}_x \times \mathbb{S^2}_{\theta,\phi} \right)$$

and the part in parentheses is space at a given time. However, our metric is really nice and it likes this decomposition. The metric restricted to the first of these three pieces is

$$ds^2 = - d\tau^2$$

That just means that $\tau$ is our proper time, which we knew already. On the $x$ line:

$ds^2 = \left( \frac{3}{2} \tau \right)^{-2/3} dx^2$

but that's just the normal metric on the real line $dl = dx$, just rescaled by a factor $\left( \frac{3}{2} \tau \right)^{-1/3}$. Therefore it's just a normal line, but "stretched" over time as $\tau^{-1/3}$. It becomes infinitely stretched as $\tau\rightarrow 0$, in the sense that the distance between a point at $x=0$ and one at $x=1$ grows to infinity at the singularity.

Similarly for the sphere:

$$ds^2 = \left( \frac{3}{2} \tau \right)^{4/3} d\Omega^2$$

Since $dl = d\Omega$ is the line element on a unit sphere, our line element is that on a sphere of radius

$$R = \left( \frac{3}{2} \tau \right)^{2/3} $$

This sphere *shrinks* as we approach the singularity. Two points (at the same $x$) at different point on the sphere get closer as we reach the singularity.

The structure of spacetime is therefore as such: at any given time, space is a "spherinder" (cartesian of line and 2-sphere) where the line is stretching as $\tau^{-1/3}$, and the sphere is shrinking as $\tau^{2/3}$.

![I have no idea how to write greek letters in gnuplot with the gif term](../images/singularity/cylinder.gif)

Here I've tried to depict the shape of this spacetime. The time of the gif, also displayed on top, is just $\tau$. The cylinder is actually just space, at time $\tau$. I've omitted the $\theta$ dimension for clarity, so that our sphere becomes a circle and space becomes a cylinder. We have a poor bloke who has had the misfortune of falling into the black hole, he is aligned head to toe along the $x$ dimension, and has arms and legs extended along $\phi$ (please ignore bad art skills). The cylinder should actually extend infinitely in $x$, but I've only drawn a piece of it, it doesn't really matter since it's not like we have a lot of time to travel around.

Please take note of this **very important** point: this is an embedding diagram. The empty white space where the cylinder is immersed *does not exist*, nor does it refer to anything physical. We just needed to set up our cylinder in a 3-dimensional space for visual purposes, but this is not something that is needed for the mathematical formulation. There's no outside and our little man can only move in and see the surface of the cylinder.

In these coordinates, the singularity is not some place in space, in fact it never is visible in space as long as $\tau > 0$. It's just something that *happens* to space, at the time $\tau=0$. Something evidently bad.

This translates also to our person. He gets stretched in one direction and compressed in the other two. Different points along the length of his body are at different, constant $x$ positions, and so they get further and further apart like we saw earlier. So this is the most extreme form of **spaghettification**; any possible physical structure is destroyed by this at some positive $\tau$ before the singularity. It's interesting to note that in the inner region spaghettification does not actually stretch something *towards* the singularity (which is impossible, because the singularity is not in some direction, but in the future) but in a spatial direction which is actually the original $t$ direction. Trippy stuff.

![these aren't actually spaghetti, but bucatini all'amatriciana, even though the traditional recipe from the town of Amatrice, Lazio actually requires spaghetti. It's great both ways.](../images/singularity/amatricianal.jpg)

Now, for the yellow triangles. These are photons/light rays emitted in the $\phi$ direction at the beginning of the gif by three points of the body of our adventurer. That's how *slow* light is compared to how quickly our changes in spacetime happen. One however would expect that since the radius of the sphere is shrinking, maybe light, moving at a constant speed, should be able to circle it more easily as we are close to the singularity, maybe making even infinite turns spiraling in. Not quite.

The equation for a light ray is given by the line element being zero:

$$ds^2 = 0 \Rightarrow d\tau = \left(\frac{3}{2} \tau \right)^{-2/3} d\phi \Rightarrow \phi = 3\left(\frac{2}{3}\right)^{2/3} \tau^{1/3} $$

So no, it does not spiral in making infinite turns (we'd have seen a negative power of $\tau$), the sphere does not get small fast enough for that to happen.

Ok, but then I was struck by the immensely pointless question: does it even make one full turn from the horizon to the singularity? We can't use our approximations since we want to consider the interval $0 < r < 1$ which is $0 < \tau < 2/3$. We have to get back to the full metric. We imagine a photon emitted in the $r,\phi$ plane right as we cross the horizon, with no velocity in the $t$ or $\theta$ directions. We set $ds^2=0$ and so

$$- f(r)^-1 dr^2 = d\phi^2 \Rightarrow \frac{dr^2}{r(1-r)} = d\phi^2$$

so that the total angle travelled is given by the integral

$$\Phi = \int_0^1 \frac{dr}{\sqrt{r(1-r)}} = \pi$$

so it makes exactly half a turn. I am extremely satisfied by the simplicity of this result.


