# CM1 - Why is my physics teacher so anal about centripetal vs centrifugal? Is the centrifugal force "fictitious"? 

This one is an *extremely heated* question, and this baffles me because it has no reason to be so. Still, be wary that whatever your opinion, people will invariably shout at you. With that said, let's start.

Let's consider an object in uniform circular motion. This means we are in an inertial reference frame (say, laboratory, or $K$) and we force an object of mass $m$ to follow a circular trajectory of radius $R$ with constant speed $v$. We are interested in finding the acceleration of the object. 

Let me rapidly review how one could compute such an acceleration. I'm gonna do it very very quickly using trigonometry, but most textbooks take more time and calculate $\vec a$ using a mostly "geometric" approach coherent with Newtonian tradition, so refer to them if you want a simpler proof. Here I'm interested more in dealing with it and moving on to the interesting conceptual question. So, in coordinates, with $xy$ the plane of rotation and $z$ the axis of rotation:

$$ \vec r = R \begin{pmatrix} \cos(\omega t) \\ \sin(\omega t) \\ 0 \end{pmatrix} $$

Where $\omega := v/R$ is the angular velocity. Then differentiating:

$$ \vec v = \frac{d}{dt} \vec r = \omega R \begin{pmatrix} - \sin(\omega t) \\ \cos(\omega t) \\ 0 \end{pmatrix} $$

Note that the norm of $\vec v$ is $\omega R = v$ which justifies the definition of $\omega$. And differentiating again:

$$ \vec a = R \omega^2 \begin{pmatrix} -\cos(\omega t) \\ -\sin(\omega t) \\ 0 \end{pmatrix} = - \omega^2 \vec r $$

so we have a purely radial acceleration pointing *inwards*, so a centripetal acceleration.

Centripetal (not centripe**d**al) and centrifugal are both words created by Sir Isaac himself back in 1687, who wrote in Latin. The first part of the word comes from *centrum*, "centre" (itself from Greek *κέντρον* meaning "sharp point"). -petal is from *petō*, meaning to beg, to seek. -fugal is from *fugiō*, meaning to flee. They're pretty self-explanatory when presented this way.

So we have a centripetal acceleration and consequently, if Newton's second law is to be trusted, then

$$ \vec F = m \vec a$$

there must be a centripetal force. So to keep an object in circular uniform motion, a centripetal force pulling it towards the centre is necessary.

In fact, to keep the mass in circular motion we've needed exactly a force pushing *radially inwards*. If we use a rope, the tension of the rope is the centripetal force that keeps the mass in circular motion.

So far, no trace of the centrifugal force, and that's ok.

But now, let's move to the corotating frame $K'$. The corotating frame rotates along with the mass and the rope; in this frame the mass and rope are immobile, and the rest of the lab rotates around them. The position of the mass is fixed at:

$$ \vec r' = R \begin{pmatrix} 1 \\ 0 \\ 0 \end{pmatrix} $$

and the velocity $\vec v' = \frac{d}{dt} r' = 0$ and $\vec a' = 0$. So, if Newton's law held, we would have

$$\vec F' = 0$$

but we already knew the only force acting on the mass in the centripetal tension of the rope, which is definitely nonzero, so this makes very little sense.

The point is that the corotating frame is non inertial. An inertial frame is one where Newton's second law is true. Instead in a noninertial frame the difference between the forces applied and those needed for mantaining that motion is nonzero:

$$m \vec a' - \vec F' =: \vec F_\text{in}$$

$F_\text{in}$ are the so-called *inertial forces*, since they might as well be thought to be forces acting exclusively because we've moved to a non-inertial frame. The advantage of seeing these as forces is that we can restore Newton's second law by adding them together with the "physical" forces:

$$ (\vec F' + \vec F_\text{in} ) = m \vec a' $$

which is pretty remarkable. In our case, $\vec a' = 0$, so

$$\vec F_\text{in} = - \vec F_\text{tension}$$

so the inertial force points radially outwards, and is therefore a *centrifugal* force.

Why do, mathematically, inertial forces arise?

Consider a change of coordinates on space from frame $K$ to the corotating frame $K'$. This is in general given by a function $\vec r' = \xi(\vec r;t)$, where I've explicitated that our change of coordinates might depend on time. Now one typically in Newtonian mechanics works with *affine* coordinate changes, of the form:

$$\vec r' = \Omega(t) \vec r + \vec b(t)$$

where $\Omega(t)$ is a matrix and both $\Omega(t)$ and $\vec b(t)$ depend on time. The acceleration in $K'$ is therefore

$$v' = \dot {\vec r} = \dot {\Omega} \vec r + \Omega \dot {\vec r} + \dot {\vec b}$$

$$a' = \dot{\vec v} = \ddot {\Omega} \vec r + 2 \dot {\Omega} \vec v + \Omega \vec a + \ddot {\vec b}$$

where I've made use of Newton's own dot notation for time derivatives. Note that *if* $\Omega$ and $\vec b$ were *constant* in time, we would have

$$\vec v'_0 = \Omega \vec v$$
$$\vec a'_0 = \Omega \vec a$$

which is interesting. It means, for example, that if you change between frames of reference that are rotated between eachother by a constant angle (i.e.: $\Omega$ is a constant rotation matrix) then your new $v$ and $a$ will be the the old ones rotated by the same angle. Instead, in the general case where $\Omega(t)$ and $\vec b(t)$ are time-dependent, we get

$$\vec a' = \vec a'_0 + \ddot{\Omega} \vec r + 2 \dot {\Omega} \vec v + \ddot{\vec b}$$

That is: the fact that the parameters that describe the change of coordinates in space depend on time *implies* that accelerations will be augmented by additional, "spurious" terms due to the variation in time of said parameters. We switch to forces by multiplying by $m$:

$$m \vec a' = \vec F' + m \left( \ddot {\Omega} \vec r + 2 \dot{ \Omega} \vec v + \ddot {\vec b}\right)$$

$$=: \vec F' + \vec F_\text{in}\left(\vec r',\vec v'\right)$$

So, I've identified $m \vec a'_0$ as the total "physical" force, that is the transformed version ($\vec F' = \Omega \vec F$) of the forces already present in $K$ (such as the centripetal force). But in addition to that we have all those other terms, which I've grouped together in the total inertial force $\vec F_\text{in}$. I've written the inertial force as a function of the new position and velocity $\vec r'$ and $\vec v'$, when the expressions above are in terms of $\vec r$ and $\vec v$, but notice that it's easy to invert the $\vec r'(\vec r)$ and $\vec v'(\vec v)$ relationships and get $\vec r(\vec r')$ and $\vec v(\vec v')$.

So Newton's law does not hold with $\vec F'$ as the total force. But we have no theorem that says that $\vec F'$ should be identified as the total force. So we have two entirely equivalent possibilities:

- Newton's law does not hold in non-inertial frames. $\vec F'$ are definitely the forces acting in $K'$, while $\vec F_\text{in}$ are an artefact of the non-inertiality. Therefore they are "fictitious" forces.
- Newton's law *does* continue to hold in non-inertial frames, but forces do not transform trivially between frames (i.e.: $\vec F' \neq \Omega \vec F$). In particular, when switching to non-inertial frames, multiple additional terms appear. The total force acting on $K'$ then is the sum of the naive transform of the original force plus inertial forces. So inertial forces are absolutely real effects.

Now, to the point where we've gotten so far, both seem absolutely equivalent viewpoints in terms of physics (which is just concerned about measurement results) and the question seem exquisitely philosophical. In light of this, why do people spend so much energy striving to prove the inherent superiority of the first version, the "fictitious" one? I'm talking about adages like

> inertial forces are fake forces, they are "an illusion"

or even this

> "centrifugal" force? Maybe you mean *centripetal*. The centrifugal force does not exist.

as if the centrifugal force suddenly became taboo. The answer is I don't know: I don't know why people do this. Wikipedia's article is literally named Fictitious Force, and this view was also very likely that of Newton.

Inertial forces are actually pretty real. If I'm riding a merry-go-round, I can measure a force pushing me outwards. If I weigh myself at the equator, I weigh slightly less than at the poles. Sure, you can just impose that non-inertial frames are fundamentally inferior to inertial frames and that the correct description of my dynamometer or scale is only that where it's rotating, but it's kind of annoying to call (even indirectly) the most complicated picture the "more correct" one. Still, the question mantains a purely philosophical nature and therefore I don't enjoy speculating on it.

Here's a pre-packaged answer if your professor asks you wheter a centrifugal or centripetal force is acting on a rotating object (which is an absolutely legitimate question to be anal about):

In the inertial frame of the lab, where the object performs the uniform circular motion, there is a centripetal force. In the corotating frame, there is both a centrifugal and centripetal force.

and if he asks "yeah, well, ok, but which one is the *real* one" then ask him to sod off and inform him that forces, like many things in life, depend on the reference frame. End of story.

A last thing: there is actually an immensely remarkable fact about the Universe that is a strong point in favour of the second view, that in which inertial forces are "real":

**All four fundamental forces (electromagnetism, weak, strong, gravity) are inertial forces.**

For example, gravity can (by virtue of the equivalence principle and general relativity) be cancelled locally by a suitable change of coordinates. If you are standing on the surface of the Earth, a local change to free-falling coordinates cancels the gravitational force; it's instead the ground that is accelerating upwards at $g$ and pushing on you, accelerating you upwards. A free-falling object, instead, feels no force in this (local) frame. The sacred "lab frame" where stuff falls at $g$ is actually *non-inertial*, and the force of gravity is the inertial force associated with the non-inertiality of that frame! This is the fundamental starting point of general relativity. And in general relativity, sometimes spacetime is curved, and *inertial frames do not exist*. A worldview obsessed with separating the "real" forces from the "fake" forces is in some serious difficulty.

But what's even more interesting (and less known) is that the other fundamental forces (electroweak and strong) act in a similar fashion. They are "inertial" forces due to the "non-inertiality" of some "frame" and can be locally cancelled by a suitable local "change of coordinates". I put stuff in quotes because this actually involves coordinate transformations in some "internal" space instead of spacetime, but the math (gauge theory) is almost identical.

Note that the electromagnetic force is at the base of the microscopical description of the tension force holding the mass in circular motion, the centripetal force. So, no pun intended, we've come full circle.
