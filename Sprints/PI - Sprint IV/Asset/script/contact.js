document.addEventListener("DOMContentLoaded", function() {
    
    const form = document.querySelector("form");
    const nameInput = document.getElementById("exampleInputName");
    const emailInput = document.getElementById("exampleInputEmail");
    const phoneInput = document.getElementById("exampleInputEnquiry");
    const mensagemInput = document.getElementById("mensagem")
    const sendButton = document.getElementById("send-btn");

   
    sendButton.addEventListener("click", function(event) {
        
        event.preventDefault();

        let isValid = true;

        
        nameInput.classList.remove("error");
        emailInput.classList.remove("error");
        phoneInput.classList.remove("error");

        
        if (nameInput.value.trim() === "") {
            isValid = false;
            nameInput.classList.add("error");
            alert("Por favor, insira seu nome.");
        }

        
        const emailValue = emailInput.value.trim();
        if (emailValue === "" || !emailValue.includes("@")) {
            isValid = false;
            emailInput.classList.add("error");
            alert("Por favor, insira um e-mail válido com '@'.");
        }

        const phoneValue = phoneInput.value.trim();
        const phonePattern = /^[0-9]{11}$/;
        if (phoneValue === "" || !phonePattern.test(phoneValue)) {
            isValid = false;
            phoneInput.classList.add("error");
            alert("Por favor, insira um telefone válido com 11 dígitos numéricos.");
        }

        
        if (isValid) {
            
            alert("Sua mensagem foi enviada com sucesso!");
            nameInput.value = "";
            emailInput.value = "";
            phoneInput.value = "";
            mensagemInput.value = "";
             
        } else {
            sendButton.disabled = true; 
        }
    });

   
    nameInput.addEventListener("input", function() {
        sendButton.disabled = false;
    });

    emailInput.addEventListener("input", function() {
        sendButton.disabled = false;
    });

    phoneInput.addEventListener("input", function() {
        sendButton.disabled = false;
    });
});










