Kinematics
----------

Classical Mechanics
-------------------

Thermodynamics
--------------

Celestial/Orbital Mechanics
---------------------------

Fluid Mechanics
---------------

Classical Electrodynamics
-------------------------

### CED1 - What is the Maxwell/Stress tensor and how does it work?

Consider linear momentum:

$$ P^i $$

it's the i component of the total linear momentum in the system. It will be an integral over space of some linear momentum density I'll call $p^i $:

$$ P^i = \int d^3 x \; p^i(x) $$

This quantity is conserved. It's also pretty reasonable that it's somewhat conserved *locally*, meaning that it doesn't just disappear somewhere and reappear magically somewhere else, it has to *flow*.

What I mean is that if the amount of linear momentum in a certain region of space changes, it must be because of some flux in/out the surface of that region:

$$ \frac{d}{dt} P_V^i = \int_V d^3 x \frac{d}{d t} p^i(x) = - \oint_{\partial V} d^2 \vec \Sigma \; \cdot \vec \Phi^i $$

I just wrote that the variation of $P_V^i $ ($P^i$ restricted to the volume V), which is equal to the integral of the variation of the density, must be counterbalanced by some flux $\vec\Phi $ that crosses the boundary $\partial V $. If it's decreasing, then it must be leaking.

Now here's the thing: the stress tensor element $\sigma_{ij} $ is precisely the *flux of $P^i$ in the j direction*. It's how much $P^i $ is flowing through a unit surface orthogonal to the $j$-direction. It is also symmetric (nontrivial, and in fact dependent on some choices) and it does transform like a 2-tensor, a matrix, which justifies the name.

So let's rewrite what we had:

$$ \int_V d^3 x \frac{d}{dt} p^i = - \oint_{\partial V} d^2 \Sigma^j \; \sigma^{ij} $$

What I've done is:

* Rewritten the scalar product $\vec \Sigma \cdot \vec \Phi^i $ using indices as $\Sigma^j \Phi^{ij} $. Be careful about these indices: i means which component of the momentum we're talking about, j is the vector index of the flux itself (which is a vector).
* Recognized that $\Phi^{ij} = \sigma^{ij} $ from what we said earlier.

Now what you would like to do is to deduce a differential, infinitesimal form of the equation above (which is known as the integral continuity equation). You do this by integrating over a very small cube; I'll spare you the details, but it's an easy computation, and you end up with:

$$ \frac{\partial p^i}{\partial t} + \partial_j \sigma^{ij} = 0$$

or, in vector form:

$$ \frac{\partial \vec p}{\partial t} + \vec \nabla \cdot \sigma = 0 $$

this is the continuity equation or local conservation (in differential form). (note that the density $\vec p $ is a vector, because it's the density of the vector $ \vec P $.)

In an interacting theory of electromagnetic fields and matter, both contribute to total linear momentum. So, reasonably, both will have a stress tensor:

$$ \sigma^{ij} = \sigma^{ij}_{f} + \sigma^{ij}_{m} $$

and they will **not** be separately conserved. Only their sum, total stress, obeys the continuity equation we just found. The physical interpretation is that momentum can be exchanged between fields and matter. When an electron produces radiation, for example, that radiation carries away momentum from the electron. We can substitute the decomposition in the continuity equation to obtain:

$$ \frac{\partial \vec p_f}{\partial t} + \vec \nabla \cdot \sigma_f = - \frac{\partial \vec p_m}{\partial t} + \vec \nabla \cdot \sigma_m =: \vec s $$

Where I have defined the source term $s$.

This source term encapsulate the passage of momentum from charged matter to fields. So field momentum is not conserved separately, and s represents "generation" of momentum from charges. Fittingly, the equation is now called a continuity equation with sources.

So the Maxwell stress tensor is just $\sigma_f $, the stress tensor for only the electromagnetic field.

What I've detailed up to now is the physical interpretation in general of the stress tensor in any local theory, which is what you asked about. The actual form of the tensor for electromagnetism in terms of $E$ & $B$ is computed from the Poynting vector in a way that Griffiths can explain much better than me.

Analytical Mechanics
--------------------

Special Relativity
------------------

### SR1 - In what sense does $E=mc^2$, and what does it mean?

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

### SR2 - if photons are massless, how can $E=mc^2$?

General Relativity
------------------

Quantum Mechanics
-----------------

General Quantum Field Theory/Many Body/Relativistic QM
----------------------------------------------

Nuclear Physics
---------------

Quantum Electrodynamics
-----------------------

Particle Physics/High Energy Physics
------------------------------------

String theory
-------------

