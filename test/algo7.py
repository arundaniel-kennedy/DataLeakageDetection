import random as rand

nt = 4
t = ['t1','t2','t3','t4']
a=[0,0,0,0]

n=4
m = [2,2,2,2]
r = [[],[],[],[]]

def selectobject(i):
    k = [j for j, x in enumerate(a) if x == min(a)]
    print(k)
    while True:
        z = rand.choice(k)
        if t[z] not in r[i]:
            return z

rem = 0
for i in m:
    rem = rem+i

while rem > 0:
    for i in range(0,n):
        if len(r[i])< m[i]:
            k = selectobject(i)
            print(k)
            r[i].append(t[k])
            a[k] = a[k]+1
            rem = rem-1

print(r,a)
