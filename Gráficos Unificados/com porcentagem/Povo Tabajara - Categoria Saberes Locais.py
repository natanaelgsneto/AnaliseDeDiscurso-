import plotly.graph_objects as go

categories = ['Medicina indigena(30,47%)','Parteiras(3,08%)','Rezadeiras/ benzedoras(6,50%)',
              'Simbolos de proteção(11,30%)','Valorização da oralidade e saberes ancestrais(21,57%)','Valorização dos sinais da natureza(27,05%)']

fig = go.Figure()

fig.add_trace(go.Scatterpolar(
    r=[2, 1, 8, 13, 28,43],
    theta=categories,
    fill='toself',
    name='Aldeia Barra de Gramame ',
    marker=dict(color='yellow')  # Define a cor da linha

))
fig.add_trace(go.Scatterpolar(
     r=[25, 7, 4, 14, 22,3],
     theta=categories,
     fill='toself',
     name='Aldeia Nova conquista Taquara',
    marker=dict(color='blue'),  # Define a cor da linha

))

fig.add_trace(go.Scatterpolar(
     r=[23, 1,6, 0,10,30],
     theta=categories,
     fill='toself',
     name='Aldeia Vitória',
     marker=dict(color='red'),  # Define a cor da linha

))

fig.add_trace(go.Scatterpolar(
     r=[39, 0, 1,6,3,3],
     theta=categories,
     fill='toself',
     name='Aldeia Servero Bernardo',
     marker=dict(color='Lime')  # Define a cor da linha

))
fig.update_layout(
    polar=dict(
        radialaxis=dict(
            visible=True,
            range=[0, 50]
        )),
    showlegend=False,
    title="Povo Tabajara - Categoria Saberes Locais(292,00%)"
)

# Display the figure
fig.show()
