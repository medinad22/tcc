create table Cliente (
Cliente_CPF varchar(11) not null,
Cliente_Nome varchar(30),
primary key (Cliente_CPF)
);


create table Cliente_Email(
Cliente_email varchar(30),
Cliente_CPF varchar(30),
foreign key (Cliente_CPF) references Cliente(Cliente_CPF)
);


create table Cliente_tel(
DDD int(30),
tel varchar(9),
tipo varchar(10),
Cliente_CPF varchar(30),
foreign key (Cliente_CPF) references Cliente(Cliente_CPF)
);

create table Profissional(
ID_Profissional INT auto_increment,
Profissional_CPF varchar(11) not null,
Profissional_Nome varchar(30),
Profissional_email varchar(30),
primary key (ID_Profissional)
);

Create table Profissional_tel(
DDD int(30),
tel varchar(9),
tipo varchar(10),
ID_Profissional int,
foreign key (ID_Profissional) references Profissional(ID_Profissional)
);

Create table Local(
ID_Local int auto_increment,
Cep varchar(8),
Tipo_logradouro varchar (10),
Complemento varchar(30),
Bairro varchar(20),
Município varchar(30),
Estado varchar(20),
Logradouro varchar(50),
Numero varchar (10),
Local_Nome varchar (15),
primary key (ID_Local)
);

create table trabalha(
ID_Profissional int,
ID_Local int,
foreign key (ID_Profissional) references Profissional(ID_Profissional),
foreign key (ID_Local) references Local(ID_Local)
);

create table atende_evento(
ID_Evento int auto_increment,
Evento_Tipo varchar (30),
Lotacao int,
Descricao text,
Cliente_CPF varchar(11),
ID_Profissional int,
primary key (ID_Evento),
foreign key (ID_Profissional) references Profissional(ID_Profissional),
foreign key (Cliente_CPF) references Cliente(Cliente_CPF)
);