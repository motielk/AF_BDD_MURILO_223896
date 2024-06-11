#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@car-rental
Feature: Serviço de Aluguel de Carros
  Como cliente, quero alugar carros de luxo e utilitários para ter um veículo adequado disponível quando necessário

  @luxury-car
  Scenario: Reserva antecipada de um carro de luxo com desconto
    Given que estou logado no sistema de aluguel de carros
    And quero alugar um carro de luxo
    When eu fizer uma reserva com pelo menos uma semana de antecedência
    Then eu devo receber um desconto especial no valor total da locação

  @utility-car
  Scenario: Reserva antecipada de um carro de luxo com desconto
    Given que estou logado no sistema de aluguel de carros
    And preciso de um carro utilitário imediatamente
    When eu solicitar um aluguel sem uma reserva prévia
    Then o sistema deve encontrar rapidamente um veículo disponível
    And eu devo esperar um custo um pouco mais elevado devido à demanda urgente
    
  @tag2
  Scenario Outline: Reservando carros com diferentes antecedências
  	Given que estou logado no sistema de aluguel de carros
  	And quero alugar um carro do tipo <type>
  	When eu reservar o carro <days> dias antes
  	Then eu devo ver um <discount> no aluguel, se aplicável

    Examples: 
      | type    | days  | discount          |
      | luxury  |     5 | desconto especial |
      | luxury  |     7 | sem desconto      |
      | utility |     0 | sem desconto      |
      
