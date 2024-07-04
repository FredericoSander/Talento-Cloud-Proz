## Projeto - Desenvolvimento 1

Este projeto simula a configuração de uma rede de computadores para comunicação entre membros de uma equipe de produção que se encontram espalhados em um teatro. Para a construção do projeto foi utilizado o Cisco Packet Tracer para criar uma topologia de rede em estrela que permitisse a comunicação entre a equipe.

## Orientações
    1. Definir o cenário
        - Imagine que cada membro da equipe possui um computador que precisa de uma conexão de rede para se comunicar com os outros membros da produção.
    2. Montagem da topologia
        - Crie uma topologia no Cisco Packet Tracer;
        - Conecte quatro computadores a um switch utilizando uma porta para cada computador em formato estrela, onde o switch fica no centro e os computadores ficam ao redor;
    3. Conecção dos dispositivos e configuração IP
        - Crie um senso de identidade para cada computador, atribuído aos mesmos um nome e um endereço IP;
        - Configure os endereços IP para as interfaces dos computadores e do switch de acordo com a sub-rede.
    4. Realização do teste de comunicação
        - Realize o teste de comunicação efetuando um ping de um entre os computadores da equipe.

## Projeto
Utilizando o software Cisco Packet Tracer foi criada uma topologia de rede estrela, possibilitando a comunicação de todos o membros da equipe conforme imagem abaixo.
     
<div aling="center">
 <img src="https://github.com/Sanderfn/Talento-Cloud-Proz/blob/main/Redes%20e%20Linux/Desenvolvimento%201/Imagens/Topologia%20de%20rede.png">
</div>

Na construção da topologia foram utilizados 4 computadores, 1 switch de 24 portas e um roteador, com as configurações descriminadas a seguir.
|Equipamento |Nome  | IPV4  |Subnet|
|------------|---------------|----------------|------|
| Router-PT| Roteador 1 | 192.168.1.1 |255.255.255.0 |
| 2960-24TT| Switch 1 | - | - |
| PC-PT | Computador 1 | 192.168.1.2 | 255.255.255.0 |
| PC-PT | Computador 2 | 192.168.1.3 | 255.255.255.0 |
| PC-PT | Computador 3 | 192.168.1.4 | 255.255.255.0 |
| PC-PT | Computador 4 | 192.168.1.5 | 255.255.255.0 |

Após a construção da topologia foi realizado o teste de comunicação entre o roteador e os computadores.

### Teste de comunicação do computador 1

<div aling="center">
 <img src="https://github.com/Sanderfn/Talento-Cloud-Proz/blob/main/Redes%20e%20Linux/Desenvolvimento%201/Imagens/Computador%201.png">
</div>

### Teste de comunicação do computador 2

<div aling="center">
 <img src="https://github.com/Sanderfn/Talento-Cloud-Proz/blob/main/Redes%20e%20Linux/Desenvolvimento%201/Imagens/Computador%202.png">
</div>

### Teste de comunicação do computador 3

<div aling="center">
 <img src="https://github.com/Sanderfn/Talento-Cloud-Proz/blob/main/Redes%20e%20Linux/Desenvolvimento%201/Imagens/Computador%203.png">
</div>

### Teste de comunicação do computador 4

<div aling="center">
 <img src="https://github.com/Sanderfn/Talento-Cloud-Proz/blob/main/Redes%20e%20Linux/Desenvolvimento%201/Imagens/Computador%204.png">
</div>

### Teste de comunicação entre computadores

Concluído os teste de comunicação entre os computadores e o roteador, foi efetuado o teste de comunicação entre os computadores por meio do envio de um pacote PDU.

- Imagem PDU List Window
<div aling="center">
 <img src="https://github.com/Sanderfn/Talento-Cloud-Proz/blob/main/Redes%20e%20Linux/Desenvolvimento%201/Imagens/PDU%20List%20Window.png">
</div>

- Imagem Create complex PDU

<div aling="center">
 <img src="https://github.com/Sanderfn/Talento-Cloud-Proz/blob/main/Redes%20e%20Linux/Desenvolvimento%201/Imagens/Create%20Complex%20PDU.png">
</div>

## Autor

- [Frederico Sander](https://github.com/FredericoSander)
