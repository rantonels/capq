# SR1 - In what sense does $E=mc^2$, and what does it mean?

Ok, ok, ok. Let's take a deep breath.

When switching from Newtonian to relativistic physics, a couple of formulas have to be explicitly replaced. In particular, we can summarize this shift in the following substitutions for the mechanical energy and linear momentum of a body:

$$E_N = \frac{1}{2} m v^2 \longrightarrow E = \frac{1}{\sqrt{1-(v/c)^2}} m c^2$$

$$p_N = m v \longrightarrow p = \frac{v/c}{\sqrt{1-(v/c)^2}} m c$$

These might look a bit daunting, and additionally I just pulled them out of my ass. Just trust me that they can be derived rigorously. Let us concentrate on interpreting them and their consequences.

The Newtonian expressions should be well-known; they are however incorrect when speed becomes relativistic ($(v/c) > 0.1$ is a good rule-of-thumb) and must be replaced by the formulas on the right.

$m$ is the mass. Just mass. It's a constant *and* an invariant for the object. It does not depend on the frame of reference nor the *global* state of motion of the body (I'll clarify this adjective in a minute). Do not trust anyone talking about "relativistic mass", it's an old concept from when people were still trying to figure out this stuff and it makes everything *immensely* more complex (just a taste: there is a transverse and a longitudinal relativistic mass). Only ever discuss invariant mass, or just mass.

$v$ is simply how much space the body travels over how much time, with space and time measured in a certain inertial frame. I really want to stress the simplicity of this definition, because people often get confused with time dilation and length contraction and other complications, while this definition is absolutely crystal clear:

$$ v = \frac{dx}{dt} $$

where $x$ and $t$ are the space and time coordinates of the body in some coordinate system (reference frame), nothing to do with proper time or anything of that sort. No magic here.

And $c$, of course, is the speed of light in vacuum.

The $v/c$ ratio and the $(1-(v/c)^2)^{-1/2}$ thing are so ubiquitous in SR that we give them the following names:

$$ \beta := v/c \quad\quad\quad \gamma := \frac{1}{\sqrt{1-\beta^2}}$$

So the formulas simplify to $E = \gamma m c^2$ and $p = \beta \gamma m c$.

Now, the burden of proving that the relativistic expressions do actually reduce to the Newtonian expressions in the nonrelativistic limit is on us. The nonrelativistic limit is when $v \ll c$, or equivalently $\beta \ll 1$. To do so, let us recall the following Taylor expansion from calculus:

$$ (1+\epsilon)^\alpha = 1 + \alpha \epsilon + \frac{\alpha(\alpha-1)}{2!} \epsilon^2 + \ldots $$

this is simply the Binomial expansion and it's a really useful one to keep in mind (at least the first order term). We expand the $\gamma$ factor using $\epsilon = -\beta^2$ as such:

$$ \gamma = \left(1-\beta^2 \right)^{-1/2} = 1 + \frac{1}{2} \beta^2 + \ldots $$

Second-order in $\beta$ is all we really need. So, finally, for the mechanical energy and momentum in the nonrelativistic limit we get:

$$ E = m c^2 + \frac{1}{2} m v^2 + \ldots$$
$$ p = m v + \ldots$$

In the expression for $p$ I've stopped at the first term because the next is order $\beta^3$.

There's something seriously wrong. $p$ looks like its Newtonian counterpart $p_N$, while $E$ has an additional spurious term, $mc^2$. This is not a small term. In fact it's huge.

$E_0 := mc^2$ is the energy the body has when $v=0$, so it's called the rest energy. Why does it not completely invalidate Newtonian mechanics?

Mostly, it's because it's impossible to tap into this energy. In nonrelativistic mechanics, mass is conserved (it is **not** conserved in special relativity). This means that in any physical process, $E_0$ is untouched. It decouples completely from the physics, and thus it's just an invisible energy shift.

Mechanics (and Physics in general) is insensible to global energy shifts. For example, if your mechanical energy is

$$ E = \frac{1}{2} m v^2 + 49\, \text{J} $$

nothing changes in your dynamics. You just added a constant, so what. Since $mc^2$ is effectively a constant in nonrelativistic physics, it does not affect dynamics and could not be derived even in principle by a nonrelativist not aware of special relativity. In fact, Newton just set that constant to zero for simplicity.

Now, we said that $E_0$ is the energy the body has when it's at rest. So we can conveniently divide our total energy in $E_0$ and a term we rightfully call kinetic energy:

$$ E = \gamma m c^2 = m c^2 + (\gamma - 1) m c^2 =: E_0 + E_K$$

Since $\gamma-1 \sim \frac{1}{2} \beta^2$ it's clear that the nonrelativistic limit is just $E_K \ll E_0$.

This is starting to make sense: $E_0$ is the energy the object has simply for existing, there is an energy cost associated with just having a mass. It is the difference between the energy of a state where the object exists (and is still) and one where it doesn't. It's the required energy to create it, or the yield if it's destroyed. Of course, this does not prove that it's possible to create or destroy mass, just that *if* there is a channel for that creation or destruction, that is the energy requirement.

Since in nonrelativistic mechanics the energies involved in processes ($E_K$) are much smaller than the $E_0$ for an object, creation and destruction of mass most certainly do not happen in nonrelativistic physics.

Since $E_0$ is the total energy of the object when it's still, it's reasonable that if the object was a composite system made of smaller units, it also includes the internal energy, not just the sum of the rest energies of the components.

Take for example a stationary box filled with a gas at temperature T. The overall, or average velocity of the gas is zero, but the single particle of the gas will have a nonzero velocity and consequently a kinetic energy $E_K^i$. The total energy is

$$\sum_i E^i = \sum_i m c^2 +  \sum_i E_K^i $$

but we have said that this must be $E_0 = M c^2$, with $M$ the mass of the box, so

$$ M = \sum_i m + \frac{1}{c^2} (\sum_i E_K^i) $$

So, the mass of the box is actually greater than the sum of the masses of the particles! Albeit, by a very, very small amount, that only gets relevant if $E_K^i$ is at least of order $m c^2$. This shows that mass is not additive, and displays the so called "mass-energy equivalence" which is more correctly expressed as:

$$U = m c^2$$

that is, mass (as in, the inertia measured in Newtonian mechanics) is equivalent to the *total* **internal** energy, also including the energy to create the constituents.

This is why people will shout at you that $E=mc^2$ is not the full formula/is wrong. They're right. That $E$ is supposed to be $E_0$.
