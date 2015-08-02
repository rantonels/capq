# OM2 - Why won't/didn't New Horizons stop at Pluto and instead had to fly by? 

The quick answer is that it is/was going too fast with respect to the dwarf planet and will not even remotely have the power to slow down. But let's look in detail at why that happens and also a bit into what that means.

Before all of that, I urge you to take a look at [OM1](OM1.html).

So you want to stop at Pluto. How do you do that? Let's make a huge simplification and assume that Charon is not there. Then what I've said about single planets in the previous answer applies, and you cannot simply coast into the Plutonian system and automatically insert yourself into a closed orbit.

You will enter the Plutonian system with a certain initial velocity *in the Pluto frame* $\vec v_i$. Then, if you just keep coasting, you will accelerate until you reach a closest point, the perihadion, where your speed is greatest, and then you'll exit the system decelerating until you're back to your original speed. That should be clear from before.

So you want to use your rocket somewhat to slow down (again, with respect to Pluto) until your orbit is closed. The best way to do that is to do it at the perihadion, because of the [Oberth effect](https://en.wikipedia.org/wiki/Oberth_effect) which more or less says that it's more efficient to burn your rocket when you're faster.

At the perihadion you want to reduce your speed and therefore burn your rockets *backwards*, pushing yourself tangentially to your trajectory and towards where you were coming from. Your tiny probe must lower the speed at perihadion to lower than the escape speed.

Now, how did we get to Pluto? The most efficient\* way to transfer between (dwarf) planets is to use a Hohmann transfer. This is a general technique for transfering between circular orbits by coasting along an elliptical orbit tangent to both.

![](../images/image010.jpg)

at point $a$ you give yourself a boost $\Delta v_a$ to set yourself in the elliptical transfer orbit. Then at $\Delta v_b$ you again boost yourself to "widen" your orbit up to the bigger circular target orbit.

If the two circular initial/target orbits are those of two planets, then $\Delta v_a$ is the exit velocity from planet $a$, and $\Delta v_b$ the enter velocity to planet $b$. To understand why that is, consider that the planets are following the circular orbits. So planet $a$ has velocity $\vec v_a$, and you boost yourself from $\vec v_a$ to $\vec v_a^\text{transfer}$ (velocity in transfer orbit at point $a$).

Sounds like a great plan, requires in principle only two large burns, it generalizes without much difficulty to more eccentric initial/target orbits (Pluto's orbit is pretty elliptical), and is in fact more or less the preferred method for interplanetary transfers. Getting to Mars more or less works like this.

We also get to Pluto at a relatively slow speed of:

$$\Delta v_b = \sqrt{ \frac{G M_\odot}{r_P}} \left( 1 - \sqrt{ \frac{2r_\oplus}{r_\oplus + r_P} } \right) $$

where I'm using $P$ to approximate Pluto's astronomical/astrological symbol, and also I'm assuming Pluto's orbit is circular. Since $r_\oplus \ll r_P$ we can approximate

$$\Delta v_b \sim \sqrt{ \frac{G M_\odot}{r_P}}$$

which is at most roughly Pluto's orbital velocity of $\sim 4.7 \mathrm{km}/s$, which is somewhat ok. It's doable. In fact, when we consider also Charon, we also are able to use it to slow down for free. If you remember what we said in [OM1](#OM1) about gaining or losing energy wherever there are moving celestial bodies in our frame, you can see that you can lose orbital energy in the Pluto frame by exploiting Charon. This is definitely more complex than a normal gravitational slingshot, but it's still absolutely doable. It's also mitigable if you deviate slightly from the pure Hohmann plan to get boosts from intermediate planets, most notably Jupiter.

There is a huge problem with a Hohmann or similar transfers, though. How much time does the transfer take?

Consider that the interplanetary travel is done by coasting on half a period of an elliptical orbit which is a hybrid of Pluto's and Earth's orbit. So the time it will take will be inbetween half an Earth year and half a Pluto year, which is... 123 years. More precisely:

$$t = \pi \sqrt{ \frac{(r_\oplus + r_P)^3}{8 GM_\odot}} \sim \pi \sqrt{ r_P^3 \over 8 GM_\odot } = \frac{1}{2\sqrt 8} T_p$$

where $T_p$ is Pluto's period, so the transfer amounts to around 43 years. That's a bit too much in terms of patience. 

Those are the orbital speeds at that distance from the Sun: s l o w. If you want to get there by legal means, being a good boy and giving precedence, it's gonna take time, the sort of timescale that trans-Neptunian object perform their orbits in.

So they went with the most reasonable alternative: just shoot New Horizons as fast as possible almost directly towards the dwarf planet. In fact, so fast that the Sun's gravity barely curves the trajectory of the probe. It left Earth at a record speed of 16.26 kilometers per second, to which you must sum the Earth's orbital velocity, since the previous figure is relative to the Earth. It received a huge boost in a Jupiter slingshot (when it studied the Jovian system and the Galileian moons as a bonus) and entered an extremely fast (but not the fastest!) Solar escape (hyperbolic) trajectory at around 14-15 kilometers per second. 

This trajectory pierces the Plutonian system at high speed. Stopping is out of the question for the small probe. It cannot even use Charon to slow down: even though in principle it's always possible to get any arbitrary boost from a binary system, this holds for *point* masses. For real objects, the closest approach to Charon needed might lie below the surface of the moon itself. In this case, considering Pluto's and Charon's ridiculously small gravitational fields and the huge speed (around 13 km/s wrt Pluto), New Horizons wouldn't even begin to get deflected even if it scratched the surface of either of the two at one meter altitude.

Here is a great video of New Horizons' trajectory. Note the huge Jupiter slingshot:

[https://www.youtube.com/watch?v=QA9vbDFeeAQ](https://www.youtube.com/watch?v=QA9vbDFeeAQ)

P.S.: I lied when I said the Hohmann transfer was most efficient. A [bi-elliptic transfer](https://en.wikipedia.org/wiki/Bi-elliptic_transfer) is even more efficient for such a large orbital radius ratio. But bi-elliptic transfers are even more perversely masochistic in terms of total time. A good, efficient bi-elliptic maneuver to Pluto could very well take thousands of years.

