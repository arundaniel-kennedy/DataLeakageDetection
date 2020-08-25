import random as rand

nt = 3
t = ['t1','t2','t3']
a=[0,0,0]

n=3
m = [3,2,3]
r = [[],[],[]]

def selectobject(i):
    while True:
        k = rand.randint(0,nt-1)
        if t[k] not in r[i]:
            return k

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
