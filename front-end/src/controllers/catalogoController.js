var catalogoModel = require("../models/catalogoModel");

function listar(req, res) {

    catalogoModel.verCatalogo()
        .then(
            function (resultadoCatalogo) {
                console.log(`\nResultados encontrados: ${resultadoCatalogo.length}`);
                console.log(`Resultados: ${JSON.stringify(resultadoCatalogo)}`);
                res.json(resultadoCatalogo)
            }
        ).catch(
            function (erro) {
                console.log(erro);
                console.log("\nHouve um erro ao listar filmes! Erro: ", erro.sqlMessage);
                res.status(500).json(erro.sqlMessage);
            }
        );
}

module.exports = {
    listar
}