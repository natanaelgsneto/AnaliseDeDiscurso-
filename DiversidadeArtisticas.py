import plotly.graph_objects as go
from matplotlib import pyplot as plt

classes = ['Artesanatos','Cantos','Danças']

fig = go.Figure()
fig.add_trace(go.Scatterpolar(
    r=[1,1,1],
    theta=classes,
    fill='toself',
    name='Diversidade de expressoes culturais artisticas ',
    fillcolor="blue", opacity=0.6, line=dict(color="blue")

))
fig.update_layout(
    polar=dict(
        radialaxis=dict(
            visible=True,
            range=[0, 1]
        )),
    showlegend=True
)

plt.title("\nDiversidade Artísticas")
fig.show()