reset


set term gif giant animate delay 4.16 size 800,600
set output "cylinder.gif"

ttotal = 0.25
n = 60

dt = ttotal / (1.0*n)

unset key; unset colorbox; unset tics
set parametric

set vrange [-1:1]
set urange [0:2*pi]

K = 7.0

set xrange [-K:K]
set yrange [-K:K]
set zrange [-K:K]

set view equal xyz
set view 60,30,20

set pm3d depthorder hidden3d 1
set hidden3d

#set pm3d depthorder

set palette defined (0 0 0 0 ,1 0.8 0.8 0.8)
set isosamples 30,10

fac = 1.0
phee = 0.2

do for [i=1:n] {
	t = ttotal - i*dt + 0.001
	L = exp(log(3.0/2.0 * t)*(-1.0/3.0))
	R = exp(log(3.0/2.0 * t)*(2.0/3.0))

	theta = 3*(2.0/3.0)**(2.0/3.0) * t**(1.0/3.0) - pi/2 + 0.1

	#alpha = 1.0-(t/ttotal)**5 
	alpha = 1.0

	set style fill transparent solid alpha border

	set style line 1 lc rgb '#00ffff' lw 0.5

	unset label

	# head
	set label at -L*0.05,0, R*fac "" point pt 7 ps 2 front


	# neck torso
	set label at -L*0.035,0, R*fac "" point pt 7 front
	set label at -L*0.02,0, R*fac "" point pt 7 front
	set label at -L*0.005,0, R*fac "" point pt 7 front
	set label at L*0.010,	0, R*fac "" point pt 7 ps 1 front
	set label at L*0.025,0, R*fac "" point pt 7 front

	# arms
	set label at -L*0.01,R*fac*sin(phee), R*fac*cos(phee) "" point pt 7 front
	set label at -L*0.01,-R*fac*sin(phee), R*fac*cos(phee) "" point pt 7 front
	set label at -L*0.020,R*fac*sin(phee/2), R*fac*cos(phee/2) "" point pt 7 front
	set label at -L*0.020,-R*fac*sin(phee/2), R*fac*cos(phee/2) "" point pt 7 front


	#legs
	set label at L*0.05,R*fac*sin(phee), R*fac*cos(phee) "" point pt 7 front
	set label at L*0.05,-R*fac*sin(phee), R*fac*cos(phee) "" point pt 7 front
	set label at L*0.03,R*fac*sin(phee/2), R*fac*cos(phee/2) "" point pt 7 front
	set label at L*0.03,-R*fac*sin(phee/2), R*fac*cos(phee/2) "" point pt 7 front


	# light
	set label at 0, R*fac*sin(theta), R*fac*cos(theta) "" point pt 9 lc rgb "yellow" front
	set label at L*0.05, R*fac*sin(theta), R*fac*cos(theta) "" point pt 9 lc rgb "yellow" front
	set label at -L*0.05, R*fac*sin(theta), R*fac*cos(theta) "" point pt 9 lc rgb "yellow" front


	set title sprintf("t = %f",t)
	splot L*0.2*v,R*sin(u),R*cos(u) w pm3d
		 
}

set output 
