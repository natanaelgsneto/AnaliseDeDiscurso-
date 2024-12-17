# import plotly.graph_objects as go
#
# from Graph import title
#
# categories = ['medicina indigena','Parteiras','Rezadeiras/ benzedoras',
#               'Simbolos de proteção','Valorizacao da oralidade e saberes ancestrais','Valorizacao da oralidade e saberes ancestrais','Valorizacao dos sinais da natureza']
#
# fig = go.Figure()
#
# fig.add_trace(go.Scatterpolar(
#     r=[2, 1, 8, 13, 28,43],
#     theta=categories,
#     fill='toself',
#     name='Aldeia Barra de Gramame'
# ))
# fig.add_trace(go.Scatterpolar(
#     r=[25, 7, 4, 14, 22,3],
#     theta=categories,
#     fill='toself',
#     name='Aldeia Nova conquista Taquara'
# ))
#
# fig.add_trace(go.Scatterpolar(
#     r=[23, 1,6, 0,10,30],
#     theta=categories,
#     fill='toself',
#     name='Aldeia Vitória'
# ))
#
# fig.add_trace(go.Scatterpolar(
#     r=[39, 0, 1,6,3,3],
#     theta=categories,
#     fill='toself',
#     name='Aldeia Servero Bernardo'
# ))
# fig.update_layout(
#     polar=dict(
#         radialaxis=dict(
#             visible=True,
#             range=[0, 50]
#         )),
#     showlegend=True,
#     title="Comparação de Saberes Ancestrais nas Aldeias"
# )
#
# # Display the figure
# fig.show()

import plotly.graph_objects as go

categories = ['Diversidade de rituais(42,65%)','Formas de manifestações espirituais(38,46%)','Fé(18,88)']

# Create a new figure
fig = go.Figure()



fig.add_trace(go.Scatterpolar(
    r=[54, 6,5],
    theta=categories,
    fill='toself',
    name='Aldeia Barra de Gramame',
    marker=dict(color='yellow'),  # Define a cor da linha

))
# Adding traces for each group with the same number of data points in 'r' as there are categories




fig.add_trace(go.Scatterpolar(
    r=[2,40,11],
    theta=categories,
    fill='toself',
    name='Aldeia Vitória',
    marker=dict(color='blue'),  # Define a cor da linha

))



fig.add_trace(go.Scatterpolar(
    r=[2, 7, 4],
    theta=categories,
    fill='toself',
    name='Aldeia Severo Bernardo',
    marker=dict(color='red'),  # Define a cor da linha

))


fig.add_trace(go.Scatterpolar(
    r=[3, 2, 7],
    theta=categories,
    name='Aldeia Nova conquista Taquara',
    fill='toself',
    marker=dict(color='Lime')  # Define a cor da linha

))


# Updating the layout to adjust the radial axis range and make the legend visible
fig.update_layout(
    polar=dict(
        radialaxis=dict(
            visible=True,
            range=[0, 56]
        )),
    showlegend=False,
    title="                         Povo Tabajara - Categoria  Espiritualidade(143%)                                                         "
)

# Display the figure
fig.show()
