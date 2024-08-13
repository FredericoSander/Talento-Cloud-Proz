// script.js

document.addEventListener('DOMContentLoaded', function() {
    // Preenche os anos de 2000 até o ano atual no select de ano de início
    let selectAnoInicio = document.getElementById('anoInicio');
    let anoAtual = new Date().getFullYear();
    for (let ano = anoAtual; ano >= 2000; ano--) {
        let option = document.createElement('option');
        option.value = ano;
        option.textContent = ano;
        selectAnoInicio.appendChild(option);
    }

    // Preenche os anos de 2000 até o ano atual no select de ano de fim
    let selectAnoFim = document.getElementById('anoFim');
    for (let ano = anoAtual; ano >= 2000; ano--) {
        let option = document.createElement('option');
        option.value = ano;
        option.textContent = ano;
        selectAnoFim.appendChild(option);
    }
});
