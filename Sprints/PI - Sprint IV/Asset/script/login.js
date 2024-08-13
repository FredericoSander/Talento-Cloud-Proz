document.addEventListener("DOMContentLoaded", function() {
    
    const form = document.getElementById("loginForm");
    const loginInput = document.getElementById("login");
    const passwordInput = document.getElementById("password");
    const loginButton = document.getElementById("open-btn");

   
    form.addEventListener("submit", function(event) {
       
        event.preventDefault();

        let isValid = true;
      
        loginInput.classList.remove("error");
        passwordInput.classList.remove("error");

        const loginValue = loginInput.value.trim();
        if (loginValue === "" || !loginValue.includes("@") || !loginValue.includes(".com")) {
            isValid = false;
            loginInput.classList.add("error");
            alert("Por favor, insira um login válido!");
        }

        const passwordValue = passwordInput.value.trim();
        if (passwordValue === "") {
            isValid = false;
            passwordInput.classList.add("error");
            alert("Por favor, insira sua senha.");
        } else if (passwordValue.length < 8) {
            isValid = false;
            passwordInput.classList.add("error");
            alert("A senha deve ter pelo menos 8 caracteres.");
        }

        if (isValid) {
            window.location.href = "./Portfólio/portfolio.html";
        } else {
            loginButton.disabled = true; 
        }
    });

    loginInput.addEventListener("input", function() {
        loginButton.disabled = false;
    });

    passwordInput.addEventListener("input", function() {
        loginButton.disabled = false;
    });
});
