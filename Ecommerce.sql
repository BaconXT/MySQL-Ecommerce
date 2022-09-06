-- !!!Show Databases that exist!!! / !!!Mostrando Bancos de Dados que existem
show databases;

-- !!!Creating Database "Ecommerce"!!! / !!!Criando Banco de Dados "Ecommerce"!!!
create database ecommerce;

-- !!!Use this first before testing!!! / !!!Use isso primeiro antes de testar!!! --
use ecommerce;

-- !!!Table User!!! / !!!Tabela Usuario!!! --
create table Usuario (
  UsuId int primary key auto_increment,
  UsuLogin varchar (19) not null unique,
  UsuSenha varchar (255) not null,
  UsuEmail varchar (29) not null unique,
  UsuCpf varchar (15) not null unique,
  UsuCel varchar (35) not null,
  UsuNome varchar (20) not null
);

-- !!!Describing User!!! / !!!Descrevendo Usuario!!! --
describe Usuario;

						 -- !!!Insert!!! / !!!Inserções!!! --
insert into Usuario(UsuLogin, UsuSenha, UsuEmail, UsuCpf, UsuCel, UsuNome)
values("yuriPacheco", md5("2"), "yuripacritter@gmail.com", "056.500.906-02", "(99) 78235-6921", "Yuri Pacheco");

insert into Usuario(UsuLogin, UsuSenha, UsuEmail, UsuCpf, UsuCel, UsuNome)
values("VictorMaia", md5("2"), "VictorMaia@gmail.com", "136.078.257-18", "(99) 72761-6112", "Victor Maia da Silva");

insert into Usuario(UsuLogin, UsuSenha, UsuEmail, UsuCpf, UsuCel, UsuNome)
values("admin", md5("admin"), "admin@gmail.com", "223.626.854-90", "(101) 78912-1543", "Benio Rittler");

-- !!!Selecting all columns from User!!! / !!!Selecionando todas as colunas de Usuario!!!--
select * from Usuario;

-- !!!Table Product!!! / !!!Tabela Produtos!!!--
create table Produtos(
  ProdId int primary key auto_increment,
  ProdNome varchar (45) not null,
  ProdQuantidade int not null,
  ProdCategoria varchar (255) not null,
  ProdDescricao text (255) not null,
  ProdFornecedor varchar (100) not null,
  ProdDataCad timestamp default current_timestamp,
  ProdPreco decimal (10,2) not null,
  Foto1 varchar (255) null,
  Foto2 varchar(255) null,
  ForId int not null, 
foreign key (ForId) references Fornecedores (ForId)
);

 -- !!!Describing Products!!! / !!!Descrevendo Produtos!!!--
describe Produtos;

-- !!!Showing tables that exist!!! / !!!Mostrando tabelas que existem!!!--
show tables;

-- !!!Selecting all columns from Products!!! / !!!Selecionando todas as colunas dos Produtos!!!--
select * from Produtos;
                                                                  -- !!!Insert!!! / !!!Inserções!!! --
insert into Produtos (ProdNome, ProdQuantidade, ProdCategoria, ProdDescricao, ProdFornecedor, ProdPreco, Foto1, Foto2, ForId) 
values ("DoomSpire BrickBattle", 12, "Games", "Batalhe entre 4 torres, defenda sua base destruindo 3 bases, jogue com amigos, batalhe, se defenda e destrua as bases inimigas.", "Vuse", 5.50, "https://tr.rbxcdn.com/a4914e38525ec41c221fda9f86d4b1ab/768/432/Image/Png", "https://tr.rbxcdn.com/832616091f8c288145b37ddc7aa0a98b/768/432/Image/Png", 1);

insert into Produtos(ProdNome, ProdQuantidade, ProdCategoria, ProdDescricao, ProdFornecedor, ProdPreco, Foto1, Foto2, ForId)
values ("Terraria", 78, "Games", "Terraria é um jogo eletrônico RPG de ação-aventura independente produzido pela desenvolvedora de jogos Re-Logic. Possui como características a exploração, artesanato, construção de estruturas e combate a monstros perigosos em um mundo 2D gerado proceduralmente.", "Vuse", 5.2 , "https://fs-prod-cdn.nintendo-europe.com/media/images/10_share_images/games_15/nintendo_switch_download_software_1/H2x1_NSwitchDS_Terraria_image1600w.jpg", "http://assets1.ignimgs.com/2017/04/05/terrariaotherworld-ign-1491413900442.jpg", 1);

insert into Produtos(ProdNome, ProdQuantidade, ProdCategoria, ProdDescricao, ProdFornecedor, ProdPreco, Foto1, Foto2, ForId)
values ("Terra", 78, "Games", "Terra é um jogo eletrônico RPG de ação-aventura independente produzido pela desenvolvedora de jogos Re-Logic. Possui como características a exploração, artesanato, construção de estruturas e combate a monstros perigosos em um mundo 2D gerado proceduralmente.", "Evade", 5.2 , "https://cdn.pixabay.com/photo/2016/10/13/00/22/illustration-1736462_960_720.png", "https://upload.wikimedia.org/wikipedia/commons/d/d2/Liquidnitrogen.jpg", 2);

insert into Produtos(ProdNome, ProdQuantidade, ProdCategoria, ProdDescricao, ProdFornecedor, ProdPreco, Foto1, Foto2, ForId)
values ("Gremio", 78, "Games", "Gremio é um jogo eletrônico RPG de ação-aventura independente produzido pela desenvolvedora de jogos Re-Logic. Possui como características a exploração, artesanato, construção de estruturas e combate a monstros perigosos em um mundo 2D gerado proceduralmente.", "Pedroja", 5.2 , "https://i.redd.it/e8m12y6wyvk81.jpg", "https://pbs.twimg.com/profile_images/1487977392543084545/qKaLDWZh_400x400.jpg", 3);

-- !!!Table Suppliers!!! / !!!Tabela Fornecedores!!! --
create table Fornecedores (
ForId int primary key auto_increment,
ForCnpj varchar(18) not null unique,
ForRazao varchar(100) not null,
ForFantasia varchar(100) not null,
ForFone varchar(25) not null,
ForCep varchar(10) not null,
ForEndereco varchar(67) not null,
ForNumero varchar(9) not null,
ForBairro varchar(35) not null,
ForCidade varchar(40) not null,
ForUF char(2) not null
);
 -- !!!Describing Suppliers!!! / !!!Descrevendo Forneceores!!!--
describe Fornecedores;

                                                 -- !!! Insert !!! / !!! Inserções !!! --
insert into Fornecedores(ForCnpj, ForRazao, ForFantasia, ForFone, ForCep, ForEndereco, ForNumero, ForBairro, ForCidade, ForUF)
values ("99152736000133", "Yuri Pacheco", "Vuse",  "82233-7277", "03728000", "Rua São José do Campestre", "68", "Jardim Danfer", "São Paulo", "SP");

insert into Fornecedores(ForCnpj, ForRazao, ForFantasia, ForFone, ForCep, ForEndereco, ForNumero, ForBairro, ForCidade, ForUF)
values ("91629500815537", "Victor Maia", "Evade",  "92721-7412", "65919370", "Avenida Sábias das Laranjeiras", "31", "Santo Inês", "Maranhão", "MA");

insert into Fornecedores(ForCnpj, ForRazao, ForFantasia, ForFone, ForCep, ForEndereco, ForNumero, ForBairro, ForCidade, ForUF)
values ("91629100815537", "Pedro Rocha", "Pedroja",  "92021-7412", "65054225", "Avenida Contorno Leste Oeste", "30", "Cohatrac II", "São Luís", "MA");

                                                                -- !!!Select!!! --
select * from Fornecedores;
select sum(ProdQuantidade * ProdPreco) as total from Produtos where ForId =1;
select ProdId as Codigo, ProdNome as Nome, ProdQuantidade as Quantidade, ProdCategoria as Categoria, ProdDescricao as Descricao, ProdDataCad as Data_De_Cadastro, ProdPreco as Preco from Produtos;

-- !!!Tabela Clientes!!! / !!!Table Clients!!!--
create table Clientes(
CliId int primary key auto_increment,
CliNome varchar(105) not null,
CliFone varchar(15) not null,
CliCpf varchar(18) not null unique,
CliEmail varchar(75),
Marketing char(3) not null,
CliCep varchar(10),
CliEndereco varchar(67),
CliBairro varchar(34),
CliNumero varchar(10),
CliComplemento varchar(10),
CliCidade varchar(100),
CliUF char(2)
);

-- !!!Describing Clients!!! / !!!Descrevendo Clientes!!!--
describe Clientes;

                                                 -- !!!Inserções!!! /  !!!Insert!!! --
insert into Clientes(CliNome, CliFone, CliCpf, Marketing)
value("David Silva", "99726737272", "37739846411", "não");

insert into Clientes(CliNome, CliFone, CliCpf, CliEmail, Marketing, CliCep, CliEndereco, CliBairro, CliNumero, CliCidade, CliUF)
values ("Pedro Pereira da Silva Machado", "99826477899", "39861245622", "epaacontrucoes@gmail.com", "sim", "69908550", "Travessa Morro", "Alegria", "9", "Rio Branco", "AC");

                 -- !!!Updating Client 2!!! --
update Clientes set CliFone = '11972315819' where CliId=2;

                        -- !!!Selecting!!! / !!!Selecionando!!!--
select * from Clientes;
select CliNome, CliFone as contato, CliEmail from Clientes;
select CliNome, CliFone as contato, CliEmail from Clientes where Marketing="sim";
select CliNome, CliFone as contato, CliEmail from Clientes where Marketing="não";

 -- !!!Table Requests!!! / !!!Tabela Pedidos!!! --
create table Pedidos (
PedId int primary key auto_increment,
DataPed timestamp default current_timestamp,
PedTotal decimal(10,2),
CliId int not null,
foreign key (CliId) references Clientes(CliId)
);

       -- !!!Inserções!!! / !!!Insert!!! --
insert into Pedidos (CliId) values(1);

insert into Pedidos (CliId) values(2);

        -- !!!Selecionando Pedidos!!! / !!!Selecting Requests!!! --
select * from Pedidos where PedId = 1;

select * from Pedidos where PedId = 2;

          -- !!!Selecting all columns from Requests!!! / !!!Selecionando todas as colunas de Pedidos!!!--
select * from Pedidos;

               -- !!!Foreign Key and Primary Key!!! / !!!Chave Estrageira e Chave Primaria!!!--
select * from Pedidos inner join Clientes on Pedidos.CliId = Clientes.CliId;

-- !!! Using date format for Brazil(day, month and last as year) and USA(month, day and last as year) !!! --
-- !!! Usando formato de data para o Brasil(dia, mês e por ultimo, ano) e EUA(mês, dia e por ultimo, ano) !!! --
select Pedidos.PedId, 
date_format(Pedidos.DataPed, '%d%m%Y - %H:%i') as DataPed, 
Clientes.CliNome as Cliente, 
Clientes.CliFone as Contato
from Pedidos inner join Clientes
on Pedidos.CliId = Clientes.CliId;

 -- !!! Table Cart !!! / !!! Tabela Carrinho !!! --
create table carrinho (
PedId int not null,
ProdId int not null,
quantidade int not null,
foreign key(PedId) references Pedidos(PedId),
foreign key(ProdId) references Produtos(ProdId)
);
-- !!! Discribing Cart !!! / !!! Descrevendo Carrinho !!! --
describe carrinho;

-- !!! Inserting into Cart Request(Id 2 and  Id 1), Product(Id 2 and Id 6) and for last how many the Client want !!! --
-- !!! Inserindo em Carrinho Pedido(Id 2 e Id 1), Produto(Id 2 e Id 6) e por ultimo a quantidade que o Cliente ira querer !!! --
insert into carrinho values (2,2,1);
insert into carrinho values (1,6,2);
