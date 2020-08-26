import random as rand

nt = 4
t = ['t1','t2','t3','t4']
a=[0,0,0,0]

n=3
m = [2,2,2]
r = [[],[],[]]

def selectobject(i):
    min_ov = 1
    K = [t.index(p) for p in t if p not in r[i]]
    for k in K:
        max_rel_ov = 0
        for j in range(0,n):
            if j!=i and t[k] in r[j]:
                abs_ov = len(list(set(r[i]) & set(r[j])))+1
                rel_ov = abs_ov/min(m[i],m[j])
                max_rel_ov = max(max_rel_ov,rel_ov)
        if max_rel_ov <= min_ov:
            min_ov = max_rel_ov
            ret_k = k
    return ret_k

rem = 0
for i in m:
    rem = rem+i

while rem > 0:
    for i in range(0,n):
        if len(r[i])< m[i]:
            k = selectobject(i)
            # print(k)
            r[i].append(t[k])
            a[k] = a[k]+1
            rem = rem-1

print(r,a)
