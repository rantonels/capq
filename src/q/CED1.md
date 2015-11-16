# CED1 - What is the Maxwell stress tensor $\mathbf{\sigma}$ and how does it work?

*note: do not confuse this with the Maxwell tensor $F^{\mu\nu}$, which is the electromagnetic field.*

Consider linear momentum:

$$ P^i $$

it's the i component of the total linear momentum in the system. It will be an integral over space of some linear momentum density I'll call $p^i$:

$$ P^i = \int d^3 x \; p^i(x) $$

This quantity is conserved. It's also pretty reasonable that it's somewhat conserved *locally*, meaning that it doesn't just disappear somewhere and reappear magically somewhere else, it has to *flow*.

What I mean is that if the amount of linear momentum in a certain region of space changes, it must be because of some flux in/out the surface of that region:

$$ \frac{d}{dt} P_V^i = \int_V d^3 x \frac{d}{d t} p^i(x) = - \oint_{\partial V} d^2 \vec \Sigma \; \cdot \vec \Phi^i $$

I just wrote that the variation of $P_V^i$ ($P^i$ restricted to the volume V), which is equal to the integral of the variation of the density, must be counterbalanced by some flux $\vec\Phi$ that crosses the boundary $\partial V$. If it's decreasing, then it must be leaking.

Now here's the thing: the stress tensor element $\sigma_{ij} $ is precisely the *flux of $P^i$ in the j direction*. It's how much $P^i$ is flowing through a unit surface orthogonal to the $j$-direction. It is also symmetric (nontrivial, and in fact dependent on some choices) and it does transform like a 2-tensor, a matrix, which justifies the name.

So let's rewrite what we had:

$$ \int_V d^3 x \frac{d}{dt} p^i = - \oint_{\partial V} d^2 \Sigma^j \; \sigma^{ij} $$

What I've done is:

* Rewritten the scalar product $\vec \Sigma \cdot \vec \Phi^i$ using indices as $\Sigma^j \Phi^{ij}$. Be careful about these indices: i means which component of the momentum we're talking about, j is the vector index of the flux itself (which is a vector).
* Recognized that $\Phi^{ij} = \sigma^{ij}$ from what we said earlier.

Now what you would like to do is to deduce a differential, infinitesimal form of the equation above (which is known as the integral continuity equation). You do this by integrating over a very small cube; I'll spare you the details, but it's an easy computation, and you end up with:

$$ \frac{\partial p^i}{\partial t} + \partial_j \sigma^{ij} = 0$$

or, in vector form:

$$ \frac{\partial \vec p}{\partial t} + \vec \nabla \cdot \sigma = 0 $$

this is the continuity equation or local conservation (in differential form). (note that the density $\vec p$ is a vector, because it's the density of the vector $\vec P$.)

In an interacting theory of electromagnetic fields and matter, both contribute to total linear momentum. So, reasonably, both will have a stress tensor:

$$ \sigma^{ij} = \sigma^{ij}_{f} + \sigma^{ij}_{m} $$

and they will **not** be separately conserved. Only their sum, total stress, obeys the continuity equation we just found. The physical interpretation is that momentum can be exchanged between fields and matter. When an electron produces radiation, for example, that radiation carries away momentum from the electron. We can substitute the decomposition in the continuity equation to obtain:

$$ \frac{\partial \vec p_f}{\partial t} + \vec \nabla \cdot \sigma_f = - \frac{\partial \vec p_m}{\partial t} + \vec \nabla \cdot \sigma_m =: \vec s $$

Where I have defined the source term $s$.

This source term encapsulate the passage of momentum from charged matter to fields. So field momentum is not conserved separately, and s represents "generation" of momentum from charges. Fittingly, the equation is now called a continuity equation with sources.

So the Maxwell stress tensor is just $\sigma_f$, the stress tensor for only the electromagnetic field.

What I've detailed up to now is the physical interpretation in general of the stress tensor in any local theory; classical EM is just the first field theory one usually encounters. The actual form of the tensor for electromagnetism in terms of $E$ & $B$ is computed from the Poynting vector and a full derivation is presented in any decent CED textbook.
