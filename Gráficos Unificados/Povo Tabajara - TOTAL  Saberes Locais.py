import plotly.graph_objects as go

categories = ['Medicina indigena','Parteiras','Rezadeiras/ benzedoras',
              'Simbolos de proteção','Valorização da oralidade e saberes ancestrais','Valorização dos sinais da natureza']

fig = go.Figure()
#EMedicina indigena
fig.add_trace(go.Scatterpolar(
    r=[89, 0, 0, 0,0],
    theta=categories,
    fill='toself',
    name='Aldeia Barra de Gramame ',
    marker=dict(color='yellow')  # Define a cor da linha

))
fig.add_trace(go.Scatterpolar(
     r=[9, 0, 0, 0],
     theta=categories,
     fill='toself',
     name='Aldeia Nova conquista Taquara',
    marker=dict(color='blue'),  # Define a cor da linha

))

fig.add_trace(go.Scatterpolar(
     r=[19, 0, 0,0],
     theta=categories,
     fill='toself',
     name='Aldeia Vitória',
     marker=dict(color='red'),  # Define a cor da linha

))

fig.add_trace(go.Scatterpolar(
     r=[33, 0,0,0],
     theta=categories,
     fill='toself',
     name='Aldeia Servero Bernardo',
     marker=dict(color='Lime')  # Define a cor da linha

))


fig.update_layout(
    polar=dict(
        radialaxis=dict(
            visible=True,
            range=[0, 100]
        )),
    showlegend=False,
    title="Povo Tabajara - Categoria Saberes Locais(292,00%)"
)

# Display the figure
fig.show()
