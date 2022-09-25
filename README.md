# Database-DIO
Projetos parte da trilha Database Experience oferecida pela Digital Innovation One.

## Conceitos

### Bancos de Dados Relacionais (SQL)
Structured Query Language é utilizada para executar comandos em Banco de Dados baseado em tabelas.
É por meio dela que criamos databases, tabelas, colunas, indices, garantimos e revogamos privilégios a usuários e consultamos os dados armazenados no banco de dados. SQL é uma linguagem declarativa dividida em conjuntos de comandos.

#### Data Definition Language (DDL)
​Linguagem de Definição de Dados ou DDL são comandos que permitem ao usuário definir as novas tabelas e os elementos que serão associados a elas. Ela é responsável pelos comandos de criação e alteração no banco de dados.
​Os principais comandos DDL são:
CREATE - criar a estrutura dos dados e tabelas.
ALTER - adicionar, excluir ou modificar as colunas de uma tabela existente.
DROP - excluir estrutura de tabelas.

#### Data Manipulation Language (DML)
Linguagem de Manipulação de Dados ou DML são comandos utilizados para a recuperação, inclusão, remoção e modificação de informações em bancos de dados.
​Os principais comandos DML são:
INSERT - inserção de registros no banco de dados.
UPDATE - alteração de registro no banco de dados.
DELETE - excluir registro no banco de dados.

#### Data Control Language (DCL)
Linguagem de Controle de Dados ou DCL são comandos utilizados para controlar o acesso e gerenciar permissões de usuários no banco de dados.​
Os principais comandos DCL são:
GRANT - atribuir privilégios de acesso do usuário a objetos do banco de dados.
REVOKE - revogar privilégios de acesso do usuário a objetos do banco de dados.

#### Transactional Control Language (TCL)
Linguagem de Controle de Transações ou TCL são comandos utilizados para gerenciar as mudanças feitas por instruções DML.
​Os principais comandos TCL são:
COMMIT - salvar uma transação.
ROLLBACK - restaurar o banco de dados ao estado anterior desde o último COMMIT.

#### Data Query Language (DQL)
Linguagem de Consulta de Dados ou DQL utiliza-se do comando SELECT para consulta dos dados.

SELECT * FROM nome_tabela;
​
Limitar o número de linhas extraídas na consulta dos dados:
    SELECT * FROM nome_tabela
    LIMIT 2;
​
Filtrar as colunas na consulta dos dados:
    SELECT coluna_01, coluna_02 FROM nome_tabela;
​
Renomear as colunas na consulta dos dados:
    SELECT coluna_01 AS Coluna01,
       coluna_02 AS Coluna02
    FROM nome_tabela;
​
Ordenar o retorno dos dados na consulta:
    SELECT coluna_01
    FROM nome_tabela
    ORDER BY coluna_01 DESC;
​
Retornar os dados distintos de uma tabela:
    SELECT DISTINCT coluna_01
    FROM nome_tabela;
​
Listar todos os dados que se enquadrem em uma determinada condição:
    SELECT * FROM nome_tabela
    WHERE coluna_01 = 'qualquer_valor_coluna_01';
​
Listar todos os dados que se enquadrem em duas condições:
    SELECT *
    FROM tb_cidades
    WHERE coluna_01 = 'valor_coluna_01' 
    AND coluna_02 = 'valor_coluna_02'; 
### Bancos de Dados Não Relacionais (NoSQL)
Os bancos de dados NoSQL (ou não-relacionais) utilizam um padrão diferente de armazenamento em relação ao SQL.
O grande diferencial dessa tecnologia é a capacidade de escalabilidade para as operações das empresas de uma forma mais simples e econômica do que no banco relacional.
​
O NoSQL também proporciona uma performance melhor para o gerenciamento de dados das organizações, pois não há necessidade de agrupar os dados em um esquema de tabelas para usar as informações.
​
No MongoDB, conjuntos de documentos são chamados de “Coleções” (collections). Seriam os análogos das tabelas, com a diferença fundamental de que seus documentos não precisam respeitar um schema rígido de tabela, como nos bancos relacionais.