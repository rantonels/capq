# KGP1 - Why is $c$/$\hbar$/$k_B$/(other fundamental constant) the value it is? What would happen if it was different?

Why is $c$ (the speed of light in a vacuum) exactly $299 \, 792 \, 458 \; \mathrm{m} / \mathrm{s}$?

The metre and the second are arbitrary units that originally referred in their definition to natural phenomena that were relevant to the daily life of humans. A second would be $1/86400$ of a day, the period of rotation of the Earth. The metre is one ten-millionth of the distance between the equator and the North Pole.

As soon as the necessary physics was consolidated, these definitions were replaced with the modern ones:

1) The second is $9\,192\,631\,770$ times the period of the radiation emitted in a specific atomic transition of ${}^{133}$Cs.

2) The metre is the length travelled by light in vacuum in $1/299 \, 792 \, 458$ of a second.

The first definition is still referring to a natural process, albeit much more exact than the rotation of the Earth. The bizzarre number involved is to make sure the new definition makes a modern second as similar as possible to the older second. Basically, the period of the transition radiation had been previously *measured* as being $1/9192631770 \, \mathrm{s}$ (in older seconds).

The second one rests on the first and simultaneously fixes the value of $c$. The units are explicitly *designed* so that the value of $c$ is $299\,792\,458$. This value is similar to the previous, measured value of $c$ in the older units.

Instead, the value of $c$ in the new system is defined, not measured.

This means we can actually make $c$ have any value we want by redefining the units. If we use lightyears and years for measuring lengths and times, we get

$$ c = 1 \; \mathrm{ly}/\mathrm{y} $$

But here it seems like we're just playing around with units. We aren't apparently actually *changing the speed of light*. Here's a little gedankenexperiment about that.

Assume there was a Universe where the speed of light was twice ours:

$$ c' = 2 c $$

Since the speed of light enters basically every relativistic phenomenon and many things about light and electromagnetism, you can bet the dynamics in this primed Universe will be very different from those in our unprimed one. For example, it's very likely it won't develop human life, at least in the same way as it happened for us.

However.

Consider the following change of variables in the primed Universe:

$$ x' \rightarrow \tilde{x}' = x'/2, \quad t' \rightarrow \tilde{t}' = t'$$

The tilded coordinates are just the normal coordinates, but with space stretched by a factor of 2. In these coordinates, the value of the speed of light is:

$$ \tilde{c} = \left(\frac{\tilde{x}'}{\tilde{t}'} \right)_\text{computed for a light ray} = \frac{1}{2}\frac{x'}{t'} = \frac{1}{2} c' = c $$

So we have to admit that, in the tilded coordinates, the speed of light is back to its original value in our Universe. In those coordinates, the primed Universe satisfies the same equations of motion as our own, and evolves identically. It has the same Big Bang, the same primordial nucleosynthesis, the same star formation, a Sun identical to ours, and an Earth and humans.

The humans are twice as tall as us, yes. But they don't know that. Since their Earth is twice as big, their metre (the tilded metre) is twice ours, and they measure their height to be normal in their tilded metres.

They finally measure the speed of light to be $299\,792\,458$ metres per second.

So, nothing would happen. This is the manifestation of how fundamentally meaningless the value of the speed of light is. Mainly because there is no independent other speed with which to compare it, as all speeds in physics ultimately depend on it.

All of the above applies to the following set of independent fundamental physical constants:

$c$, $\hbar$, $k_B$, $\epsilon_0$, $G$

and all those auxiliary constants formed by products of powers of those above. The above set is a maximal set of independent constants and is the largest set of constant for which you can simultaneously impose a fixed value by redefining the units. If you fix less than all of these, you get freedom in your system of units. For example, setting

$c = \hbar = k_B = \epsilon_0 = 1$

gives natural units (Lorentz-Heaviside variant), useful in high-energy physics. Since you omitted $G$, you still have a single arbitrary unit to fix. You can use the metre, for example, and the rest of the units follow. The time unit is $c\mathrm{m}$, the energy unit is $\frac{c\hbar}{\mathrm{m}}$ and so on.

Adding $G=1$ instead gives Planck units.
