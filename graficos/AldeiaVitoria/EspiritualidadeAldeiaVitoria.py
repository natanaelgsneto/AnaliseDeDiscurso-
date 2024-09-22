import matplotlib.pyplot as plt
import pandas as pd
from math import pi
# Set data
df = pd.DataFrame({
'name': ['John'],
'Formas de manifestacões espirituais(75,5%)':  [40],
'                                                             Diversidade de rituais(3,8%)                    ': [2],
'Fé(20,8%)          ':[11]})
#testes
categories=list(df)[1:]
N = len(categories)
# What will be the anglof each axis in the plot? (we divide the plot / number of variable)
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
plt.ylim(0,52)
# ------- PART 2: Add plots
# Name1
values=df.loc[0].drop('name').values.flatten().tolist()
values += values[:1]
ax.plot(angles, values, linewidth=1, linestyle='solid', label="Espiritualidade")
ax.fill(angles, values, 'b', alpha=0.1)
# Name2
plt.title("Aldeia Vitória\n")

plt.legend(loc='upper right', bbox_to_anchor=(0.1, 0.1))
plt.show()