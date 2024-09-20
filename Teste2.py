import plotly.graph_objects as go

categories = ['Artesanatos','Danças','chemical stability',
              'thermal stability', 'device integration']

categories2 = ['A','B','C',
              'D', 'E']

categories3 = ['Artesanatos1','Danças2','chemical stability3',
              'thermal stability4', 'device integration5']
fig = go.Figure()

fig.add_trace(go.Scatterpolar(
      r=[23,14,20,30, 40],
      theta=categories,
      fill='toself',
      name='Artesanatos'
))
fig.add_trace(go.Scatterpolar(
      r=[10,10,30, 0,0],
      theta=categories3,
      fill='toself',
      name='dancas'
))

fig.update_layout(
  polar=dict(
    radialaxis=dict(
      visible=True,
      range=[0, 50]
    )),
  showlegend=True
)

fig.show()