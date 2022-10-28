
create database hospital;
use hospital;
create table paciente(
paciente_id int(11) auto_increment primary key,
paciente_nome varchar(240) not null,
paciente_dataDeNascimento date not null,
paciente_RG int(11) not null,
paciente_telefone int(11) not null,
paciente_email varchar(240) not null,
paciente_endereço varchar(240) not null
);
create table convenio(
convenio_nome varchar(240) not null,
convenio_CNPJ int(11) not null,
convenio_TDC varchar(240) not null
);
create table consulta(
consulta_hora int(50) not null,
consulta_data date not null,
consulta_medico varchar(240) not null,
consulta_valor varchar(240) not null
);
create table médico(
medico_id int auto_increment primary key,
medico_tipo varchar(240) not null
);
create table enfermeiro(
enfermeiro_id int(11) auto_increment primary key,
enfermeiro_nome varchar(240) not null,
enfermeiro_cpf int(11) not null,
enfermeiro_cre int(11) not null
);
create table internacao (
internacao_id int(11) auto_increment not null primary key,
internacao_dataEntrada date not null,
internacao_dataPrev date not null,
internacao_dataAlta date not null
);
create table quarto(
quarto_id int(11) auto_increment not null,
quarto_tipo varchar(240) not null,
quarto_numero int(3) not null
);
create table tipo_quarto(
tipo_id int(11) auto_increment not null,
tipo_valor int(11) not null,
tipo_descricao varchar(240) not null
);
