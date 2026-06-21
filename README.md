# Sistemas Digitais em VHDL

Este repositório reúne implementações desenvolvidas em **VHDL** com o objetivo de praticar e consolidar conceitos fundamentais de **Sistemas Digitais**, abrangendo circuitos combinacionais, circuitos sequenciais e aritmética digital.

O projeto foi desenvolvido como material de estudo e apoio acadêmico, explorando a modelagem de hardware por meio da linguagem VHDL.

---

## Objetivos

- Aplicar conceitos de Sistemas Digitais utilizando VHDL;
- Desenvolver circuitos combinacionais e sequenciais;
- Compreender o funcionamento de registradores, contadores e máquinas de estados;
- Implementar operações aritméticas básicas em hardware;
- Praticar simulação e descrição de circuitos digitais.

---

## Tecnologias Utilizadas

- VHDL
- Intel Quartus Prime
- ModelSim (opcional para simulação)

---

## Estrutura do Projeto

```text
.
├── combinacionais/
├── sequenciais/
├── aritmetica/
└── README.md
```

---

# 1. Circuitos Combinacionais

Implementações de circuitos cuja saída depende apenas das entradas atuais.

## Conteúdo

### 1.1 Portas Lógicas

- AND
- OR
- NOT
- XOR
- NAND
- NOR

### 1.2 Multiplexadores

- MUX 2x1
- MUX 4x1
- MUX 2x1 6 bits

### 1.3 Demultiplexadores

- DEMUX 1x4

### 1.4 Codificadores

- Codificador 4x2
- Codificador com prioridade 4x2 

### 1.5 Decodificadores

- Decodificador 2x4

---

# 2. Circuitos Sequenciais

Implementações que dependem do estado atual e do histórico do sistema.

## Conteúdo

### 2.1 Flip-Flops

- Flip-Flop D

### 2.2 Registradores

- Registrador 6 bits

### 2.3 Registradores de Deslocamento

- Registrador de Deslocamento

### 2.4 Contadores

#### Contador Síncrono

Todos os flip-flops recebem o mesmo sinal de clock.

#### Contador Assíncrono

Os flip-flops recebem o clock de forma encadeada.

### 2.5 Divisor de Frequência

- Divisor de Frequência


---

# 3. Aritmética Digital

Implementações relacionadas a operações matemáticas em hardware.

## Conteúdo

### 3.1 Somadores

- Meio Somador
- Somador Completo
- Somador de 4 bits
- Somador

### 3.2 Subtratores

- Subtrator de 4 bits
- Subtrator de 5 bits

---

# 4. Como Utilizar

## 4.1 Clonar o Repositório

```bash
git clone https://github.com/seu-usuario/sistemas-digitais-vhdl.git
```

## 4.2 Abrir no Quartus

1. Abra o Intel Quartus Prime.
2. Crie um novo projeto.
3. Adicione os arquivos `.vhd`.
4. Compile o projeto.
5. Execute as simulações desejadas.

---

# 5. Conceitos Estudados

Durante o desenvolvimento deste projeto foram praticados os seguintes conceitos:

- Álgebra de Boole;
- Portas Lógicas;
- Multiplexadores e Demultiplexadores;
- Codificadores e Decodificadores;
- Flip-Flops;
- Registradores;
- Contadores Síncronos;
- Contadores Assíncronos;
- Divisores de Frequência;
- Somadores;
- Subtratores.
  
---

# Licença

Este projeto foi desenvolvido para fins educacionais e de aprendizado em Sistemas Digitais e VHDL.
