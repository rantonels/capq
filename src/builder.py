#!/usr/bin/python

categories = {
    'KGP':(0,'Kinematics/General Physics',[
            "KGP1"
            ]),
    'CM':(10,'Classical Mechanics',[
            "CM1",
            "CM2"
            ]),
    'TD':(20,'Thermodynamics',[
            "TD1"
            ]),
    'OM':(30,'Celestial/Orbital Mechanics',[
            "OM1",
            "OM2"
            ]),
    'FM':(40,'Fluid Mechanics',[
            ]),
    'CED':(50,'Classical Electrodynamics',[
            "CED1",
            "CED2"
            ]),
    'AM':(60,'Analytical Mechanics',[
            "AM1"
            ]),   
    'SR':(70,'Special Relativity',[
            "SR1",
            "SR2"
            ]),
    'GR':(80,'General Relativity',[
            "GR1",
            "GR3"
            #GR2 coming along
            ]),
    'QFT':(90,'General Quantum Field Theory/Many Body/Relativistic QM',[
            "QFT1"
            ]),
    'NP':(100,'Nuclear Physics',[
            ]),
    'QED':(110,'Quantum Electrodynamics',[
            "QED1"
             ]),
    'HEP':(120,'Particle Physics/High Energy Physics',[
            "HEP1",
            "HEP2",
            "HEP3",
            "HEP4"
            ]),
    'QG':(130,'Quantum Gravity/String Theory',[
            "QG1",
            "QG2"
        ]),

    'CP':(1000,'List of well-known crackpots',[
            "Aether",
            "Imagining",
            "Standup",
            "Nassim",
            "Lisi",
            "EMdrive"
            ])
        }

def print_toc():
    for ac,c in sorted(categories.items(),key=lambda x:x[1][0]):
        print "## "+c[1]
        print
        for entry in c[2]:
            f = open('src/q/'+entry+'.md','r')
            s = f.read().split('\n')[0].strip('#').strip(' ')
            f.close()

            print "["+s+"](q/"+entry+".html)"
            print

def print_tomake():
    for ac in categories:
        c = categories[ac]
        for entry in c[2]:
            print entry

def joined_source():
    for ac,c in sorted(categories.items(),key=lambda x:x[1][0]):
        print "#"+c[1]
        for entry in c[2]:
            f = open('src/q/'+entry+'.md','r')
            print "##" + f.read()
            f.close()
            print

import sys

if sys.argv[1] == "print_toc":
    print_toc()
elif sys.argv[1] == "print_tomake":
    print_tomake()
elif sys.argv[1] == "joined_source":
    joined_source()
else:
    print "error"
