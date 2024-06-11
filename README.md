# Behavior Driven Development (BDD)


Este projeto implementa um sistema de aluguel de carros usando o framework Cucumber para Behavior Driven Development (BDD). O objetivo é demonstrar como o BDD pode ser aplicado para desenvolver software que atenda diretamente às necessidades do negócio, com ênfase na comunicação entre stakeholders técnicos e não técnicos.

## Funcionalidades

O sistema permite aos usuários:
- Alugar carros de luxo com antecedência e receber descontos especiais.
- Alugar carros utilitários sem reserva prévia, com disponibilidade imediata a um custo mais elevado.

## Tecnologias Utilizadas

- **Java**: Linguagem de programação usada para desenvolver a aplicação.
- **Cucumber**: Framework de teste que suporta BDD.
- **Maven**: Ferramenta de automação e gerenciamento de projeto.



## Cenários
### Cenário: Reserva antecipada de um carro de luxo com desconto

~~~java
@luxury-car
Scenario: Reserva antecipada de um carro de luxo com desconto
  Given que estou logado no sistema de aluguel de carros
  And quero alugar um carro de luxo
  When eu fizer uma reserva com pelo menos uma semana de antecedência
  Then eu devo receber um desconto especial no valor total da locação
~~~
### Cenário: Aluguel de última hora de um carro utilitário sem reserva prévia

~~~java
@utility-car
Scenario: Aluguel de última hora de um carro utilitário sem reserva prévia
  Given que estou logado no sistema de aluguel de carros
  And preciso de um carro utilitário imediatamente
  When eu solicitar um aluguel sem uma reserva prévia
  Then o sistema deve encontrar rapidamente um veículo disponível
  And eu devo esperar um custo um pouco mais elevado devido à demanda urgente
~~~

### Cenário Outline: Reservando carros com diferentes antecedências
~~~java
@tag2
Scenario Outline: Reservando carros com diferentes antecedências
  Given que estou logado no sistema de aluguel de carros
  And quero alugar um carro do tipo <type>
  When eu reservar o carro <days> dias antes
  Then eu devo ver um <discount> no aluguel, se aplicável

Examples:
  | type    | days | discount          |
  | luxury  | 5    | desconto especial |
  | luxury  | 7    | sem desconto      |
  | utility | 0    | sem desconto      |

~~~


