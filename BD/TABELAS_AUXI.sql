-- -----------------------------------------------------------------
CREATE TABLE CODIGOS_GERACAO_MARCA 
(
	ID INT PRIMARY KEY IDENTITY(1,1),

	MARCA_NOME VARCHAR(100),
	MARCA_COD VARCHAR(2)
)
INSERT INTO CODIGOS_GERACAO_MARCA (MARCA_NOME, MARCA_COD)
VALUES 
	   ('', '00'),
	   ('ELITE', '01'),
	   ('PENSI','02'),
	   ('COLEGUIUM','03'),
	   ('ANGLO','04'),
	   ('CFM','05'),
	   ('ZEROHUM','06'),
	   ('IRIUM','07'), 
	   ('WALPRINT','08');


-- -----------------------------------------------------------------
CREATE TABLE CODIGOS_GERACAO_REGIAO
(
	ID INT PRIMARY KEY IDENTITY(1,1),

	REGIAO_NOME VARCHAR(100),
	REGIAO_COD VARCHAR(2)
)
INSERT INTO CODIGOS_GERACAO_REGIAO
(
	REGIAO_NOME,
	REGIAO_COD

)VALUES
	('', '00'),
	('CENTRO', '01'),
	('SUL', '02'),
	('SP', '03'),
	('RJ', '04'),
	('CARAJÁS', '05'),
	('MG', '06'),
	('CMD', '07'),
	('CG+RL', '08'),
	('PT.1', '09'),
	('PT.2', '10'),
	('TRANSP.', '11');

-- -----------------------------------------------------------------
CREATE TABLE CODIGOS_GERACAO_SEGMENTO
(
	ID INT PRIMARY KEY IDENTITY(1,1),

	SEGMENTO_NOME VARCHAR(100),
	SEGMENTO_COD VARCHAR(2)
)
INSERT INTO CODIGOS_GERACAO_SEGMENTO
(
	SEGMENTO_NOME,
	SEGMENTO_COD

)VALUES
		('', '0')
		,('EFAI','1')
		,('EFAF','2')
		,('EM','3')
		,('Infantil','4')
		,('Pré-Vestibular','5')
		,('Militar','6')
		,('ADM','7')


-- -----------------------------------------------------------------
CREATE TABLE CODIGOS_GERACAO_TURNO
(
	ID INT PRIMARY KEY IDENTITY(1,1),

	TURNO_NOME VARCHAR(100),
	TURNO_COD VARCHAR(2)
)
INSERT INTO CODIGOS_GERACAO_TURNO
(
	TURNO_NOME,
	TURNO_COD

)VALUES
	(' ', '0'),
	('Manhã', '1'),
	('Tarde', '2');

-- -----------------------------------------------------------------
CREATE TABLE CODIGOS_GERACAO_MODELO
(
	ID INT PRIMARY KEY IDENTITY(1,1),

	MODELO_NOME VARCHAR(100),
	MODELO_COD VARCHAR(2)
)
INSERT INTO CODIGOS_GERACAO_MODELO
(
	MODELO_NOME,
	MODELO_COD

)VALUES
	('', '0')
	,('Modelo 1/A', '1')
	,('Modelo 2/B', '2')
	,('Dia 1' , '3')
	,('Dia 2', '4')
	,('Modelo 1 dia 1', '5')
	,('Modelo 1 dia 2' , '6')
	,('Modelo 2 dia 1' , '7')
	,('Modelo 2 dia 2' , '8')
	,('Nenhum' , '9')

CREATE TABLE CODIGOS_GERACAO_ESPECIFICACOES
(
	ID INT PRIMARY KEY IDENTITY(1,1),

	ESPECIFICACOES_NOME VARCHAR(100),
	ESPECIFICACOES_COD VARCHAR(3)
)
INSERT INTO CODIGOS_GERACAO_ESPECIFICACOES
(
	ESPECIFICACOES_COD,
	ESPECIFICACOES_NOME

)VALUES
 ('000','')
,('001' , 'Offset-A4-75g-1x0')
,('002' , 'Offset-A4-75g-1x1')
,('003' , 'Offset-A4-75g-4x0')
,('004' , 'Offset-A4-75g-4x4')
,('005' , 'Offset-A4-90g-1x0')
,('006' , 'Offset-A4-90g-1x1')
,('007' , 'Offset-A4-90g-4x0')
,('008' , 'Offset-A4-90g-4x4')
,('009' , 'Offset-A4-120g-1x0')
,('010' , 'Offset-A4-120g-1x1')
,('011' , 'Offset-A4-120g-4x0')
,('012' , 'Offset-A4-120g-4x4')
,('013' , 'Offset-A4-180g-1x0')
,('014' , 'Offset-A4-180g-1x1')
,('015' , 'Offset-A4-180g-4x0')
,('016' , 'Offset-A4-180g-4x4')
,('017' , 'Offset-A4-250g-1x0')
,('018' , 'Offset-A4-250g-1x1')
,('019' , 'Offset-A4-250g-4x0')
,('020' , 'Offset-A4-250g-4x4')
,('021' , 'Offset-A4-115g-1x0')
,('022' , 'Offset-A4-115g-1x1')
,('023' , 'Offset-A4-115g-4x0')
,('024' , 'Offset-A4-115g-4x4')
,('025' , 'Offset-A4-170g-1x0')
,('026' , 'Offset-A4-170g-1x1')
,('027' , 'Offset-A4-170g-4x0')
,('028' , 'Offset-A4-170g-4x4')
,('029' , 'Offset-A4-240g-1x0')
,('030' , 'Offset-A4-240g-1x1')
,('031' , 'Offset-A4-240g-4x0')
,('032' , 'Offset-A4-240g-4x4')
,('033' , 'Offset-A4-300g-1x0')
,('034' , 'Offset-A4-300g-1x1')
,('035' , 'Offset-A4-300g-4x0')
,('036' , 'Offset-A4-300g-4x4')
,('037' , 'Offset-A3-75g-1x0')
,('038' , 'Offset-A3-75g-1x1')
,('039' , 'Offset-A3-75g-4x0')
,('040' , 'Offset-A3-75g-4x4')
,('041' , 'Offset-A3-90g-1x0')
,('042' , 'Offset-A3-90g-1x1')
,('043' , 'Offset-A3-90g-4x0')
,('044' , 'Offset-A3-90g-4x4')
,('045' , 'Offset-A3-120g-1x0')
,('046' , 'Offset-A3-120g-1x1')
,('047' , 'Offset-A3-120g-4x0')
,('048' , 'Offset-A3-120g-4x4')
,('049' , 'Offset-A3-180g-1x0')
,('050' , 'Offset-A3-180g-1x1')
,('051' , 'Offset-A3-180g-4x0')
,('052' , 'Offset-A3-180g-4x4')
,('053' , 'Offset-A3-250g-1x0')
,('054' , 'Offset-A3-250g-1x1')
,('055' , 'Offset-A3-250g-4x0')
,('056' , 'Offset-A3-250g-4x4')
,('057' , 'Offset-A3-115g-1x0')
,('058' , 'Offset-A3-115g-1x1')
,('059' , 'Offset-A3-115g-4x0')
,('060' , 'Offset-A3-115g-4x4')
,('061' , 'Offset-A3-170g-1x0')
,('062' , 'Offset-A3-170g-1x1')
,('063' , 'Offset-A3-170g-4x0')
,('064' , 'Offset-A3-170g-4x4')
,('065' , 'Offset-A3-240g-1x0')
,('066' , 'Offset-A3-240g-1x1')
,('067' , 'Offset-A3-240g-4x0')
,('068' , 'Offset-A3-240g-4x4')
,('069' , 'Offset-A3-300g-1x0')
,('070' , 'Offset-A3-300g-1x1')
,('071' , 'Offset-A3-300g-4x0')
,('072' , 'Offset-A3-300g-4x4')
,('073' , 'Offset-A5-75g-1x0')
,('074' , 'Offset-A5-75g-1x1')
,('075' , 'Offset-A5-75g-4x0')
,('076' , 'Offset-A5-75g-4x4')
,('077' , 'Offset-A5-90g-1x0')
,('078' , 'Offset-A5-90g-1x1')
,('079' , 'Offset-A5-90g-4x0')
,('080' , 'Offset-A5-90g-4x4')
,('081' , 'Offset-A5-120g-1x0')
,('082' , 'Offset-A5-120g-1x1')
,('083' , 'Offset-A5-120g-4x0')
,('084' , 'Offset-A5-120g-4x4')
,('085' , 'Offset-A5-180g-1x0')
,('086' , 'Offset-A5-180g-1x1')
,('087' , 'Offset-A5-180g-4x0')
,('088' , 'Offset-A5-180g-4x4')
,('089' , 'Offset-A5-250g-1x0')
,('090' , 'Offset-A5-250g-1x1')
,('091' , 'Offset-A5-250g-4x0')
,('092' , 'Offset-A5-250g-4x4')
,('093' , 'Offset-A5-115g-1x0')
,('094' , 'Offset-A5-115g-1x1')
,('095' , 'Offset-A5-115g-4x0')
,('096' , 'Offset-A5-115g-4x4')
,('097' , 'Offset-A5-170g-1x0')
,('098' , 'Offset-A5-170g-1x1')
,('099' , 'Offset-A5-170g-4x0')
,('100' , 'Offset-A5-170g-4x4')
,('101' , 'Offset-A5-240g-1x0')
,('102' , 'Offset-A5-240g-1x1')
,('103' , 'Offset-A5-240g-4x0')
,('104' , 'Offset-A5-240g-4x4')
,('105' , 'Offset-A5-300g-1x0')
,('106' , 'Offset-A5-300g-1x1')
,('107' , 'Offset-A5-300g-4x0')
,('108' , 'Offset-A5-300g-4x4')
,('109' , 'Couchê-A4-75g-1x0')
,('110' , 'Couchê-A4-75g-1x1')
,('111' , 'Couchê-A4-75g-4x0')
,('112' , 'Couchê-A4-75g-4x4')
,('113' , 'Couchê-A4-90g-1x0')
,('114' , 'Couchê-A4-90g-1x1')
,('115' , 'Couchê-A4-90g-4x0')
,('116' , 'Couchê-A4-90g-4x4')
,('117' , 'Couchê-A4-120g-1x0')
,('118' , 'Couchê-A4-120g-1x1')
,('119' , 'Couchê-A4-120g-4x0')
,('120' , 'Couchê-A4-120g-4x4')
,('121' , 'Couchê-A4-180g-1x0')
,('122' , 'Couchê-A4-180g-1x1')
,('123' , 'Couchê-A4-180g-4x0')
,('124' , 'Couchê-A4-180g-4x4')
,('125' , 'Couchê-A4-250g-1x0')
,('126' , 'Couchê-A4-250g-1x1')
,('127' , 'Couchê-A4-250g-4x0')
,('128' , 'Couchê-A4-250g-4x4')
,('129' , 'Couchê-A4-115g-1x0')
,('130' , 'Couchê-A4-115g-1x1')
,('131' , 'Couchê-A4-115g-4x0')
,('132' , 'Couchê-A4-115g-4x4')
,('133' , 'Couchê-A4-170g-1x0')
,('134' , 'Couchê-A4-170g-1x1')
,('135' , 'Couchê-A4-170g-4x0')
,('136' , 'Couchê-A4-170g-4x4')
,('137' , 'Couchê-A4-240g-1x0')
,('138' , 'Couchê-A4-240g-1x1')
,('139' , 'Couchê-A4-240g-4x0')
,('140' , 'Couchê-A4-240g-4x4')
,('141' , 'Couchê-A4-300g-1x0')
,('142' , 'Couchê-A4-300g-1x1')
,('143' , 'Couchê-A4-300g-4x0')
,('144' , 'Couchê-A4-300g-4x4')
,('145' , 'Couchê-A3-75g-1x0')
,('146' , 'Couchê-A3-75g-1x1')
,('147' , 'Couchê-A3-75g-4x0')
,('148' , 'Couchê-A3-75g-4x4')
,('149' , 'Couchê-A3-90g-1x0')
,('150' , 'Couchê-A3-90g-1x1')
,('151' , 'Couchê-A3-90g-4x0')
,('152' , 'Couchê-A3-90g-4x4')
,('153' , 'Couchê-A3-120g-1x0')
,('154' , 'Couchê-A3-120g-1x1')
,('155' , 'Couchê-A3-120g-4x0')
,('156' , 'Couchê-A3-120g-4x4')
,('157' , 'Couchê-A3-180g-1x0')
,('158' , 'Couchê-A3-180g-1x1')
,('159' , 'Couchê-A3-180g-4x0')
,('160' , 'Couchê-A3-180g-4x4')
,('161' , 'Couchê-A3-250g-1x0')
,('162' , 'Couchê-A3-250g-1x1')
,('163' , 'Couchê-A3-250g-4x0')
,('164' , 'Couchê-A3-250g-4x4')
,('165' , 'Couchê-A3-115g-1x0')
,('166' , 'Couchê-A3-115g-1x1')
,('167' , 'Couchê-A3-115g-4x0')
,('168' , 'Couchê-A3-115g-4x4')
,('169' , 'Couchê-A3-170g-1x0')
,('170' , 'Couchê-A3-170g-1x1')
,('171' , 'Couchê-A3-170g-4x0')
,('172' , 'Couchê-A3-170g-4x4')
,('173' , 'Couchê-A3-240g-1x0')
,('174' , 'Couchê-A3-240g-1x1')
,('175' , 'Couchê-A3-240g-4x0')
,('176' , 'Couchê-A3-240g-4x4')
,('177' , 'Couchê-A3-300g-1x0')
,('178' , 'Couchê-A3-300g-1x1')
,('179' , 'Couchê-A3-300g-4x0')
,('180' , 'Couchê-A3-300g-4x4')
,('181' , 'Couchê-A5-75g-1x0')
,('182' , 'Couchê-A5-75g-1x1')
,('183' , 'Couchê-A5-75g-4x0')
,('184' , 'Couchê-A5-75g-4x4')
,('185' , 'Couchê-A5-90g-1x0')
,('186' , 'Couchê-A5-90g-1x1')
,('187' , 'Couchê-A5-90g-4x0')
,('188' , 'Couchê-A5-90g-4x4')
,('189' , 'Couchê-A5-120g-1x0')
,('190' , 'Couchê-A5-120g-1x1')
,('191' , 'Couchê-A5-120g-4x0')
,('192' , 'Couchê-A5-120g-4x4')
,('193' , 'Couchê-A5-180g-1x0')
,('194' , 'Couchê-A5-180g-1x1')
,('195' , 'Couchê-A5-180g-4x0')
,('196' , 'Couchê-A5-180g-4x4')
,('197' , 'Couchê-A5-250g-1x0')
,('198' , 'Couchê-A5-250g-1x1')
,('199' , 'Couchê-A5-250g-4x0')
,('200' , 'Couchê-A5-250g-4x4')
,('201' , 'Couchê-A5-115g-1x0')
,('202' , 'Couchê-A5-115g-1x1')
,('203' , 'Couchê-A5-115g-4x0')
,('204' , 'Couchê-A5-115g-4x4')
,('205' , 'Couchê-A5-170g-1x0')
,('206' , 'Couchê-A5-170g-1x1')
,('207' , 'Couchê-A5-170g-4x0')
,('208' , 'Couchê-A5-170g-4x4')
,('209' , 'Couchê-A5-240g-1x0')
,('210' , 'Couchê-A5-240g-1x1')
,('211' , 'Couchê-A5-240g-4x0')
,('212' , 'Couchê-A5-240g-4x4')
,('213' , 'Couchê-A5-300g-1x0')
,('214' , 'Couchê-A5-300g-1x1')
,('215' , 'Couchê-A5-300g-4x0')
,('216' , 'Couchê-A5-300g-4x4')
,('218' , 'Reciclato-A4-75g-1x1')
,('217' , 'Reciclato-A4-75g-1x0')
,('219' , 'Reciclato-A4-75g-4x0')
,('220' , 'Reciclato-A4-75g-4x4')
,('221' , 'Reciclato-A4-90g-1x0')
,('222' , 'Reciclato-A4-90g-1x1')
,('223' , 'Reciclato-A4-90g-4x0')
,('224' , 'Reciclato-A4-90g-4x4')
,('225' , 'Reciclato-A4-120g-1x0')
,('226' , 'Reciclato-A4-120g-1x1')
,('227' , 'Reciclato-A4-120g-4x0')
,('228' , 'Reciclato-A4-120g-4x4')
,('229' , 'Reciclato-A4-180g-1x0')
,('230' , 'Reciclato-A4-180g-1x1')
,('231' , 'Reciclato-A4-180g-4x0')
,('232' , 'Reciclato-A4-180g-4x4')
,('233' , 'Reciclato-A4-250g-1x0')
,('234' , 'Reciclato-A4-250g-1x1')
,('235' , 'Reciclato-A4-250g-4x0')
,('236' , 'Reciclato-A4-250g-4x4')
,('237' , 'Reciclato-A4-115g-1x0')
,('238' , 'Reciclato-A4-115g-1x1')
,('239' , 'Reciclato-A4-115g-4x0')
,('240' , 'Reciclato-A4-115g-4x4')
,('241' , 'Reciclato-A4-170g-1x0')
,('242' , 'Reciclato-A4-170g-1x1')
,('243' , 'Reciclato-A4-170g-4x0')
,('244' , 'Reciclato-A4-170g-4x4')
,('245' , 'Reciclato-A4-240g-1x0')
,('246' , 'Reciclato-A4-240g-1x1')
,('247' , 'Reciclato-A4-240g-4x0')
,('248' , 'Reciclato-A4-240g-4x4')
,('249' , 'Reciclato-A4-300g-1x0')
,('250' , 'Reciclato-A4-300g-1x1')
,('251' , 'Reciclato-A4-300g-4x0')
,('252' , 'Reciclato-A4-300g-4x4')
,('253' , 'Reciclato-A3-75g-1x0')
,('254' , 'Reciclato-A3-75g-1x1')
,('255' , 'Reciclato-A3-75g-4x0')
,('256' , 'Reciclato-A3-75g-4x4')
,('257' , 'Reciclato-A3-90g-1x0')
,('258' , 'Reciclato-A3-90g-1x1')
,('259' , 'Reciclato-A3-90g-4x0')
,('260' , 'Reciclato-A3-90g-4x4')
,('261' , 'Reciclato-A3-120g-1x0')
,('262' , 'Reciclato-A3-120g-1x1')
,('263' , 'Reciclato-A3-120g-4x0')
,('264' , 'Reciclato-A3-120g-4x4')
,('265' , 'Reciclato-A3-180g-1x0')
,('266' , 'Reciclato-A3-180g-1x1')
,('267' , 'Reciclato-A3-180g-4x0')
,('268' , 'Reciclato-A3-180g-4x4')
,('269' , 'Reciclato-A3-250g-1x0')
,('270' , 'Reciclato-A3-250g-1x1')
,('271' , 'Reciclato-A3-250g-4x0')
,('272' , 'Reciclato-A3-250g-4x4')
,('273' , 'Reciclato-A3-115g-1x0')
,('274' , 'Reciclato-A3-115g-1x1')
,('275' , 'Reciclato-A3-115g-4x0')
,('276' , 'Reciclato-A3-115g-4x4')
,('277' , 'Reciclato-A3-170g-1x0')
,('278' , 'Reciclato-A3-170g-1x1')
,('279' , 'Reciclato-A3-170g-4x0')
,('280' , 'Reciclato-A3-170g-4x4')
,('281' , 'Reciclato-A3-240g-1x0')
,('282' , 'Reciclato-A3-240g-1x1')
,('283' , 'Reciclato-A3-240g-4x0')
,('284' , 'Reciclato-A3-240g-4x4')
,('285' , 'Reciclato-A3-300g-1x0')
,('286' , 'Reciclato-A3-300g-1x1')
,('287' , 'Reciclato-A3-300g-4x0')
,('288' , 'Reciclato-A3-300g-4x4')
,('289' , 'Reciclato-A5-75g-1x0')
,('290' , 'Reciclato-A5-75g-1x1')
,('291' , 'Reciclato-A5-75g-4x0')
,('292' , 'Reciclato-A5-75g-4x4')
,('293' , 'Reciclato-A5-90g-1x0')
,('294' , 'Reciclato-A5-90g-1x1')
,('295' , 'Reciclato-A5-90g-4x0')
,('296' , 'Reciclato-A5-90g-4x4')
,('297' , 'Reciclato-A5-120g-1x0')
,('298' , 'Reciclato-A5-120g-1x1')
,('299' , 'Reciclato-A5-120g-4x0')
,('300' , 'Reciclato-A5-120g-4x4')
,('301' , 'Reciclato-A5-180g-1x0')
,('302' , 'Reciclato-A5-180g-1x1')
,('303' , 'Reciclato-A5-180g-4x0')
,('304' , 'Reciclato-A5-180g-4x4')
,('305' , 'Reciclato-A5-250g-1x0')
,('306' , 'Reciclato-A5-250g-1x1')
,('307' , 'Reciclato-A5-250g-4x0')
,('308' , 'Reciclato-A5-250g-4x4')
,('309' , 'Reciclato-A5-115g-1x0')
,('310' , 'Reciclato-A5-115g-1x1')
,('311' , 'Reciclato-A5-115g-4x0')
,('312' , 'Reciclato-A5-115g-4x4')
,('313' , 'Reciclato-A5-170g-1x0')
,('314' , 'Reciclato-A5-170g-1x1')
,('315' , 'Reciclato-A5-170g-4x0')
,('316' , 'Reciclato-A5-170g-4x4')
,('317' , 'Reciclato-A5-240g-1x0')
,('318' , 'Reciclato-A5-240g-1x1')
,('319' , 'Reciclato-A5-240g-4x0')
,('320' , 'Reciclato-A5-240g-4x4')
,('321' , 'Reciclato-A5-300g-1x0')
,('322' , 'Reciclato-A5-300g-1x1')
,('323' , 'Reciclato-A5-300g-4x0')
,('324' , 'Reciclato-A5-300g-4x4')
,('325' , 'Colorido-A4-75g-1x0')
,('326' , 'Colorido-A4-75g-1x1')
,('327' , 'Colorido-A4-75g-4x0')
,('328' , 'Colorido-A4-75g-4x4')
,('329' , 'Colorido-A4-90g-1x0')
,('330' , 'Colorido-A4-90g-1x1')
,('331' , 'Colorido-A4-90g-4x0')
,('332' , 'Colorido-A4-90g-4x4')
,('333' , 'Colorido-A4-120g-1x0')
,('334' , 'Colorido-A4-120g-1x1')
,('335' , 'Colorido-A4-120g-4x0')
,('336' , 'Colorido-A4-120g-4x4')
,('337' , 'Colorido-A4-180g-1x0')
,('338' , 'Colorido-A4-180g-1x1')
,('339' , 'Colorido-A4-180g-4x0')
,('340' , 'Colorido-A4-180g-4x4')
,('341' , 'Colorido-A4-250g-1x0')
,('342' , 'Colorido-A4-250g-1x1')
,('343' , 'Colorido-A4-250g-4x0')
,('344' , 'Colorido-A4-250g-4x4')
,('345' , 'Colorido-A4-115g-1x0')
,('346' , 'Colorido-A4-115g-1x1')
,('347' , 'Colorido-A4-115g-4x0')
,('348' , 'Colorido-A4-115g-4x4')
,('349' , 'Colorido-A4-170g-1x0')
,('350' , 'Colorido-A4-170g-1x1')
,('351' , 'Colorido-A4-170g-4x0')
,('352' , 'Colorido-A4-170g-4x4')
,('353' , 'Colorido-A4-240g-1x0')
,('354' , 'Colorido-A4-240g-1x1')
,('355' , 'Colorido-A4-240g-4x0')
,('356' , 'Colorido-A4-240g-4x4')
,('357' , 'Colorido-A4-300g-1x0')
,('358' , 'Colorido-A4-300g-1x1')
,('359' , 'Colorido-A4-300g-4x0')
,('360' , 'Colorido-A4-300g-4x4')
,('361' , 'Colorido-A3-75g-1x0')
,('362' , 'Colorido-A3-75g-1x1')
,('363' , 'Colorido-A3-75g-4x0')
,('364' , 'Colorido-A3-75g-4x4')
,('365' , 'Colorido-A3-90g-1x0')
,('366' , 'Colorido-A3-90g-1x1')
,('367' , 'Colorido-A3-90g-4x0')
,('368' , 'Colorido-A3-90g-4x4')
,('369' , 'Colorido-A3-120g-1x0')
,('370' , 'Colorido-A3-120g-1x1')
,('371' , 'Colorido-A3-120g-4x0')
,('372' , 'Colorido-A3-120g-4x4')
,('373' , 'Colorido-A3-180g-1x0')
,('374' , 'Colorido-A3-180g-1x1')
,('375' , 'Colorido-A3-180g-4x0')
,('376' , 'Colorido-A3-180g-4x4')
,('377' , 'Colorido-A3-250g-1x0')
,('378' , 'Colorido-A3-250g-1x1')
,('379' , 'Colorido-A3-250g-4x0')
,('380' , 'Colorido-A3-250g-4x4')
,('381' , 'Colorido-A3-115g-1x0')
,('382' , 'Colorido-A3-115g-1x1')
,('383' , 'Colorido-A3-115g-4x0')
,('384' , 'Colorido-A3-115g-4x4')
,('385' , 'Colorido-A3-170g-1x0')
,('386' , 'Colorido-A3-170g-1x1')
,('387' , 'Colorido-A3-170g-4x0')
,('388' , 'Colorido-A3-170g-4x4')
,('389' , 'Colorido-A3-240g-1x0')
,('390' , 'Colorido-A3-240g-1x1')
,('391' , 'Colorido-A3-240g-4x0')
,('392' , 'Colorido-A3-240g-4x4')
,('393' , 'Colorido-A3-300g-1x0')
,('394' , 'Colorido-A3-300g-1x1')
,('395' , 'Colorido-A3-300g-4x0')
,('396' , 'Colorido-A3-300g-4x4')
,('397' , 'Colorido-A5-75g-1x0')
,('398' , 'Colorido-A5-75g-1x1')
,('399' , 'Colorido-A5-75g-4x0')
,('400' , 'Colorido-A5-75g-4x4')
,('401' , 'Colorido-A5-90g-1x0')
,('402' , 'Colorido-A5-90g-1x1')
,('403' , 'Colorido-A5-90g-4x0')
,('404' , 'Colorido-A5-90g-4x4')
,('405' , 'Colorido-A5-120g-1x0')
,('406' , 'Colorido-A5-120g-1x1')
,('407' , 'Colorido-A5-120g-4x0')
,('408' , 'Colorido-A5-120g-4x4')
,('409' , 'Colorido-A5-180g-1x0')
,('410' , 'Colorido-A5-180g-1x1')
,('411' , 'Colorido-A5-180g-4x0')
,('412' , 'Colorido-A5-180g-4x4')
,('413' , 'Colorido-A5-250g-1x0')
,('414' , 'Colorido-A5-250g-1x1')
,('415' , 'Colorido-A5-250g-4x0')
,('416' , 'Colorido-A5-250g-4x4')
,('417' , 'Colorido-A5-115g-1x0')
,('418' , 'Colorido-A5-115g-1x1')
,('419' , 'Colorido-A5-115g-4x0')
,('420' , 'Colorido-A5-115g-4x4')
,('421' , 'Colorido-A5-170g-1x0')
,('422' , 'Colorido-A5-170g-1x1')
,('423' , 'Colorido-A5-170g-4x0')
,('424' , 'Colorido-A5-170g-4x4')
,('425' , 'Colorido-A5-240g-1x0')
,('426' , 'Colorido-A5-240g-1x1')
,('427' , 'Colorido-A5-240g-4x0')
,('428' , 'Colorido-A5-240g-4x4')
,('429' , 'Colorido-A5-300g-1x0')
,('430' , 'Colorido-A5-300g-1x1')
,('431' , 'Colorido-A5-300g-4x0')
,('432' , 'Colorido-A5-300g-4x4')
,('433' , 'Triplex-A4-75g-1x0')
,('434' , 'Triplex-A4-75g-1x1')
,('435' , 'Triplex-A4-75g-4x0')
,('436' , 'Triplex-A4-75g-4x4')
,('437' , 'Triplex-A4-90g-1x0')
,('438' , 'Triplex-A4-90g-1x1')
,('439' , 'Triplex-A4-90g-4x0')
,('440' , 'Triplex-A4-90g-4x4')
,('441' , 'Triplex-A4-120g-1x0')
,('442' , 'Triplex-A4-120g-1x1')
,('443' , 'Triplex-A4-120g-4x0')
,('444' , 'Triplex-A4-120g-4x4')
,('445' , 'Triplex-A4-180g-1x0')
,('446' , 'Triplex-A4-180g-1x1')
,('447' , 'Triplex-A4-180g-4x0')
,('448' , 'Triplex-A4-180g-4x4')
,('449' , 'Triplex-A4-250g-1x0')
,('450' , 'Triplex-A4-250g-1x1')
,('451' , 'Triplex-A4-250g-4x0')
,('452' , 'Triplex-A4-250g-4x4')
,('453' , 'Triplex-A4-115g-1x0')
,('454' , 'Triplex-A4-115g-1x1')
,('455' , 'Triplex-A4-115g-4x0')
,('456' , 'Triplex-A4-115g-4x4')
,('457' , 'Triplex-A4-170g-1x0')
,('458' , 'Triplex-A4-170g-1x1')
,('459' , 'Triplex-A4-170g-4x0')
,('460' , 'Triplex-A4-170g-4x4')
,('461' , 'Triplex-A4-240g-1x0')
,('462' , 'Triplex-A4-240g-1x1')
,('463' , 'Triplex-A4-240g-4x0')
,('464' , 'Triplex-A4-240g-4x4')
,('465' , 'Triplex-A4-300g-1x0')
,('466' , 'Triplex-A4-300g-1x1')
,('467' , 'Triplex-A4-300g-4x0')
,('468' , 'Triplex-A4-300g-4x4')
,('469' , 'Triplex-A3-75g-1x0')
,('470' , 'Triplex-A3-75g-1x1')
,('471' , 'Triplex-A3-75g-4x0')
,('472' , 'Triplex-A3-75g-4x4')
,('473' , 'Triplex-A3-90g-1x0')
,('474' , 'Triplex-A3-90g-1x1')
,('475' , 'Triplex-A3-90g-4x0')
,('476' , 'Triplex-A3-90g-4x4')
,('477' , 'Triplex-A3-120g-1x0')
,('478' , 'Triplex-A3-120g-1x1')
,('479' , 'Triplex-A3-120g-4x0')
,('480' , 'Triplex-A3-120g-4x4')
,('481' , 'Triplex-A3-180g-1x0')
,('482' , 'Triplex-A3-180g-1x1')
,('483' , 'Triplex-A3-180g-4x0')
,('484' , 'Triplex-A3-180g-4x4')
,('485' , 'Triplex-A3-250g-1x0')
,('486' , 'Triplex-A3-250g-1x1')
,('487' , 'Triplex-A3-250g-4x0')
,('488' , 'Triplex-A3-250g-4x4')
,('489' , 'Triplex-A3-115g-1x0')
,('490' , 'Triplex-A3-115g-1x1')
,('491' , 'Triplex-A3-115g-4x0')
,('492' , 'Triplex-A3-115g-4x4')
,('493' , 'Triplex-A3-170g-1x0')
,('494' , 'Triplex-A3-170g-1x1')
,('495' , 'Triplex-A3-170g-4x0')
,('496' , 'Triplex-A3-170g-4x4')
,('497' , 'Triplex-A3-240g-1x0')
,('498' , 'Triplex-A3-240g-1x1')
,('499' , 'Triplex-A3-240g-4x0')
,('500' , 'Triplex-A3-240g-4x4')
,('501' , 'Triplex-A3-300g-1x0')
,('502' , 'Triplex-A3-300g-1x1')
,('503' , 'Triplex-A3-300g-4x0')
,('504' , 'Triplex-A3-300g-4x4')
,('505' , 'Triplex-A5-75g-1x0')
,('506' , 'Triplex-A5-75g-1x1')
,('507' , 'Triplex-A5-75g-4x0')
,('508' , 'Triplex-A5-75g-4x4')
,('509' , 'Triplex-A5-90g-1x0')
,('510' , 'Triplex-A5-90g-1x1')
,('511' , 'Triplex-A5-90g-4x0')
,('512' , 'Triplex-A5-90g-4x4')
,('513' , 'Triplex-A5-120g-1x0')
,('514' , 'Triplex-A5-120g-1x1')
,('515' , 'Triplex-A5-120g-4x0')
,('516' , 'Triplex-A5-120g-4x4')
,('517' , 'Triplex-A5-180g-1x0')
,('518' , 'Triplex-A5-180g-1x1')
,('519' , 'Triplex-A5-180g-4x0')
,('520' , 'Triplex-A5-180g-4x4')
,('521' , 'Triplex-A5-250g-1x0')
,('522' , 'Triplex-A5-250g-1x1')
,('523' , 'Triplex-A5-250g-4x0')
,('524' , 'Triplex-A5-250g-4x4')
,('525' , 'Triplex-A5-115g-1x0')
,('526' , 'Triplex-A5-115g-1x1')
,('527' , 'Triplex-A5-115g-4x0')
,('528' , 'Triplex-A5-115g-4x4')
,('529' , 'Triplex-A5-170g-1x0')
,('530' , 'Triplex-A5-170g-1x1')
,('531' , 'Triplex-A5-170g-4x0')
,('532' , 'Triplex-A5-170g-4x4')
,('533' , 'Triplex-A5-240g-1x0')
,('534' , 'Triplex-A5-240g-1x1')
,('535' , 'Triplex-A5-240g-4x0')
,('536' , 'Triplex-A5-240g-4x4')
,('537' , 'Triplex-A5-300g-1x0')
,('538' , 'Triplex-A5-300g-1x1')
,('539' , 'Triplex-A5-300g-4x0')
,('540' , 'Triplex-A5-300g-4x4')
	

----------------------------------------------------------
CREATE TABLE CODIGOS_GERACAO_UNIDADE
(
	ID INT PRIMARY KEY IDENTITY(1,1),

	UNIDADE_COD VARCHAR(3),
	UNIDADE_NOME VARCHAR(100)
)
INSERT INTO CODIGOS_GERACAO_UNIDADE
(
	UNIDADE_COD,
	UNIDADE_NOME

)VALUES
 ('000', '')
,('001' , 'ELITE-CEAC Gama')
,('002' , 'ELITE-Ceilândia')
,('003' , 'ELITE-Goiânia Parque das Laranjeiras')
,('004' , 'ELITE-Guará')
,('005' , 'ELITE-Dourados')
,('006' , 'ELITE-Mace Campo Grande')
,('007' , 'ELITE-Ponta Porã')
,('008' , 'ELITE-Três Lagoas')
,('009' , 'ELITE-Atopp Londrina')
,('010' , 'ELITE-Cascavel')
,('011' , 'ELITE-CEB São José')
,('012' , 'ELITE-Curitiba Novo Mundo')
,('013' , 'ELITE-Ponta Grossa')
,('014' , 'ELITE-SJP - Ambiental')
,('015' , 'ELITE-SJP - Centro')
,('016' , 'ELITE-Umuarama')
,('017' , 'ELITE-Palhoça')
,('018' , 'ELITE-CUB Mar Paulista')
,('019' , 'ELITE-Floresta')
,('020' , 'ELITE-Ideal Santo André')
,('021' , 'ELITE-Santana')
,('022' , 'ELITE-Piracicaba')
,('023' , 'ELITE-Monteiro Lobato Itu')
,('024' , 'ELITE-Opção Mauá')
,('025' , 'ELITE-JAÚ')
,('026' , 'ELITE-TABOÃO DA SERRA')
,('027' , 'ELITE-Itatiba')
,('028' , 'ELITE-Jundiaí')
,('029' , 'ELITE-IDESA TAUBATÉ/SP')
,('030' , 'ELITE-Cachoeirinha')
,('031' , 'ELITE-Itaquera')
,('032' , 'ELITE-Bangu')
,('033' , 'ELITE-Campo Grande 1')
,('034' , 'ELITE-Campo Grande 2')
,('035' , 'ELITE-Duque de Caxias')
,('036' , 'ELITE-Guadalupe')
,('037' , 'ELITE-Iguaçuano')
,('038' , 'ELITE-Ilha do Governador')
,('039' , 'ELITE-Irajá')
,('040' , 'ELITE-Madureira 1')
,('041' , 'ELITE-Madureira 2')
,('042' , 'ELITE-Madureira 3')
,('043' , 'ELITE-Nilópolis')
,('044' , 'ELITE-Norte Shopping')
,('045' , 'ELITE-(Iguaçuano) Nova Iguaçu')
,('046' , 'ELITE-Realengo')
,('047' , 'ELITE-Saens Peña')
,('048' , 'ELITE-Santa Cruz')
,('049' , 'ELITE-São Gonçalo')
,('050' , 'ELITE-São João de Meriti')
,('051' , 'ELITE-Taquara')
,('052' , 'ELITE-Tijuca')
,('053' , 'ELITE-Três Rios')
,('054' , 'ELITE-Vila Valqueire')
,('055' , 'ELITE-Bonsucesso')
,('056' , 'ELITE-Itaguai')
,('057' , 'ELITE-Vila Velha')
,('058' , 'COLEGUIUM-Internacional Carajás')
,('059' , 'COLEGUIUM-Conceição do Mato Dentro')
,('060' , 'COLEGUIUM-Endereço Externo')
,('061' , 'COLEGUIUM-Alípio de Melo')
,('062' , 'COLEGUIUM-Internacional Buritis')
,('063' , 'COLEGUIUM-Carlos Prates')
,('064' , 'COLEGUIUM-Castelo')
,('065' , 'COLEGUIUM-Unidade Central Administrativa')
,('066' , 'COLEGUIUM-Gutierrez 2 (FUND/EM)')
,('067' , 'COLEGUIUM-Gutierrez 1 (Infantil)')
,('068' , 'COLEGUIUM-Jaraguá')
,('069' , 'COLEGUIUM-Jardim Canadá')
,('070' , 'COLEGUIUM-Lagoa Santa')
,('071' , 'COLEGUIUM-Manacás')
,('072' , 'COLEGUIUM-Ouro Preto')
,('073' , 'COLEGUIUM-Ouro Preto Integral')
,('074' , 'COLEGUIUM-Santa Amélia')
,('075' , 'COLEGUIUM-Sete Lagoas')
,('076' , 'COLEGUIUM-Internacional Belvedere')
,('077' , 'COLEGUIUM-Internacional Cidade Nova')
,('078' , 'COLEGUIUM-Divinópolis')
,('079' , 'COLEGUIUM-Internacional Pampulha Núcleo da Criança')
,('080' , 'COLEGUIUM-Coleguium Nova Suíça')
,('081' , 'PENSI-Alpha Campos dos Goytacazes')
,('082' , 'PENSI-Cabo Frio')
,('083' , 'PENSI-Casulo Rio das Ostras')
,('084' , 'PENSI-Friburgo')
,('085' , 'PENSI-Teresópolis')
,('086' , 'PENSI-Alojamento Pensi')
,('087' , 'PENSI-Alojamento Pensi (2022)')
,('088' , 'PENSI-Núcleo')
,('089' , 'PENSI-Flamengo')
,('090' , 'PENSI-Copacabana')
,('091' , 'PENSI-Freguesia')
,('092' , 'PENSI-Icaraí 1')
,('093' , 'PENSI-Icaraí 2')
,('094' , 'PENSI-Ilha do Governador')
,('095' , 'PENSI-Itaipu')
,('096' , 'PENSI-Lobo Torres')
,('097' , 'PENSI-Madureira')
,('098' , 'PENSI-Méier')
,('099' , 'PENSI-Petrópolis')
,('100' , 'PENSI-Recreio 1')
,('101' , 'PENSI-Recreio 2')
,('102' , 'PENSI-Tijuca 1')
,('103' , 'PENSI-Tijuca 2')
,('104' , 'PENSI-Vila da Penha')
,('105' , 'PENSI-Vila Isabel')
,('106' , 'PENSI-Vila da Penha 1')
,('107' , 'PENSI-Vila da Penha 2')
,('108' , 'ZEROHUM-Araruama')
,('109' , 'ZEROHUM-Cabo Frio')
,('110' , 'ZEROHUM-Itaboraí')
,('111' , 'ZEROHUM-Itaipuaçu')
,('112' , 'ZEROHUM-Maricá I')
,('113' , 'ZEROHUM-Maricá II')
,('114' , 'ZEROHUM-Nova Friburgo')
,('115' , 'ZEROHUM-Queimados')
,('116' , 'ZEROHUM-Seropédica')
,('117' , 'ZEROHUM-Alcântara')
,('118' , 'ZEROHUM-Bangu')
,('119' , 'ZEROHUM-Belford Roxo')
,('120' , 'ZEROHUM-Duque de Caxias')
,('121' , 'ZEROHUM-Nilópolis')
,('122' , 'ZEROHUM-Nova Iguaçu')
,('123' , 'ZEROHUM-Prata')
,('124' , 'ZEROHUM-São Gonçalo')
,('125' , 'ZEROHUM-São João de Meriti')
,('126' , 'ZEROHUM-Vilar dos Teles')
,('127' , 'ZEROHUM-Barra da Tijuca')
,('128' , 'ZEROHUM-Icaraí')
,('129' , 'ZEROHUM-Ilha do Governador')
,('130' , 'ZEROHUM-Itaipu')
,('131' , 'ZEROHUM-Madureira')
,('132' , 'ZEROHUM-Méier')
,('133' , 'ZEROHUM-Niterói')
,('134' , 'ZEROHUM-Olaria')
,('135' , 'ZEROHUM-Vila Isabel')
,('136' , 'ANGLO-SÃO JOSÉ')
,('137' , 'ANGLO-CRESCER - JUNDAÍ')
,('138' , 'ANGLO-CHÁCARA SANTO ANT.')
,('139' , 'ANGLO-Butantã')
,('140' , 'FORÇA MÁXIMA-Barra da Tijuca')
,('141' , 'FORÇA MÁXIMA-Campo Grande')
,('142' , 'FORÇA MÁXIMA-Duque de Caxias')
,('143' , 'FORÇA MÁXIMA-Laranjeiras')
,('144' , 'FORÇA MÁXIMA-Petrópolis')
,('145' , 'FORÇA MÁXIMA-Piabetá')
,('146' , 'FORÇA MÁXIMA-São Gonçalo')
,('147' , 'FORÇA MÁXIMA-São João')
,('148' , 'FORÇA MÁXIMA-Vila da Penha')
,('149' , 'FORÇA MÁXIMA-Nova Friburgo')
,('150' , 'FORÇA MÁXIMA-Taquara')
,('151' , 'FORÇA MÁXIMA-Nova Iguaçu')
,('152' , 'FORÇA MÁXIMA-Vilar dos Teles')
,('153' , 'WALPRINT-Pechincha')
,('154' , 'WALPRINT-Pedro Correia')
,('155' , 'WALPRINT-Recreio I')
,('156' , 'WALPRINT-Recreio II')
,('157' , 'WALPRINT-Taquara')
,('158' , 'WALPRINT-Bonsucesso')
,('159' , 'WALPRINT-BARRA 1')
,('160' , 'WALPRINT-BARRA 2')
,('161' , 'WALPRINT-BOTAFOGO')
,('162' , 'WALPRINT-RECREIO')
,('163' , 'WALPRINT-TIJUCA 1')
,('164' , 'WALPRINT-TIJUCA 2')
,('165' , 'IRIUM-ACEPE')
,('166' , 'IRIUM-ALEGRIA DO SABER (CEAS)')
,('167' , 'IRIUM-APRENDAKI')
,('168' , 'IRIUM-REYNALDO NASCIMENTO')
,('169' , 'IRIUM-BETA VESTIBULAR')
,('170' , 'IRIUM-CURSO TD CABO FRIO (PV)')
,('171' , 'IRIUM-FIPE')
,('172' , 'IRIUM-JED VÉRITAS PRÉ-VEST')
,('173' , 'IRIUM-LUIZ CARLOS BARBOSA')
,('174' , 'IRIUM-MÉRITO - DE MARTONE')
,('175' , 'IRIUM-PARAÍSO DO ESTUDANTE')
,('176' , 'IRIUM-SÃO LUCAS - BELFORD ROXO')
,('177' , 'IRIUM-SETEMBRO')
,('178' , 'IRIUM-SPIN')
,('179' , 'IRIUM-TERRA NOVA')
,('180' , 'IRIUM-TOP -RIO DAS OSTRAS')
,('181' , 'IRIUM-VIP')
,('182' , 'IRIUM-Intensive Educação')
,('183' , 'IRIUM-Curso Facilita')
,('184' , 'IRIUM-São Jerônimo')
,('185' , 'IRIUM-NEPAM')
,('186' , 'IRIUM-APOLLO 12 AREIA BRANCA (filial)')
,('187' , 'IRIUM-APOLLO 12 FERNANDA (matriz)')
,('188' , 'IRIUM-CORES E LETRAS')
,('189' , 'IRIUM-CORES VIVAS')
,('190' , 'IRIUM-COSENZA')
,('191' , 'IRIUM-Escola Fada Madrinha')
,('192' , 'IRIUM-ESCOLA L ACONCHEGO')
,('193' , 'IRIUM-FONTE DO SABER')
,('194' , 'IRIUM-GENESIS')
,('195' , 'IRIUM-GIRASSOL MATRIZ')
,('196' , 'IRIUM-JEANNE CRISTINE')
,('197' , 'IRIUM-Lápis de Cor')
,('198' , 'IRIUM-LUZ DA INFANCIA')
,('199' , 'IRIUM-MULTIPLA ESCOLHA')
,('200' , 'IRIUM-OLIVEIRA FERREIRA')
,('201' , 'IRIUM-ROSA DE SARON')
,('202' , 'IRIUM-São José')
,('203' , 'IRIUM-SÃO LUCAS - SANTA CRUZ')
,('204' , 'IRIUM-SEMENTE DO AMANHA')
,('205' , 'IRIUM-SILVA')
,('206' , 'IRIUM-Soane Centro Educacional')
,('207' , 'IRIUM-SOSSEGO DA MAMÃE')
,('208' , 'IRIUM-VIEGAS')
,('209' , 'IRIUM-DCC')
,('210' , 'IRIUM-POSITHYVOS')