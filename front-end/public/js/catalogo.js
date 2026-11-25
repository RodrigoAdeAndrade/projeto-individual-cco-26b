function listarFilmes() {

    fetch("http://localhost:3333/filmes/listar", {
        method: "GET",
    })

        .then(function (resultadoCatalogo) {
            return resultadoCatalogo.json()
        })

        .then(function (resultadoCatalogo){
            console.log(resultadoCatalogo)

            for (let i = 0; i < resultadoCatalogo.length; i++) {
                let titulo = resultadoCatalogo[i].Filme;
                let genero = resultadoCatalogo[i].Gênero;
                let ano_lancamento = resultadoCatalogo[i]["Ano de lançamento"]
                let caminho = resultadoCatalogo[i].caminho

                let exibicao = `<div class="card-filme">
                <img class="poster" src="${caminho}">
                <div class="info">
                    <span>${titulo}</span>
                    <button data-curtido="false">
                        <img src="../img/heart.png">
                    </button>
                </div>
                <div class="detalhes">
                    <span>${genero}</span>
                    <span>${ano_lancamento}</span>
                </div>
            </div>`

            div_catalogo.innerHTML += exibicao
            }
        })

        .catch(function (resultadoCatalogo) {
            console.log(`#ERRO: ${resultadoCatalogo}`);
        });
}
listarFilmes();