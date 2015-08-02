# QED1 - How does $1+2+3+\ldots=-1/12$/$\zeta$-regularization enter in the Casimir effect? 

The Casimir effect is an attractive force between very close parallel conducting plates and it's a consequence of the quantum nature of the EM field. There are numerous ways to derive it, with various levels of rigour, but the one employing zeta-regularization holds a special place in my heart.

For simplicity, reduce from three to just one spatial dimension. This doesn't change the essential points of the computation. Then our parallel plates are actually two barriers, one at $x=0$ and one at $x=a$, with $a$ the spacing. We know conductors act in a way as to make the longitudinal component of the electric field vanish on them. So we can model these boundary conditions as

$$ \vec E(t,0) = 0 \quad \quad \vec E(t,a) = 0$$

The electric field satisfies the wave equation both inbetween and outside the plates:

$$ \Box \vec E(t,x) = \left( \frac{1}{c^2} \partial_t^2 - \partial_x^2 \right) \vec E(t,x) = 0 $$

Now, since this equation is linear it's really tempting to write down a Fourier series for the electric field. We know that any function on the interval $[0,a]$ can be expanded in this basis of fundamental waves:

$$ S_n(x) = \sin(k_n x)$$

with $k=\frac{\pi n}{a}$, $n=1,2,\ldots$. These are a bit different than the usual presentation of Fourier Series in that they use only sines (but halve the lowest period). If you are not familiar with Fourier sine series [this](http://web.mit.edu/18.06/www/Spring09/sines.pdf) is a good read.

We can decompose any function on the interval in this basis:

$$ f(x) = \sum_{n=1}^\infty f_n \sin(k_n x) $$

So let's do that for the electric field at a given time $t$.

$$ \vec E(t,x) = \sum_{n=-\infty}^\infty \sum_i A_{ni}(t) \sin(k_n x) \vec e_i $$

Since $\vec E$ is a vector, we have to introduce two basis polarization vectors $\vec e_y$, $\vec e_z$ pointing in the $y$ and $z$ directions, and sum over polarization ($i=y,z$). We have therefore two modes of oscillation for each value of $n$, corresponding to the two polarizations. The $\vec e_x$ polarization does not exist, because the electromagnetic field does not have a longitudinal component in free space.

$A_{ni}(t)$ is the coefficient of the expansion of $\vec E(t)$ in the mode given by $n$ and $i$, and obviously depends on time.

The expression obtained for the electric field automatically satisfies the boundary conditions *if* the coefficient $A_{ni}$ are not too crazy (it's still an infinite sum of functions, it's no joke).

Let us study the time evolution of $A_{ni}$. Since the equation is linear, we just plug into the equation one single term from our expansion of the electric field:

$$ \Box ( A_{ni}(t) \sin(k_n x) ) = \frac{1}{c^2} \left(\partial_t^2 A_{ni}(t) \right) \sin(k_n x) - k_n^2 A_{ni}(t) \sin(k_n x) = 0 \Rightarrow $$

$$ \partial_t^2 A_{ni}(t) + \omega_n^2 A_{ni}(t) = 0 $$

with $\omega_n = ck_n$. This is the equation for a harmonic oscillator! Of course this is no surprise, it's well-known that

$$ \vec E_{ni} (t,x) = A_{ni} (t) \sin(k_n x) \vec e_i$$

is a standing-wave solution for the wave equation. The interesting bit is that this can be a way to get insight about the quantization without actually studying quantum field theory. This is because anyone who has studied a bit of basic quantum mechanics knows about the quantum harmonic oscillator (QHO) and how it's energy spectrum is given by

$$ \mathcal{E} = \hbar \omega \left(m + \frac{1}{2}\right) \quad \quad m = 0,1,2,\ldots $$

So we hope that substituting our classical harmonic oscillator with its quantum counterpart we would be doing something presumably similar to what actually quantizing the EM field is. Let's try that. Each mode $(n,i)$ has a QHO associated with energy

$$\mathcal{E}^{ni} = \hbar \omega_n \left( m^{ni} + \frac{1}{2} \right) $$

and the total energy of the quantum EM field is given by $\mathcal{E} = \sum_n \sum_i \mathcal{E}^{ni}$.

We have unknowingly discovered photons.

The number $m^{ni}$ is actually *the number of photons in the mode $(n,i)$*, and takes the name of occupation number. Since photons are indistinguishable, you can describe the total state just by specifying how many photons have momentum $\hbar k$ and polarization $\vec\varepsilon$, how many $\hbar k'$ and $\vec\varepsilon'$, and so on; so just the full set of occupation numbers. The state with lowest energy possible is the one with $0$ photons in each single mode, and we call that the vacuum. All the $m^{ni}$ vanish and we are left with the energy per mode:

$$\mathcal{E}_0^{ni} = \frac{ \hbar \omega_n}{2}$$

this is called the zero-point energy of the QHO, and is well-known to students of quantum mechanics. Even with zero photons in a specific mode, that mode has a certain energy. We can write down the total energy of the vacuum as the sum of the zero-point energies over all modes:

$$\mathcal{E}_0 = \sum_{n=1}^\infty \sum_i \frac{\hbar \omega_n}{2} = \frac{\hbar c \pi}{a} \sum_{n=1}^\infty n = \frac{\hbar c \pi}{a} \left(1+2+3+4+\ldots \right) = \infty $$

Ugh. It's divergent. The total vacuum energy inbetween the plates is infinite. Physically, we can interpret it as being due to the ever-increasing contribution of high-momentum modes (it's a "UV" thing in QFT-speak). This divergence is most annoying and we must get rid of it someway. The reason I'm making you compute the total vacuum energy is more or less this: if the vacuum energy depends on the value of the separation $a$, then it acts as a sort of potential energy, that induces a force on the plates. I mean

$$ U(a) = \mathcal{E}_0(a) \Rightarrow F(a) = - \frac{d}{da} U(a) $$

but if $U(a)$ is infinity that's kind of difficult to work with. There must be another infinity we should subtract to cancel the divergence. An interesting candidate is the *vacuum energy in the region without the plates if the plates were not there*. We can subtract that:

$$ U(a) = \mathcal{E}_0(a) - \mathcal{E}_0^{\text{no plates}} $$

Makes sense, $U(a)$ it's the energy associated with putting the plates there. Now $\mathcal{E}_0^{\text{no plates}}$ is computed in a way entirely analogous to how we calculated $\mathcal{E}_0(a)$, but with a significant difference: the wavenumber $k$ is a continuous variable. Inbetween the plates the electric field was constrained by the boundary conditions and therefore only multiples of the fundamental wavenumber $k_1 = \frac{ \pi n}{a}$ were allowed. No such restriction exists without them and long story short our potential ends up being the difference of a divergent sum and a divergent integral:

$$ U(a) = \frac{\hbar c \pi}{a} \left( \sum_{n=1}^\infty n   -  \int_0^\infty n dn \right) = \infty - \infty$$

That's looking undoubtedly better, but it's still bad. We are still summing and integrating to infinity *separately*, then subtracting. Let's instead trying summing/integrating *simultaneously*, and see if something cancels before we go to infinity. For this we introduce a regulator $\Lambda$, a maximum value for $n$. Then we hope to find that in the limit $\Lambda\rightarrow \infty$ we get a finite result not depending on $\Lambda$. This is also physically reasonable: the conductor blocks the electric field by having electrons oscillate with the same frequency in a way to cancel out the field of an incoming wave; above a certain frequency, we expect the conductor to not be able to catch up. The conductor *must* be permeable to EM waves above some frequency. Anyways, so we do

$$ U(a) = \frac{\hbar c \pi}{a} \left( \sum_{n=1}^\Lambda n - \int_0^{\Lambda} n dn \right)$$

Which is better, because the sum of the first $\Lambda$ integers goes as $\sim \frac{1}{2} \Lambda^2$ and the integral from $0$ to $\Lambda$ goes as $\sim\frac{1}{2} \Lambda^2$, so the leading contributions cancel! This does not prove that the difference then is finite as $\Lambda \rightarrow \infty$, but it's a good start. There is an explicit formula for calculating this kind of divergent series minus divergent integral things and it's the Euler-MacLaurin formula, but it's really convoluted computationally. I just want to say that what we would get it's exactly the result if we had, naively, made the substitution

$$ 1+2+3+\ldots \rightarrow -\frac{1}{12} $$

which is what is dictated by $\zeta$-regularisation. This is, very handwavingly, because $\zeta$-regularisation makes some kind of statement that could be depicted schematically as:

$$ 1+2+3+\ldots = \infty - \frac{1}{12}$$

and we then subtract exactly that infinity when removing $\mathcal{E}_0^{\text{no plates}}$. Now, this is not a rigorous statement, but it's undoubtedly much easier to compute this way, and we immediately get our result:

$$ U(a) = \frac{\hbar c \pi}{a} \frac{-1}{12} = - \frac{\hbar c \pi}{12 a} $$
$$ \Rightarrow F(a) = -\frac{d}{da} U(a) = - \frac{\hbar c \pi}{12 a^2} $$

That's cool, and it's attractive, but that's not the expression for the Casimir force on Wikipedia. Remember we've done this in one dimension; in three dimensions you get

$$ \frac{U(a)}{A} = - \frac{\pi^2}{720} \frac{\hbar c}{a^3} $$
$$ \Rightarrow \frac{F(a)}{A} = - \frac{\pi^2}{240} \frac{\hbar c}{a^4}$$

which is the well-known expression - everything is per unit of area of the plates. (In this case, the divergent sum-integral pair is not the same as $1+2+3+\ldots$, but it's equally nasty, and the same arguments apply).

AFAIK the Casimir force with the expression above was experimentally observed in at least two great experiments, first by Lamoreaux in 1997 at the U of Washington and then by Bressi, Carugno, Onofrio, Ruoso in 2002 at the University of Padua. There is now an entire field of Casimir nanophysics.

Good reads:

- For more on the justification and meaning of the use of $\zeta$-regularisation in the Casimir effect and vacuum energy: [https://en.wikiversity.org/wiki/Quantum_mechanics/Casimir_effect_in_one_dimension](https://en.wikiversity.org/wiki/Quantum_mechanics/Casimir_effect_in_one_dimension)
- Terrence Tao on $\zeta$-reg: [https://terrytao.wordpress.com/2010/04/10/the-euler-maclaurin-formula-bernoulli-numbers-the-zeta-function-and-real-variable-analytic-continuation/](https://terrytao.wordpress.com/2010/04/10/the-euler-maclaurin-formula-bernoulli-numbers-the-zeta-function-and-real-variable-analytic-continuation/)
- For a concise derivation in three dimensions using $\zeta$-reg: [https://en.wikipedia.org/wiki/Casimir_effect#Derivation_of_Casimir_effect_assuming_zeta-regularization](https://en.wikipedia.org/wiki/Casimir_effect#Derivation_of_Casimir_effect_assuming_zeta-regularization)
- Some people are strongly critical or at least skeptic of vacuum fluctuations as the correct way to see the Casimir effect. A sensible argument is [http://arxiv.org/abs/hep-th/0503158](http://arxiv.org/abs/hep-th/0503158)

