var database = require("../database/config")

function verCatalogo() {
    var instrucaoSql = `
        select * from vw_catalogo_filmes;
    `;
    return database.executar(instrucaoSql);
}

module.exports = {
    verCatalogo
}