# Desafio Insight - To Do Tasks
![GitHub repo size](https://img.shields.io/github/repo-size/diegoshakan/Desafio_Insight?style=plastic)
![GitHub language count](https://img.shields.io/github/languages/count/diegoshakan/Desafio_Insight?style=plastic)
![GitHub top language](https://img.shields.io/github/languages/top/diegoshakan/Desafio_Insight?style=plastic)


App de criação de Tarefas para o Desafio Insight, o qual passei =D

Está hospedado aqui -> [Desafio Insight](http://todo-insight.herokuapp.com/)

## Versão Ruby, Rails
* Ruby 2.5.1;
* Rails 5.2.2.

## Gems
* Devise;
* PG (Postgresql): '>= 0.18', '< 2.0';
* rspec-rails: '~> 3.0'

## Descrição
O sistema permite criar, editar e remover tarefas do usuário que estiver autenticado;

Utilizando a gem 'devise', para registro e autenticação de usuário, é possível você se cadastrar para ter acesso a sua dashboard de tarefas, em que você poderá adicionar, editar e remover suas tarefas.

## Regras de Negócio
* As tarefas devem conter obrigatoriamente um título, com no mínimo 5 caracteres e a data não pode ser anterior a atual;
* As tarefas contém validadores referentes ao tamanho do título (não sendo menor que 5 caracteres), ou seja, incluíndo a obrigatoriedade de título.
* Você poderá verificar essa alteração em: todo/app/models/tarefa.rb na classe: "class DatetimeValidator".
* Também encontrará o relacionamento da tarefa com o usuário criado pelo 'devise'.

## Teste
* Testes realizados no modelo BDD com o 'rspec'. Porém, incompletos =/
