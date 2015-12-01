# QFT1 - What is "imaginary time"? And what is meant by "Euclidean spacetime"?

Take the Minkowski metric in $(1,d)$-dimensional spacetime:

$$ds^2 = - dx_0^2 + dx_1^2 + \ldots + dx_d^2$$

(I'm using the $(-,+,+,+)$ convention, like general relativists. You can also redo this with $(+,-,-,-)$, nothing of substance changes)

Then there's this curious fact. Assume that time $x_0$ is a complex variable for some reason, and consider the change of variables $x_{d+1} = i x_0$. The above metric, by substitution, becomes

$$ds^2 = dx_{d+1}^2 + dx_1^2 + \ldots + dx_d^2$$

which is indeed (when $x_{d+1}$ assumes real values) the standard metric on $(d+1)$-dimensional Euclidean space in flat coordinates $x_1, \ldots, x_{d+1}$. We've effectively "swapped a time dimension with a space dimension". In the complex time plane, we've just rotated 90 degrees.

When $x_{d+1}$ is real, $x_0$ is purely imaginary, so that's what imaginary time means.

This might seem completely pointless in terms of physical theories, but it's actually extremely important in modern physics.

Essentially, assume you're trying to compute a particular observable quantity in some theory set in a $(1,d)$-dimensional spacetime; for example, a quantum field theory. The quantity might be a function of a series of spacetime events:

$$A(x,y,z,\ldots)$$

where $x, y, z, \ldots$ are each spacetime events and therefore have $d+1$ coordinates $x_0,\ldots,x_d$, $y_0,\ldots,y_d$ etc.

Let's explicitate the dependence of $A$ on $x$ in detail:

$$A(x_0, x_1, \ldots, x_d, \ldots)$$

Now, what if $A$ was an **analytic** function of each of its arguments? Remember that analytic means that the function can be differentiated infinite times and each derivative is a continuous function, *and* the Taylor series that you obtain from these derivatives converges everywhere *and* converges to the original function. If it *is* analytic (and often it is or is very close to being so) then it can be proven that it can be extended to an analytic function on the complex plane (for each single variable, actually) and analytic functions of a complex variable are actually holomorphic. Holomorphy is the most beautiful property a function can have and if you have one of those on your hands, you're basically invincible.

If it is so, then we can consider evaluating the function for imaginary values of $x_0, y_0, z_0,\ldots$ even though that doesn't seem to correspond to anything physically meaningful for our theory. Mathematically, there's nothing wrong with it, and so we consider

$$A(i x_{d+1}, x_1, \ldots, x_d , i y_{d+1}, \ldots ) =: B(x_1,\ldots,x_{d+1},y_1,\ldots)$$

That last line was a definition of the new function $B$. $B$ is actually $A$ but evaluated at imaginary times (and with the arguments rearranged to put them in a reasonable order).

Now, what could $B$ *physically* be? It's an analytic function of some coordinates in an Euclidean $(d+1)$-dimensional space, that looks a lot like $A$. It turns out that (in general) $B$ is indeed the same thing as $A$ was originally, but computed *as if* the original theory was not set in $(1,d)$-dimensional spacetime, but in a Euclidean $(d+1)$-dimensional space, without time. 

For example, say we're working on a quantum field theory on three dimensional space plus a dimension of time. $A(x,y)$ could be the answer to the question:

if I create a particle at position and time $x$, what is the probability of finding a particle at position and time $y$?

then $B(P,Q)$ could answer an analogous question in a quantum theory set on 4-dimensional space without time, for example:

if I create a particle at (4D) position $P$, what is the probability of finding a particle at position $Q$?

Now, calculating $A$ can often help finding $B$ and vice versa. The question is: why would one want to do this? The reason is that almost always $A$ will **not** be as regular as I've assumed. It often won't be analytic and many times it will be defined by a divergent integral. However, enough analytic structure will be present to extend the function to the complex plane, except for singularities (poles and branch cut). We can then try to find the corresponding B, which often is more regular and well-behaved, *and* simpler to compute. When done, we can attempt "rotating back" 90° to find our original function.

This whole ordeal of switching from a $(1,d)$-spacetime quantum theory to a $(1+d)$-Euclidean quantum theory to compute observables and then switching back is called a **Wick rotation**. Sometimes this is necessary for the spacetime (henceforth Lorentzian) theory to even make sense. A quantum theory is defined by a Feynman path-integral over all possible classical configurations, but this very often diverges in Lorentzian spacetime because it's highly oscillatory. To make sense of it we Wick-rotate to the Euclidean theory, where the path integral is actually very easily dealt with. The reason lies in the fact that the symmetry group of Euclidean n-dimensional space (the orthogonal group $O(n)$) has many desirable properties that the symmetry group of $(1,n-1)$-spacetime (Lorentz group $O(1,n-1)$) does not have. So for many quantum relativistic theories the Wick-rotation must be included to even define the theory.

Wick rotation is mostly used in QFT, where it maps quantum field theories to quantum statistical mechanics systems in a +1 higher dimensional space. However, it is also important in more general quantum systems such as string theories or quantum gravity.
