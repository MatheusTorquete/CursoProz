const arrayPostagens = [
  {
    titulo: "Pop Vegan",
    subtitulo: "Comida vegana para todos!",
    data: "06/07/2022",
    texto: "Restaurante em Consolação com comida por kilo no almoço e rodízio de pizzas à noite, tudo 100% vegano. Vale muito a pena conhecer :)"
  },
  {
    titulo: "Make Hommus. Not War",
    subtitulo: "Só delivery, para curtir em casa!",
    data: "18/08/2022",
    texto: "Neste restaurante não só pode, como é encorajado comer o antepasto como prato principal. Recomendamos os kibes e a kafta bonina."
  },
  {
    titulo: "Churrascada do Mar",
    subtitulo: "Melhor do que estar na praia!",
    data: "30/08/2022",
    texto: "Todos conhecemos e amamos um bom churrasco, mas o que você acha de experimentar um churrasco focado em frutos do mar? Nós gostamos, experimente e nos conte o que você achou!"
  },
  {
    titulo: "Lasanha!",
    subtitulo: "Melhor do que frango!",
    data: "30/08/2022",
    texto: "Todos conhecemos e amamos um bom churrasco, mas o que você acha de experimentar um churrasco focado em frutos do mar? Nós gostamos, experimente e nos conte o que você achou!"
  },
  {
    titulo: "Frango a Parmegiana",
    subtitulo: "Melhor do que qualquer outra coisa!",
    data: "30/08/2022",
    texto: "Todos conhecemos e amamos um bom churrasco, mas o que você acha de experimentar um churrasco focado em frutos do mar? Nós gostamos, experimente e nos conte o que você achou!"
  },
  {
    titulo: "Japolenhsa",
    subtitulo: "Melhor do que estar na praia!",
    data: "30/08/2022",
    texto: "Todos conhecemos e amamos um bom churrasco, mas o que você acha de experimentar um churrasco focado em frutos do mar? Nós gostamos, experimente e nos conte o que você achou!"
  },
]
// percorrer nosso post
for (let index = 0; index < arrayPostagens.length; index++) {
  
        // Criar o elemento html
    const article = document.createElement('article')

    // Popular restantes dos elementos HTML dentro do elemento criado
    article.innerHTML = `
    <h3>${arrayPostagens[index].titulo}</h3>
          <p class="subtitulo">${arrayPostagens[index].subtitulo}</p>
          <div class="data">${arrayPostagens[index].data}</div>
          <p>${arrayPostagens[index].texto}</p>
    `

    // Inserir elemento na DOM
    // primeiro sempre criamos o elemento pai e depois inserimos o que desejamos
    const main = document.querySelector('main')
    main.appendChild(article)


    // // criação de variavel e elemento
    // const article1 = document.createElement('article')
    // // criação dos elementos html
    // article1.innerHTML = `
    // <h3>${arrayPostagens[index].titulo}</h3>
    //       <p class="subtitulo">${arrayPostagens[index].subtitulo}!</p>
    //       <div class="data">${arrayPostagens[index].data}</div>
    //       <p>${arrayPostagens[index].texto}</p>
    // `
    // // inserir elemento
    // main.appendChild(article1)


    // // criacao
    // const article2 = document.createElement('article')
    // // criacao do html
    // article2.innerHTML = `
    // <h3>${arrayPostagens[index].titulo}</h3>
    //       <p class="subtitulo">${arrayPostagens[index].subtitulo}</p>
    //       <div class="data">${arrayPostagens[index].data}</div>
    //       <p>${arrayPostagens[index].texto}</p>
    // `
    // // insercao
    // main.appendChild(article2)
  
}

