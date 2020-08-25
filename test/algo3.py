import random as rand

n=3
r=[['t1','t2'],['t1'],['t2']]
R = []
b = [1,1,1]
B = 2
F = []

def selectagent(val):
    arg = []
    for i in val:
        c = len(r[i])
        arg.append((1/c)-(1/(c+1)))
    k = arg.index(max(arg))
    print(arg)
    return val[k]

for i in  range(0,n):
    if b[i]>0:
        R.append(i)
    F.append([])

j = 1
while B > 0:
    i = selectagent(R)
    f = 'f'+str(j)
    j = j+1
    r[i].append(f)
    F[i].append(f)
    b[i] = b[i]-1
    if(b[i]==0):
        R.remove(i)
    B = B - 1

print(r,F)
