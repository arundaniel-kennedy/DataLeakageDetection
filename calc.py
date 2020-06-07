import matplotlib.pyplot as plt

agents = [['r1','r2'],['r1'],['r2']]

pg = {}
for i in agents:
  for j in i:
      pg[j] = []

print(pg)

for pp in range(0, 11, 1):
  p = pp/10
  pr = {}
  for i in agents:
      for j in i:
          pr[j] = 1
  for agrp in agents:
      s = len(agrp)
      print(agrp)
      for agent in agrp:
          pr[agent] *= 1-((1-p)/s)
          print(p,agent,pr[agent])
  for key in pr:
      val = 1-pr[key]
      pg[key].append(val)

print(pg)
p = [i/10 for i in range(0,11,1)]

plt.plot(pg['r1'],p,label = "i=1")

plt.xlabel('Pr{Gi}')
# naming the y axis
plt.ylabel('p') 
