CREATE TABLE TANQUE (
	ID INTEGER,
	TP_COMBUSTIVEL INTEGER,
	DS_COMBUSTIVEL VARCHAR,
	DS_TANQUE VARCHAR(20),
	CONSTRAINT PK_TANQUE PRIMARY KEY (ID)
);

CREATE TABLE BOMBA
(
    ID INTEGER NOT NULL,
    DS_BOMBA VARCHAR(50),
    ID_TANQUE INTEGER NOT NULL, DS_TANQUE VARCHAR(20),
    CONSTRAINT PK_BOMBA PRIMARY KEY(ID),
    CONSTRAINT FK_BOMBA_TANQUE FOREIGN KEY(ID_TANQUE) REFERENCES TANQUE(ID)
);

CREATE TABLE ABASTECIMENTO
(
    ID INTEGER NOT NULL,
    DT_ABASTECIMENTO TIMESTAMP NOT NULL,
    ID_BOMBA INTEGER NOT NULL,
    NR_LITRO DECIMAL(10,2) NOT NULL,
    VL_TOTAL DECIMAL(10,2) NOT NULL,
    VL_IMPOSTO DECIMAL(10,2) NOT NULL, DS_BOMBA VARCHAR(20), VL_LITRO DECIMAL(10,2),
    CONSTRAINT PK_ABASTECIMENTO PRIMARY KEY(ID),
    CONSTRAINT FK_ABASTECIMENTO_BOMBA FOREIGN KEY(ID_BOMBA) REFERENCES BOMBA(ID)
);