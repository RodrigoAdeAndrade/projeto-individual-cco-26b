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
    if ((email.includes('@')) && (!(partes_email[0] == '') && !(partes_email[1] == ''))) {
        msg_email.innerHTML = `Email válido`
        msg_email.className = 'msg-valida'

    } else {
        if (!email.includes('@')) {
            msg_email.innerHTML = `O email deve incluir '@'`
            msg_email.className = 'msg-validando'
        }
        if (partes_email[0] == '' || partes_email[1] == '') {
            msg_email.innerHTML = `Inclua algum caractere antes e depois do '@'`
            msg_email.className = 'msg-validando'
        }
    }
}

function validarSenha() {
    let senha = ipt_senha.value.trim();
    let carac_especial = /[^a-zA-Z0-9]/.test(senha)


    if ((senha.length >= 6 && senha.length <= 20) && carac_especial) {
        msg_senha.innerHTML = `Senha válida`
        msg_senha.className = 'msg-valida'
    } else {
        msg_senha.innerHTML = '';
        msg_senha.className = 'msg-validando';

        if (carac_especial == false) {
            msg_senha.innerHTML += `Inclua ao menos um caractere especial<br>`;
        }

        if (senha.length < 6) {
            msg_senha.innerHTML += `Mínimo: 6 caracteres<br>`;
        }

        if (senha.length > 20) {
            msg_senha.innerHTML += `Máximo: 20 caracteres<br>`;
        }
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

function cadastrarUsuario(event) {
    event.preventDefault()

    let cadastro_valido = true;
    let mensagem = document.getElementById('mensagem_erro');

    if (msg_username.className == 'msg-validando' ||
        msg_email.className == 'msg-validando' ||
        msg_senha.className == 'msg-validando' ||
        msg_conf_senha.className == 'msg-validando'
    ) {
        cadastro_valido = false;
    }

    if (cadastro_valido) {

        let cadastro_usuario = {
            username: ipt_username.value.trim(),
            email: ipt_email.value.trim(),
            senha: ipt_senha.value.trim(),
        }


        fetch("http://localhost:3333/usuarios/cadastrar", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                nomeServer: cadastro_usuario.username,
                emailServer: cadastro_usuario.email,
                senhaServer: cadastro_usuario.senha
            })
        })
            .then(function (resposta) {
                if (resposta.ok) {
                    alert("Cadastro realizado com sucesso! Aguarde um momento...");
                    sessionStorage.EMAIL_USUARIO = cadastro_usuario.email;
                    window.location.href = 'login.html';

                } else {
                    mensagem.textContent = 'Email já cadastrado';
                    mensagem.hidden = false;
                    console.log('ERRO!')
                    throw "Houve um erro ao tentar realizar o cadastro!";
                }
            })
            .catch(function (resposta) {
                console.log(`#ERRO: ${resposta}`);
            });

    } else {
        alert('Cadastro Incompleto!')
    }
}