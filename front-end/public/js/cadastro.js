function validarUsername() {
    let username = ipt_username.value.trim();

    if (username.length < 4 || ipt_username.value == '') {
        msg_username.innerHTML = `Mínimo de 4 caracteres`
        msg_username.className = 'msg-validando'
    } else {
        msg_username.innerHTML = `Nome de usuário válido`
        msg_username.className = 'msg-valida'
    }
}

function validarEmail() {
    let email = ipt_email.value.trim();
    let partes_email = email.split('@')

}