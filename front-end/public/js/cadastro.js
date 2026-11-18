function validarUsername() {
    let username = ipt_username.value.trim();

    if ((username.length < 4 || username.length > 20) || ipt_username.value == '') {
        msg_username.innerHTML = `Min: 4 caracteres<br>Max: 20 caracteres`
        msg_username.className = 'msg-validando'
    } else if (username.length > 20) {
        msg_username.innerHTML = `Max: 20 caracteres`
        msg_username.className = 'msg-validando'
    }
    else {
        msg_username.innerHTML = `Nome de usuário válido`
        msg_username.className = 'msg-valida'
    }
}

function validarEmail() {
    let email = ipt_email.value.trim();
    let partes_email = email.split('@')
    if ((!email.includes('@')) && (partes_email[0] == '' || partes_email[1] == '')) {
        msg_email.innerHTML = `O email deve incluir '@'<br>Inclua ao menos caractere antes e depois do '@'`
        msg_email.className = 'msg-validando'
    } else if (partes_email[0] == '' || partes_email[1] == '') {
        msg_email.innerHTML = `Inclua algum caractere antes e depois do '@'`
        msg_email.className = 'msg-validando'
    } else if (!email.includes('@')) {
        msg_email.innerHTML = `O email deve incluir '@'`
        msg_email.className = 'msg-validando'
    } else {
        msg_email.innerHTML = `Email válido`
        msg_email.className = 'msg-valida'
    }
}

function validarSenha() {
    let senha = ipt_senha.value.trim();
    let carac_especial = /[^a-zA-Z0-9]/.test(senha)


    if ((senha.length < 6 || senha.length > 20) && carac_especial == false) {
        msg_senha.innerHTML = `Min: 6 caracteres<br>Max: 20 caracteres<br>Inclua ao menos um caractere especial`
        msg_senha.className = 'msg-validando'
    } else if (carac_especial == false) {
        msg_senha.innerHTML = `Inclua ao menos um caractere especial`
        msg_senha.className = 'msg-validando'
    } else if (senha.length < 6) {
        msg_senha.innerHTML = `Mínimo de 6 caracteres`
        msg_senha.className = 'msg-validando'
    } else if (senha.length > 20) {
        msg_senha.innerHTML = `Max: 20 caracteres`
        msg_senha.className = 'msg-validando'
    } else {
        msg_senha.innerHTML = `Senha válida`
        msg_senha.className = 'msg-valida'
    }

}

function confirmarSenha() {
    let senha = ipt_senha.value.trim();
    let conf_senha = ipt_conf_senha.value.trim();

    if (senha != conf_senha || conf_senha == '') {
        msg_conf_senha.innerHTML = `Senhas diferentes`
        msg_conf_senha.className = 'msg-validando'
    } else {
        msg_conf_senha.innerHTML = `Senhas iguais`
        msg_conf_senha.className = 'msg-valida'
    }

}