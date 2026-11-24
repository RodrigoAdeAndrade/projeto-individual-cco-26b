function validarEmail() {
    let email = ipt_email.value.trim()

    if (email == "") {
        msg_email.innerHTML = 'O campo email está vazio'
        msg_email.className = 'msg-validando'
    } else {
        msg_email.innerHTML = ''
    }
}

function validarSenha() {
    let senha = ipt_senha.value.trim()

    if (senha == "") {
        msg_senha.innerHTML = 'O campo senha está vazio'
        msg_senha.className = 'msg-validando'
    } else {
        msg_senha.innerHTML = ''
    }
}

function acessarConta(event) {
    event.preventDefault()

    let login_valido = true;

    let email = ipt_email.value.trim()
    let senha = ipt_senha.value.trim()

    if (email == "" || senha == "") {
        login_valido = false
    }

    if (login_valido) {

        let login_usuario = {
            email: email,
            senha: senha
        }

        fetch("http://localhost:3333/usuarios/autenticar", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                emailServer: login_usuario.email,
                senhaServer: login_usuario.senha
            })
        })

            .then(function (resposta) {
                if (resposta.ok) {
                    msg_login.innerHTML = `Acesso realizado! Aguarde...`;
                    msg_login.className = 'msg-valida'
                    sessionStorage.EMAIL_USUARIO = login_usuario.email;

                    setTimeout(function () {
                        window.location.href = 'catalogo.html';
                    }, 2000);
                        

                } else {
                    msg_login.innerHTML = 'Email ou senha inválidos';
                    msg_login.hidden = false;
                    console.log('ERRO!')
                    throw "Houve um erro ao tentar realizar o login!";
                }
            })
            .catch(function (resposta) {
                console.log(`#ERRO: ${resposta}`);
            });
    }
}