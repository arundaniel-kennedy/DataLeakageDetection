import random as rand

r=[['t1','t2'],['t1']]
R = []
b = [1,1]
B = 1
F = []

for i in  range(0,2):
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
