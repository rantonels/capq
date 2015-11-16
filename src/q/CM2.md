# CM2 - What would happen if you were struck by a primordial ($10^{14} \; \mathrm{kg}$) black hole at orbital speed ($8 \, \mathrm{km}/\mathrm{s}$)? 

Ok, there is no way this is a *commonly* asked question. But it [was](https://www.reddit.com/r/AskPhysics/comments/3eh0zv/if_a_small_1014kg_primordial_black_hole_flew/cthmc80) asked, and I feel my answer touches involuntarily on some really interesting points I want an occasion to talk about; in particular a couple of things about divergent integrals.

And why is in the Classical Mechanics sections? Isn't a black hole a fully general-relativistic object? Well, yes, but it only seriously is at distances less than 20-30 the Schwarzschild radius, but for our particular black hole that's

$$ r_S = \frac{2GM}{c^2} \sim 1.5 \cdot 10^{-13} \, \mathrm{m} $$

which is much less than the Bohr radius, which is about half an ångström (an ångström is $10^{-10} \mathrm{m}$). So atoms are definitely much larger than the $r_S$ and we can hope little to no stuff of any kind gets that close to the black hole. Effectively, the black hole is an absolutely Newtonian point mass.

The most obvious effect of the passage of the black hole is that it imparts an acceleration on mass elements of the human body. Let us consider the $\Delta v$ imparted on an atom of the body a distance $b$ (the impact parameter) from the trajectory of the black hole.

![One of da Vinci's famous studies on black hole-human torso scattering.](../images/davinci)

Let's take a coordinate $x$ along the trajectory (with $x= 0$ when the BH passes at the closest point from the atom) and $y$ along the perpendicular.

The total $\Delta v_x$ is obviously zero (or almost zero), while the differential $\Delta v_y$ is

$$ dv_y= \frac{GM}{r^2} \frac{b}{r} dt = \frac{GM}{v_o} \frac{b}{(b^2+x^2)^{3/2}} dx $$

where $v_0$ is the velocity of the black hole. Here I'm using nonrelativistic mechanics + ignoring the motion of the accelerated atom during the transit of the BH. These are actually not good approximations for very small $b$ but they'll do.

Since most of the contribution to the integral is from around $x=0$, there is no harm in integrating from minus to plus infinity, instead of just along the length of the body; it's a really good approximation. So, using the integral:

$$ \int_{-\infty}^\infty d\xi \frac{1}{(1+\xi^2)^{3/2}}  = 2 $$

we get

$$ \Delta v = \frac{2GM}{v_0} \frac{1}{b} =: K \frac{1}{b} $$

the constant is $K \sim 1.6 \mathrm{m}^2/\mathrm{s}$. So the imparted speed is inversely proportional both to the impact parameter, and to the velocity $v_0$, at least in the nonrelativistic regime. The speed is equal to the speed of light around $5 \, \mathrm{nm}$, so that means that this formula is right up to around the $50 \mathrm{nm}$ scale, and unaccurate at smaller distances, where relativity is important.

This speed is not gigantic for mm-distant atoms. *But*:

The energy imparted on the atom is

$$E = \frac{1}{2} m K^2 \frac{1}{b} $$

and it's no big deal to use this formula as a good order-of-magnitude estimate also in the relativistic small-$b$ regime. I use as $m$ the oxygen atom mass. At one nanometre distance the energy is around

$$ E_{1 \mathrm{nm}} \sim 230 \mathrm{GeV} $$

which is pretty large, absolutely relativistic in fact. (The rest energy of Oxygen, by comparison, is $\sim 15 \mathrm{GeV}$). Now let's compute the total energy. I estimate the volumetric atomic number density of the human body by assuming it's mostly made of oxygen and I get $n \sim 4 \cdot 10^{28} m^{-3}$. Then the total given energy, approximating a human as a very unlucky cilinder of oxygen 1 meter thick and 1 meter radius:

$$ E_T = \int_\text{assume a cylindrical human} dV \,n \,E(b)  = \frac{nmK^2}{2} \int_\epsilon^R L \, 2\pi b \,db \, \frac{1}{b^2} $$

I've used cilindrical coordinates centered on the trajectory. I cannot integrate the impact parameter to 0 because that would make the integral divergent. However, we have a physical cutoff: under the ångström scale the material is not uniform. No atoms will in general be closer to the black hole than an ångström; the spacing itself between atoms is surely larger than the atoms themselves. So we set $\epsilon = 1 \overset{\circ}{A}$. This is justified because the integral is only logarithmically divergent:

$$ E_T = \pi L n m K^2 \,\ln \left(\frac{1 \mathrm{m}}{1 \overset{\circ}{A}}\right) $$

and the logarithm is around 23. If the divergence was not logarithmic, our integral would be strongly dependent on $\epsilon$ and it would have been impossible to make useful predictions; moreover the energy would have been probably huge. Instead the integral depends weakly on our definition of $\epsilon$, and the energy is quite modest:

$$ E_T = (1 \,\mathrm{m})\pi n m K^2 \cdot 23 \sim 34 \;\mathrm{kJ}$$

which is around the muzzle energy of [these particular soviet heavy machine gun bullets](https://en.wikipedia.org/wiki/14.5%C3%97114mm). So the kinetic energy imparted to you by the BH is more or less what it would need to absorb to stop one of those bullets. So, definitely big enough to injure you, but possibly you could survive... I cannot tell.

The size of the hole (the one in your body, not the black hole) itself should be around one or two millimetres. Or maybe a centimetre, I have no idea.

Apart from the large number of approximations, there are a few problems with the above reasoning, and both refer to the relativistic atoms.

First of all, very energetic, relativistic charged particles interact *very little* with matter. That's a counter-intuitive result of the relativistic Bethe Bloch formula. A nonrelativistic atom has most or all of its energy absorbed by the body while travelling through it, while relativistic atoms mostly slip away unimpeded. So to compute the total heating we should rather exclude the relativistic atoms, this amounts to a change in $\epsilon$ above to cutoff at the scale where they start being relativistic. However, since the formula depends logarithmically on $\epsilon$, this would change very little. It's gonna be tens of thousands of Joules anyway.

The second is that I'm only computing the total energy and trying to assess damages this way. However we have to understand that also the energy imparted by a single atom can have medical consequences. In fact, the high-energy atoms are radiation and take into account the amount of radiation poisoning. I haven't done this, but you can expect a results ranging from a light exposure to a full-scale tumour farm. This is the great difference between our primordial BH and a conventional orbital speed debris.

Third: I have excluded that the nuclei or electrons can actually reach the black hole. It's not clear exactly what would happen - the de Broglie wavelength of the electron is larger than the Schwarzschild radius of the black hole, so we're touching on semiclassical gravity - but you can bet it's gonna be similar to what happens when matter falls into a full-scale black hole: loud and bright. That could be another way this unfortunate occurrence could make you suffer.

We're forgetting about a peculiar property of small black holes: they emit significant Hawking radiation! Our black hole is pretty hot, at a Hawking temperature of (all formulas from [Wikipedia](https://en.wikipedia.org/wiki/Hawking_radiation#Black_hole_evaporation)):

$$ T = \frac{\hbar c^3}{8\pi G M k_B} = 1.22 \cdot 10^9 \; \mathrm{K} $$

so, pretty hot. But it has a very small event horizon from which it radiates, so the total power is

$$ P = \frac{\hbar c^6}{15360 \pi G^2 M^2} = 35.6 \mathrm{kW} $$

That looks serious, but in the short ecounter lasting $t= \left( 1 \mathrm{m} \right)/\left(8 \mathrm{km}/\mathrm{s}\right)$ the total energy radiated into the body (granted, in powerful gamma rays) is $4.45 J$, much less than the kinetic energy computed above. But possibly more carcinogenic.

Thermodynamics {#TD}
--------------

Celestial/Orbital Mechanics {#OM}
---------------------------
