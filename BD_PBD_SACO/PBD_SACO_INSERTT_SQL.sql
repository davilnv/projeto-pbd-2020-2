-- *********************************************
-- * SQL MySQL - INSERTS          
-- *--------------------------------------------           
-- * Datate: 11/11/2021 01:43:00 
-- * Schema: PBD_SACO
-- * Criador: Davi de Lima das Neves
-- * E-mail: davilima871@gmail.com
-- ********************************************* 

#INSERTS CLIENTE
#________________

INSERT INTO CLIENTE
(`NOME`,
`CPFCNPJ`,
`RG`,
`TELEFONE`,
`CELULAR`,
`CODENDERECO`,
`TIPOCLIENTE`)
VALUES
("Davi de Lima das Neves", 60197669000, 348369025, 8192332163, 81992332163, 1, "ESPECIAL"),
("Mariana de Carvalho Nunes", 65191419090, 104526725, 8796230399, 87996230399, 1, "ESPECIAL"),
("Maria da Fonseca Souza", 66863480077, 294003277, 8199544687, 81999544687, 3, "FREGUES"),
('Isaac Samuel Assis',54042619606,288627143, 38793754,999472299, 5, "MAUPAGADOR"),
('Luís Erick Monteiro',14261490340,445235299,28266993,989907121, 9, 'FREGUES'),
('Vitor Cláudio Assunção',46736818001,242069745, 35241306,991776219, 7, 'FREGUES'),
('Manoel Iago Julio Pereira',61868631826,238434229, 25551914,984637292, 8, 'FREGUES'),
('Marcelo Enrico Assis',17144517554,390515255, 26325320,994077084, 11, 'FREGUES'),
('Carlos Noah Leonardo da Cunha',83824694425,297288106, 25816372,983761514, 3,'FREGUES'),
('Lorenzo Thiago Nelson Santos',80518223310,419963844, 39787452,996377175, 12,'ESPECIAL'),
('Benedito Nathan da Silva',93456228023,412515921, 28435012,985569600, 13,'FREGUES'),
('Henry Heitor Davi Souza',14870567539,358615021, 39268119,999326138, 16,'MAUPAGADOR'),
('Marcos Thiago Juan Castro',23326687052,377855856, 36074923,987872585, 17,'DEVEDOR');

#INSERTS EMPRESA
#________________

INSERT INTO EMPRESA
(`CNPJ`,
`RAZAOSOCIAL`,
`CODENDERECO`,
`LOGOEMPRESA`)
VALUES
(42132091000169,
"AUTO MECÂNICA LTDA",
18,
"https://www.sennaautomecanica.com.br/img/logo.png");

#INSERTS ENDERECOS
#________________

INSERT INTO ENDERECO
(`RUA`,
`NUMERO`,
`BAIRRO`,
`CIDADE`,
`ESTADO`,
`CEP`,
`LATITUDE`,
`LONGITUDE`)
VALUES
("João Batista do Nascimento", 17, "Bom Jesus", "Serra Talhada", "PE", 56906330, -7.989216004764856, -38.30926450092552),
("Antônio Nunes de Souza", 60, "Cagep", "Serra Talhada", "PE", 56909640, -7.977551024902063, -38.293145677910346),
("Maria Luiza Kehrle Murato", 197, "AABB", "Serra Talhada", "PE", 56912194, -7.9957017277113795, -38.28535682224053),
("Maria da Glória Nogueira", 177, "Várzea", "Serra Talhada", "PE", 56906530, -7.998768552499459, -38.29579456771823),
("Deputado Afrânio Ribeiro de Godoy", 1321, "Nossa Senhora da Penha", "Serra Talhada", "PE", 56903390, -7.991140958269056, -38.29451134429352),
("Irnério Inácio", 28, "Nossa Senhora da Penha", "Serra Talhada", "PE", 56903902, -7.992728407795821, -38.29947976441793),
("Antônio Terto", 240, "Nossa Senhora da Penha", "Serra Talhada", "PE", 56912390, -7.990114680462657, -38.292329735582065),
("Travessa João de Souza Santos", 111, "Tancredo Neves", "Serra Talhada", "PE", 56909225, -7.983083553060002, -38.27776395092552),
("Avenida Antônio Romão de Farias", 355, "Bom Jesus", "Serra Talhada", "PE", 56906170, -7.984509424067571, -38.30687997420638),
("Doutor Sérgio Magalhães", 718, "Centro", "Serra Talhada", "PE", 56903910, -7.991452405696267, -38.300892264417925),
("Praça Manoel Pereira Lins", 887, "São Cristovão", "Serra Talhada", "PE", 56903590, -7.988894721421762, -38.292136107936535),
("Francisco Porfiro", 1375, "Caxixola", "Serra Talhada", "PE", 56915050,-8.000287686560705, -38.305291032958216),
("Inocêncio Gomes de Andrade", 839, "Nossa Senhora da Penha", "Serra Talhada", "PE", 56903580, -7.988955255213752, -38.294543747337485),
("Manoel Rodrigues de Carvalho", 341, "Várzea", "Serra Talhada", "PE", 56912300, -7.997902628061268, -38.28627694087538),
("Joaquim Alves de Magalhães", 1530, "AABB", "Serra Talhada", "PE", 56912150, -7.987900730015812, -38.287629279761376),
("Coronel Cornélio Soares", 474, "Nossa Senhora da Penha", "Serra Talhada", "PE", 56903970, -7.992164732124561, -38.301021850925515),
("Cap. Antônio Inácio de Medeiros", 1098, "Bom Jesus", "Serra Talhada", "PE", 56906340, -7.9886019449408385, -38.31024111226861),
("Raimundo Airton Rodrigues Santos", 24, "COHAB", "Serra Talhada", "PE", 56909510, -7.974703773343928, -38.28440060674621),
("Professora Maria Luisa Duarte de Sá", 6, "Vila Bela", "Serra Talhada", "PE", 56907050, -7.996949080770411, -38.32364589422711),
("Apolinário de Souza Moreno", 99, "Bomba", "Serra Talhada", "PE", 56909690, -7.9808997661985535, -38.2951554664198),
("Antônio de Melo Lima", 953, "Nossa Senhora da Conceição", "Serra Talhada", "PE", 56903260, -7.986287644684922, -38.28861523005966),
("Doutor Ademar Xavier", 1018, "Nossa Senhora da Conceição", "Serra Talhada", "PE", 56912510, -7.986423632312047, -38.28779300552242);

#INSERTS FUNCIONARIOS
#________________

INSERT INTO FUNCIONARIO
(`NOME`,
`CPFCNPJ`,
`RG`,
`TELEFONE`,
`DATAADMISSAO`,
`SALARIO`,
`ESPECIALIDADE`,
`FOTO`)
VALUES
(
	"Luís Erick Monteiro",
	14261490340,
	445235299,
	28266993,
	STR_TO_DATE("2014/05/31", "%Y/%m/%d"),
	1100,
	"MECANICO",
	"https://i1.wp.com/empregoses.com.br/wp-content/uploads/2021/03/aa-45.png?fit=500%2C265&ssl=1"
),
(
	"Marcelo Enrico Assis",
	17144517554,
	390515255,
	26325320,
	STR_TO_DATE("2020/03/03", "%Y/%m/%d"),
	1100,
	"MECANICO",
	"http://www.emasterelevadores.com.br/wp-content/uploads/2016/05/Ergonomia_na_oficina_mec%C3%A2nica.jpg.jpeg"
),
(
	"Lorenzo Thiago Nelson Santos",
	80518223310,
	390515255,
	39787452,
	STR_TO_DATE("2013/01/10", "%Y/%m/%d"),
	1700,
	"SUPERVISOR DE MECANICO",
	"https://i0.wp.com/blog.mundomidia.com/wp-content/uploads/2017/08/oficina-mecanica-mecanico.jpg?fit=800%2C600&ssl=1"
),
(
	"Marcelo da Fonseca Souza",
	89100047031,
	162565422,
	8739964793,
	STR_TO_DATE("2013/01/10", "%Y/%m/%d"),
	3000,
	"CHEFE DE OFICINA",
	"https://www.espogama.pt/wp-content/uploads/2017/11/oficinas-auto-1.jpg"
),
(
	"Maria Luciana Pereira",
	93225451436,
	173176884,
	8739940683,
	STR_TO_DATE("2020/05/13", "%Y/%m/%d"),
	1300,
	"ADMINISTRAÇÃO",
	"https://img.freepik.com/fotos-gratis/vista-superior-de-uma-funcionaria-de-escritorio-confiante-sentada-em-sua-mesa-e-posando-para-a-camera_140725-106270.jpg?size=626&ext=jpg"
),
(
	"José Claudio da Silva",
	66901237405,
	485471243,
	8725517942,
	STR_TO_DATE("2020/05/14", "%Y/%m/%d"),
	1300,
	"FATURAMENTO",
	"https://3.bp.blogspot.com/-k3m-9Cj-0JM/WyrIdDJBvJI/AAAAAAAALNQ/rHQyUgMy-IgPRwzpEMvaeUX1gtg8rjMwACLcBGAs/s1600/01.jpg"
),
(
	"Andréia Firmino Conceição",
	35524474405,
	151960574,
	8739061987,
	STR_TO_DATE("2020/05/17", "%Y/%m/%d"),
	1100,
	"RECEPCIONISTA",
	"https://thumbs.dreamstime.com/b/recepcionista-f%C3%AAmea-bonito-da-garagem-dentro-da-oficina-30458296.jpg"
),
(
	"Jorge Renan da Paz",
	94015285433,
	318750569,
	8738693786,
	STR_TO_DATE("2019/04/02", "%Y/%m/%d"),
	1700,
	"SUPERVISOR DE MECANICO",
	"https://chiptronic.com.br/blog/wp-content/uploads/2016/11/5-dicas-para-melhorar-a-produtividade-na-oficina-mec%C3%A2nica.jpg"
),
(
	"Edson Roberto Felipe Martins",
	64010105410,
	306169046,
	8727810963,
	STR_TO_DATE("2017/01/02", "%Y/%m/%d"),
	1100,
	"MECANICO",
	"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-wV66lDmwwep-By5NGrvakye6YErOzbY_5b0tp93XZqsmn7pErgz6JVTQctLsn7l3rxM&usqp=CAU"
),
(
	"Benjamin César Elias Porto",
	52010863496,
	490404327,
	8736045526,
	STR_TO_DATE("2020/02/02", "%Y/%m/%d"),
	1100,
	"MECANICO",
	"https://truckcenter.com.br/wp-content/uploads/2019/11/1.-shutterstock_287173067.jpg"
);

#INSERTS VEICULOS
#________________

INSERT INTO VEICULO 
(`PLACA`,
`MARCA`,
`MODELO`)
VALUES
('KGE9587','Plymouth','Gran Voyager LE 2.5'),
('KGF6677','Cadillac','Deville/Eldorado 4.9'),
('KIK8444','MINI','COOPER 1.6 Mec.'),
('KIR8980','Buggy','Buggy 1.6 2-Lug.'),
('KJQ0759','Buggy','Buggy IV e V'),
('KKK5233','Ford','Corcel II L'),
('KKN9114','Rover','Mini Cooper 1.3'),
('KLC5438','Engesa','Engesa 4x4 4.0 Diesel'),
('KLE2124','Chrysler','TOWN & COUNTRY Touring 3.6 V6 Aut.'),
('KLH6098','Mahindra','SUV 2.2 4x4 (diesel) Mec.'),
('KLI7347','Porsche','911 Carrera Cabriolet 3.4/ 3.6 Mec'),
('KLY4260','Renault','19 RT 1.8/ 1.8i'),
('KLY7880','Mercury','Mystique GS 2.5 V6 Mec.');

#INSERTS CLIENTES_VEICULOS
#________________

INSERT INTO CLIENTE_VEICULO 
(`CPFCNPJ`,
`PLACA`) 
VALUES
(60197669000,'KLE2124'),
(65191419090,'KLC5438'),
(66863480077,'KIR8980'),
(54042619606,'KLH6098'),
(14261490340,'KLY7880'),
(46736818001,'KKK5233'),
(61868631826,'KGE9587'),
(17144517554,'KJQ0759'),
(83824694425,'KLY4260'),
(80518223310,'KKN9114'),
(93456228023,'KLI7347'),
(14870567539,'KGF6677'),
(23326687052,'KIK8444');

#INSERTS SERVICOS
#________________

INSERT INTO SERVICO 
(`DESCRICAO`,
`PRECO`)
VALUES
('Troca de Óleo', 65.0),
('Revisão Geral', 350.0),
('Troca de Pneu', 20),
('Alinhamento e Balanceamento', 400),
('Revisão do Motor', 170);

#INSERTS ITEM
#________________

INSERT INTO ITEM 
(`INSTRUCAO`) 
VALUES 
('Verificar Óleo'),
('Levantar carro e escorrer o óleo'),
('Adicionar o novo óleo e descer o carro'),
('Inciar checklist'),
('Lubrificar todos parafusos'),
('Finalizar checklist'),
('Colocar macaco hidráulico e remover parafusos'),
('Remover pneu e colocar novo'),
('Colocar, apertar todos os parafusos e abaixar carro'),
('Iniciar Alinhamento e Balanceamento'),
('Verificar se tudo está de acordo com o checklist'),
('Finalizar Alinhamento e Balanceamento'),
('Iniciar revisão de acordo com o checklist'),
('Realizar limpeza do motor'),
('Finalizar revisão e validar checklist');

#INSERTS SERVICO_ITEM
#________________

INSERT INTO SERVICO_ITEM 
(`CODSERVICO`,`CODITEM`) 
VALUES 
(1,1),
(1,2),
(1,3),
(2,4),
(2,5),
(2,6),
(3,7),
(3,8),
(3,9),
(4,10),
(4,11),
(4,12),
(5,13),
(5,14),
(5,15);

