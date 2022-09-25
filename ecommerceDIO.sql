-- ecommerce DIO
create database ecommerceDIO;
use ecommerceDIO;

-- tabela cliente
create table cliente(
	idCliente int auto_increment primary key,
    primeiro_nome varchar(20),
    meio_iniciais char(3),
    ultimo_nome varchar(20),
    cpf char(11) not null,
    endereco varchar(50),
    constraint unico_cpf_cliente unique (cpf)
);

-- tabela produto
create table produto(
	idCliente int auto_increment primary key,
    nome varchar(20) not null,
    classificacao_criancas bool default false,
    categoria enum('Livros', 'Vestuário', 'Alimentos') not null,
    avaliacao float default 0,
    tamanho varchar(10),
    constraint unico_cpf_cliente unique (cpf)
);

create table pagamento(
	idCliente int,
    idPagamento int,
    tipo_pagamento enum('Boleto','Cartão','Pix'),
    limite float,
    primary key(idCliente, idPagamento)
);

-- tabela pedido
create table pedido(
	idPedido int auto_increment primary key,
    idPedidoCliente int,
    status_pedido enum('Cancelado','Aprovado','Faturado','Enviado'),
	descricao varchar(255),
    entrega float default 20,
    constraint fk_pedido_cliente foreign key (idPedidoCliente) references cliente(idCliente)
);

-- tabela estoque
create table estoque(
	idProdEstoque int auto_increment primary key,
    localizacao varchar(200),
    quantidade int default 0
);

-- tabela fornecedor
create table fornecedor(
	idFornecedor int auto_increment primary key,
    razao_social varchar(255) not null,
    cnpj char(15) not null,
    contato char(11) not null,
    constraint unico_fornecedor unique (cnpj)
);

-- tabela vendedor
create table vendedor(
	idVendedor int auto_increment primary key,
    razao_social varchar(255) not null,
    nome varchar(255),
    cnpj char(15),
    cpf char(9),
    localizacao varchar(200),
    contato char(11) not null,
    constraint unico_cnpj_vendedor unique (cnpj),
    constraint unico_cpf_vendedor unique (cpf)
);

create table produto_vendedor(
	idPVendedor int,
    idProduto int,
    prod_quantidade int default 0,
    primary key (idPVendedor, idProduto),
    constraint fk_produto_vendedor foreign key (idPVendedor) references vendedor(idVendedor),
    constraint fk_produto_produto foreign key (idProduto) references produto(idProduto)
);

create table produto_pedido(
	idPProduto int,
    idPPedido int,
    ppQuantidade int default 1,
    ppStatus enum('Disponível', 'Sem estoque') default 'Disponível',
    primary key (idPProduto, idPPedido),
    constraint fk_produtopedido_vendedor foreign key (idPProduto) references produto(idProduto),
    constraint fk_produtopedido_produto foreign key (idPPedido) references pedido(idPedido)
);

create table localizacao_estoque(
	idLProduto int,
    idLEstoque int,
    localizacao varchar(255) not null,
    primary key (idLProduto, idLEstoque),
    constraint fk_localestoque_produto foreign key (idLProduto) references produto(idProduto),
    constraint fk_localestoque_estoque foreign key (idLEstoque) references estoque(idProdEstoque)
);

create table produto_fornecedor(
	idPFornecedor int,
    idPFProduto int,
    quantidade int not null,
    primary key (idPFornecedor, idPFProduto),
    constraint fk_pf_fornecedor foreign key (idPFornecedor) references fornecedor(idFornecedor),
    constraint fk_pf_produto foreign key (idPFProduto) references produto(idProduto)
);
