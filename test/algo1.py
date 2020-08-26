import random as rand

r=[['t1','t2','t3'],['t1','t3'],['t2']]
R = []
b = [5,3,2]
B = 10
F = []

for i in  range(0,3):
    if b[i]>0:
        R.append(i)
    F.append([])

j = 1
while B > 0:
    i = rand.choice(R)
    f = 'f'+str(j)
    j = j+1
    r[i].append(f)
    F[i].append(f)
    b[i] = b[i]-1
    if(b[i]==0):
        R.remove(i)
    B = B - 1

print(r,F)
