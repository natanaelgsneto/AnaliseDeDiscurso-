import matplotlib.pyplot as plt
import pandas as pd
from math import pi
# Set data
df = pd.DataFrame({
    'name': ['Barra de Gramame','Nova Conquista Taquara','Vitória'],
    'Medicina Indigena':  [2, 25, 23,39],
    'Parteiras': [8,7,1,0],
    'Rezadeiras/Benzedoras':  [8,4,6,1],
    'Simbolos de proteção': [13,14,0,6],
     'valorizacao da oralidade e saberes ancestrais':[28,22,10,3],
      'Valorizacao dos sinais da natureza':[43,3,30,3] })
categories=list(df)[1:]
N = len(categories)
# What will be the angle of each axis in the plot? (we divide the plot / number of variable)
angles = [n / float(N) * 2 * pi for n in range(N)]
angles += angles[:1]
# Initialise the spider plot
ax = plt.subplot(111, polar=True)
# If you want the first axis to be on top:
ax.set_theta_offset(pi / 2)
ax.set_theta_direction(-1)
# Draw one axe per variable + add labels labels yet
plt.xticks(angles[:-1], categories)
# Draw ylabels
ax.set_rlabel_position(0)
plt.yticks([10,20,30,40,50], ["10","20","30","40","50"], color="grey", size=7)
plt.ylim(0,50)
# ------- PART 2: Add plots
# Name1
values=df.loc[0].drop('name').values.flatten().tolist()
values += values[:1]
ax.plot(angles, values, linewidth=1, linestyle='solid', label="Barra de Gramame")
ax.fill(angles, values, 'b', alpha=0.1)
# Name2
values=df.loc[1].drop('name').values.flatten().tolist()
values += values[:1]
ax.plot(angles, values, linewidth=1, linestyle='solid', label="Vitória")
ax.fill(angles, values, 'r', alpha=0.1)


values=df.loc[1].drop('name').values.flatten().tolist()
values += values[:1]
ax.plot(angles, values, linewidth=1, linestyle='solid', label="Servero Bernardo")
ax.fill(angles, values, 'r', alpha=0.1)


values=df.loc[1].drop('name').values.flatten().tolist()
values += values[:1]
ax.plot(angles, values, linewidth=1, linestyle='solid', label="Nova Conquista Taquara")
ax.fill(angles, values, 'r', alpha=0.1)

# Add legend
plt.legend(loc='upper right', bbox_to_anchor=(0.1, 0.1))
plt.show()
