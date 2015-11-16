# GR1 - How long does a year on Mercury last from Mercury's point of view?

The relativistic effects are very small, but not *that* small, let's compute them explicitly, it's a good exercise.

Basically the first thing you would think of would be to just compose the gravitational time dilation with the special-relativistic "doppler" time dilation; what you would get in this particular case would not be wrong, but it's not correct to assume a priori that such a thing makes sense. Therefore let's just do the whole calculation and then check that it's ok.

The metric for a weak static field such as that of the sun is given by $g_{00} = - (1 + 2 \Phi)$ where $\Phi$ is the gravitational potential and all other components are equal to the flat space ones ($g_{\mu\nu} = \eta_{\mu\nu}$ for all other indices). Placing Mercury at position (R,0,0) and velocity (meaning $dx^i/dt$ with t coordinate time) (0,V,0) then let's write down $\frac{dx^\mu}{dt}$ (which is not a vector, because t is not a scalar):

$$ (1,0,V,0) $$

pretty self-explanatory. Then the four velocity $u^\mu$ must be proportional to this thing, but also be normalized as $u^\mu u_\mu = - 1$. Then taking the square of the above "vector" (using the metric), we get $- (1+2\Phi) + v^2$, meaning our 4-velocity is actually:

$$ u^\mu = (1 + 2\Phi - v^2)^{-1/2} (1,0,V,0) $$

that's very useful, because we can read the time dilation factor as the 0 component of $u$:

$$ u^0 = \frac{dt}{d\tau} = \frac{1}{\sqrt {1+2\Phi-v^2 }} $$

notice the similarity with the usual Doppler time dilation gamma factor; the only addition is the gravitational potential. Since we are talking about very small stuff, we can Taylor-expand:

$$ \sim 1 - \Phi + \frac{V^2}{2} \rightarrow 1 + \frac{1}{c^2} (-\Phi + V^2/2) $$

Which is exactly what we would get by composing / summing gravitational and SR time dilation - so we see that this operation is only lecit in the limit of small $\Phi$ and $V$. I've reintroduced factors of $c$.

One could now substitute the orbital radius and velocity of Mercury (assuming a circular orbit, which is wrong for Mercury but w/e) and get the answer but there's an important simplification: Mercury is in orbit! Therefore:

$$ \frac{1}{2} m V^2 = \frac{G m M}{2R} $$

that's actually equivalent to Newton's law as you can readily check and takes the name of virial theorem. Helps a lot because our time dilation factor becomes:

$$ u^0 = 1 + \frac{1}{c^2} \left( \frac{GM}{R} + \frac{V^2}{2} \right) = 1 + \frac{3}{2} \frac{1}{c^2} \frac{GM}{R} $$

So our time dilation factor ends up being

$$ 1 + 5 \cdot 10^{-8} $$

meaning that over a Mercurian year of 87 days an observer on Mercury would measure around 0.3 seconds less of proper time.




