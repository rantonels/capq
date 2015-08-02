# TD1 - How are negative temperature possible? Why are they hotter than any positive temperature? How were they acheived?

*this answer provided by [/u/Midtek](https://reddit.com/u/Midtek)*

For the answer to this question, you need to understand the definition of temperature ($T$), from first principles, in statistical mechanics. That is, temporarily forget about temperature having anything to do with average energy of gas molecules or feelings of hot and cold. There is a quantity, I would say more fundamental than $T$, called thermodynamic beta ($\beta$). $\beta$ is defined in terms of entropy and energy. Suppose we have a system with a fixed number of particles (molecules, atoms, whatever) which is constrained to be in a fixed a volume. This system has an entropy $S$ and a total energy $E$. Let's take a moment to describe $S$ in a fundamental way.

The entropy is meant to be a measure of the possible number of microstates that are consistent with a given macrostate. What does that even mean? Let's consider a very elementary example. Suppose our "particles" are really switches, which are either on or off. If a switch is on, it has energy $e = +1$. If a switch is off, it has energy $e = -1$. If there are a total of $N$ switches, the microstate of the system is simply an N-tuple of $+1$s and $-1$s, which indicate which switches are on and off. So for a 3-switch system, a microstate of $(1,1,-1)$ tells us that the first two switches are on and the last is off. A microstate of $(-1,1,-1)$ tells us that the first and last are off and the second is on.

The macrostate in this example is the total energy $E$. What if I told you that there were $N$ switches and the total energy was $E = N$? Well... with a little bit of thought, you can see that the only possible way for that to happen is if every single switch were on. So we say that there is one microstate associated to the macrostate $E = N$. Okay, let's consider other macrostates. For simplicity, let's put $N = 2$. What are the possible microstates? There are four:

$$
\begin{aligned}
    (-1,-1) & & \text{total energy} \; & E = -2 \\
    (-1,+1) & & \text{total energy} \; & E = 0 \\
    (+1,-1) & & \text{total energy} \; & E = 0 \\
    (+1,+1) & & \text{total energy} \; & E = 2 \\
\end{aligned}
$$

So we see that there are three possible macrostates, and that the macrostate $E = 0$ actually has two microstates associated to it. We give the count of the possible microstates a special name and symbol, $\Omega$. So we define $\Omega(E)$ to be the number of microstates that are consistent with the given macrostate (total energy $E$). (Technically, $\Omega$ also depends on $N$, but since we will later want to keep $N$ fixed anyway, I will suppress that dependence.) So in our two-switch example, the function $\Omega$ has the following values:

$$
\begin{aligned}
    \Omega(-2)	& = 1\\
    \Omega(0) 	& = 2\\
    \Omega(2)	& = 1
\end{aligned}
$$

The entropy $S$ of the system, which is considered a function of the total energy $E$, is then defined to be $S = \ln(\Omega)$. (That's the natural logarithm of $\Omega$.) The reason we define $S$ to be the logarithm and not just work with $\Omega$ directly is a bit subtle. It turns out that with this definition, S is an additive function of independent systems. So if we wanted to know the total entropy of a system that consists of two independent, closed systems, it is just the sum of the entropies for each individual system. It makes math later on much nicer.

I should mention that this definition of entropy is called the "Boltzmann entropy", and you will encounter other definitions of entropy in texts and papers. Some of the definitions can be shown to be equivalent under certain assumptions. From a statistical point of view, the definition that I have described is fundamental. Also note that you will see this formula written as $S = k_B \ln(\Omega)$, where k is Boltzmann's constant. The constant serves only to give entropy units, since otherwise S is dimensionless. This then gives temperature units of kelvins (instead of joules), and really only serves to rescale temperature. The constant $k_B$ appears in formulas only in the combination $S/k_B$ and $k_B T$, and so the constant is absolutely unnecessary. For simplicity, I will set $k_B = 1$. (So entropy $S$ is dimensionless and temperature $T$ will end up with units of energy.)

Okay, so hopefully that all makes sense. Entropy $S$ is ultimately a measure of the number of microstates consistent with a total energy $E$. There is one more element of this story. In our model we also assume that each microstate is equally probable. So, for instance, in our two-switch model, the probability that $E = 0$ is $\frac{1}{2}$. The probably that $E = -2$ is $\frac{1}{4}$. Hence, since entropy counts the number of microstates, the maximum entropy corresponds to the most likely total energy.

So where does beta and temperature fit into all of this? Well, we define beta as

   $$ \beta = \frac{dS}{dE} $$

That is, beta is the derivative of $S$ with respect to $E$. Again, we assume the number of particles $N$ is constant. (In models of real gas molecules, for instance, we would also assume the volume of the container is constant. For our switch model, the volume is meaningless.) Technically, since $N$ is an integer, this derivative doesn't really exist. But we can assume that $N$ is large enough so that $S$ is approximately a continuous function of $E$, for which the derivative makes sense. To understand the significance of $\beta$, in terms of *energy flow*, takes a bit more math, but we can consider a very simple example to see what's going on. Suppose we have system $A$ and system $B$, which are independent, but allowed to exchange energy with each other.

Suppose both systems are also in a state far from the entropy maximum. We have not introduced any dynamical element to our model, but it is plausible to think that the total system will move toward a more likely macrostate. So in this plausible scenario, if the systems exchange energy $dE$, the energies of the systems and the total entropy change according to:

$$ E_A \rightarrow E_A+dE $$

$$ E_B \rightarrow E_B-dE $$

$$  S \rightarrow S + dE(\beta_A-\beta_B)+\ldots $$

(The "$\ldots$" means terms that involve $(dE)^2$ and higher powers. This is essentially a Taylor expansion of the entropy $S$.) So in the plausible scenario of the entropy increasing (since the system moves to a more likely macrostate), we must have that $dE(\beta_A-\beta_B)$ is positive, which means that $dE$ and $(\beta_A-\beta_B)$ have the same sign.

In other words, energy is more likely to flow from $A$ to $B$ if $\beta_A<\beta_B$. And here we finally see the physical significance of $\beta$. If we define our sense of "hot" and "cold" in terms of the direction of likely energy flow, then we see that lower values of $\beta$ correspond to hotter systems. The coldest possible system has $\beta = +\infty$, the hottest possible system has $\beta = -\infty$. In between, the ordering of "hot" and "cold" is completely monotone.

So where the hell does temperature come into this? Well, temperature $T$ is defined as

$$    T = 1/\beta$$

Note that since $\beta$ is allowed to be 0, there is a singularity in the definition of $T$, which makes the entire concept of hot and cold very confusing in terms of $T$. So the coldest possible temperature is $T = 0_+$, and if we increase $T$ then it gets hotter until $T = +\infty$. The next hotter temperature is then $T = -\infty$! Increasing $T$ again, it gets hotter still until we reach the hottest possible temperature $T = 0_-$. So we are used to thinking of higher values of $T$ as hotter, but actually all negative values of $T$ are hotter than all positive values of $T$.

A natural question might be "well why not just use $\beta$"? The answer is, well, that we do. However, in many applications, the number $T$ is actually more useful. For instance, for an ideal gas, $T$ can be interpreted in terms of the average kinetic energy of the molecules. Many formulas of thermodynamics are a bit more intuitive or in a more aesthetic form. But, perhaps most important, is that realistic systems never have a negative value of $T$. And that goes into your second question on how negative temperatures were achieved.

I have (hopefully) satisfactorily explained how negative temperatures are hotter than infinite temperature. I am afraid that I cannot give an answer to your second question (how were negative temperatures achieved) in as much detail. Note that with our definition of beta $\beta = 0$ means that $\frac{dS}{dE} = 0$, so that the system is at either a maximum or minimum of entropy. (If you go through the math in more detail, it turns out that $\beta = 0$ implies a maximum of entropy.) Since negative value of $T$ means a negative value of $\beta$, a negative temperature is achieved when, if by adding energy to the system, the entropy decreases. (In our switch model, this possibility is very clear. In our two-switch example, increasing the energy from $E = 0$ to $E = 2$ decreased the entropy since there were fewer microstates consistent with $E = 2$ than with $E = 0$.) Adding energy to a real, typical system of particles, however, should always increase the entropy, so that $\beta$ (and hence $T$) is always positive.

Physical principles do not outright disallow negative values of $T$. It's just that we don't normally see systems which have that property. There are apparently some very particular quantum systems which have the property of a negative value of T, in the sense that increasing the total energy actually decreases the entropy. Likely, this is possible only for quantum systems which have a **maximum** allowable energy. Remember that energy is typically quantized in a quantum system, but there is often only a minimum energy, which increases in discrete amounts. A maximum energy, as far as I know, is not common. I studied quantum mechanics proper only up to a first-year graduate level, and all of the systems I encountered did not have a maximum allowable energy IIRC.

So this is right where my knowledge on the subject ends; I do not study condensed matter physics in any form. Hopefully, an expert on the subject can shed more light on how negative values of $T$ are actually achieved in a lab. But hopefully now you understand what a negative value of $T$ even means.


---


*the following addendum is by [/u/RobusEtCeleritas](https://www.reddit.com/user/RobusEtCeleritas)*

The only thing I would add to this is that negative temperatures are only possible in systems where the total energy is bounded above. The easiest example to think of is the two-level system mentioned above. Physically, you can think of it as little spin-1/2 magnetic dipoles in a lattice (like the Ising model of ferromagnetism).

I actually like to think of the two-state paramagnet rather than the Ising model (the difference being that ferromagnets can keep their magnetization after the external magnetic field is shut off, but paramagnets can't).

Anyway, the two-state paramagnet has a maximum energy, and it's in the state where **every single** dipole is anti-aligned with the external magnetic field. The minimum energy is when every dipole is aligned with the external field.

So at the temperature $0_+$ ($\beta = +\infty$), you'd expect every single dipole to be in the ground state, and at temperature $0_-$ ($\beta = -\infty$), you'd expect every dipole to be anti-aligned. In the limit where the temperature goes to infinity ($\beta$ goes to zero), you'd reach maximum entropy, where all of the spins are oriented completely randomly.

It turns out that **whenever** more than half of the dipoles are anti-aligned with the external field, the absolute temperature is negative. That makes sense because as you decrease the energy (decrease the number of anti-aligned dipoles), you increase the entropy (or the "randomness" of the alignments). Since $\frac{dS}{dE}$ is negative, so is the temperature.

This is only possible because the two-level system has a maximum possible energy, and that's only possible because it's a quantum-mechanical system; you can't do this with a simple system like an ideal gas.

Now, how can you actually get the two-state paramagnet into a negative temperature state? Just cool it down to very near absolute zero. Now most of the spins are aligned with the external field.

Now reverse the direction of the external field. Suddenly, most of the dipoles are anti-aligned with the external field. They very much want to give away energy to the surroundings so they can align with the new direction of the field. Even though the system is technically at a negative temperature, it very much wants to give away energy (so it's very "hot").

I mentioned before that the system is at a negative temperature whenever more than half of the dipoles are anti-aligned with the external field. Clearly in that configuration, the energy is higher than it would be if less than half of the dipoles were anti-aligned. So it follows that any negative temperature state of this system is necessarily "hotter" (higher total energy) than any state where the same system is at a positive temperature.
