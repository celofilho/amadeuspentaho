

CREATE TABLE dim_curso
(
  id_curso_sk BIGSERIAL
, version INTEGER
, date_from TIMESTAMP
, date_to TIMESTAMP
, id_curso INTEGER
, nome VARCHAR(255)
, descricao VARCHAR(2000)
, data_abertura  TIMESTAMP
, data_fechamento  TIMESTAMP
)
;CREATE INDEX idx_dim_curso_lookup ON dim_curso(id_curso)
;
CREATE INDEX idx_dim_curso_tk ON dim_curso(id_curso_sk)
;



CREATE TABLE dim_aluno
(
  id_aluno_sk BIGSERIAL
, version INTEGER
, date_from TIMESTAMP
, date_to TIMESTAMP
, id_aluno INTEGER
, nome VARCHAR(255)
)
;CREATE INDEX idx_dim_aluno_lookup ON dim_aluno(id_aluno)
;
CREATE INDEX idx_dim_aluno_tk ON dim_aluno(id_aluno_sk)
;

CREATE TABLE dim_curriculo
(
  id_curriculo_sk BIGSERIAL
, version INTEGER
, date_from TIMESTAMP
, date_to TIMESTAMP
, id_curriculo INTEGER
, titulo VARCHAR(255)
, instituicao VARCHAR(255)
, ano INTEGER
)
;CREATE INDEX idx_dim_curriculo_lookup ON dim_curriculo(id_curriculo)
;
CREATE INDEX idx_dim_curriculo_tk ON dim_curriculo(id_curriculo_sk)
;

CREATE TABLE dim_professor
(
  id_professor_sk BIGSERIAL
, version INTEGER
, date_from TIMESTAMP
, date_to TIMESTAMP
, id_professor INTEGER
, nome VARCHAR(255)
, cpf VARCHAR(255)
, sexo VARCHAR(10)
)
;CREATE INDEX idx_dim_professor_lookup ON dim_professor(id_professor)
;
CREATE INDEX idx_dim_professor_tk ON dim_professor(id_professor_sk)
;

CREATE TABLE dim_modulo
(
  id_modulo_sk BIGSERIAL
, version INTEGER
, date_from TIMESTAMP
, date_to TIMESTAMP
, id_modulo INTEGER
, nome VARCHAR(255)
, descricao VARCHAR(1500)
)
;CREATE INDEX idx_dim_modulo_lookup ON dim_modulo(id_modulo)
;
CREATE INDEX idx_dim_modulo_tk ON dim_modulo(id_modulo_sk)
;

CREATE TABLE dim_material
(
  id_material_sk BIGSERIAL
, version INTEGER
, date_from TIMESTAMP
, date_to TIMESTAMP
, id_material INTEGER
, extensao VARCHAR(255)
, nome_arquivante VARCHAR(255)
)
;CREATE INDEX idx_dim_material_lookup ON dim_material(id_material)
;
CREATE INDEX idx_dim_material_tk ON dim_material(id_material_sk)
;

CREATE TABLE dim_forum
(
  id_forum_sk BIGSERIAL
, version INTEGER
, date_from TIMESTAMP
, date_to TIMESTAMP
, id_forum INTEGER
, nome VARCHAR(255)
)
;CREATE INDEX idx_dim_forum_lookup ON dim_forum(id_forum)
;
CREATE INDEX idx_dim_forum_tk ON dim_forum(id_forum_sk)
;



CREATE TABLE dim_tempo
(
  DATE_SK DOUBLE PRECISION
, YEAR_NUMBER SMALLINT
, MONTH_NUMBER SMALLINT
, DAY_OF_YEAR_NUMBER SMALLINT
, DAY_OF_MONTH_NUMBER SMALLINT
, DAY_OF_WEEK_NUMBER SMALLINT
, WEEK_OF_YEAR_NUMBER SMALLINT
, DAY_NAME VARCHAR(30)
, MONTH_NAME VARCHAR(30)
, QUARTER_NUMBER DOUBLE PRECISION
, QUARTER_NAME VARCHAR(2)
, YEAR_QUARTER_NAME VARCHAR(32)
, WEEKEND_IND VARCHAR(1)
, DAYS_IN_MONTH_QTY SMALLINT
, DAY_DESC TEXT
, WEEK_SK DOUBLE PRECISION
, DAY_DATE TIMESTAMP
, WEEK_NAME VARCHAR(32)
, WEEK_OF_MONTH_NUMBER DOUBLE PRECISION
, WEEK_OF_MONTH_NAME TEXT
, YEAR_SK DOUBLE PRECISION
, MONTH_SK DOUBLE PRECISION
, QUARTER_SK DOUBLE PRECISION
, DAY_OF_WEEK_SORT_NAME VARCHAR(60)
, YEAR_SORT_NUMBER VARCHAR(4)
)
;CREATE INDEX idx_dim_tempo_lookup ON dim_tempo(DATE_SK)
;



CREATE TABLE fato_pedidos
(
  id_pedido INTEGER
, id_professor_sk BIGINT
, id_curriculo_sk BIGINT
, DATE_FAT  DATE
)
;

CREATE TABLE fato_avaliacoes_realizadas
(
  id_avaliacao INTEGER
, id_modulo_sk BIGINT
, id_curso_sk BIGINT
, id_aluno_sk BIGINT
, DATE_FAT  DATE
)
;

CREATE TABLE fato_historico_curso
(
  tempo_conclusao TEXT
, maximo_alunos INTEGER
, initialcoursedate  TIMESTAMP
, id_professor_sk INTEGER
, id_curso_sk INTEGER
, DATE_FAT  DATE
)
;

CREATE TABLE fato_historico_curso
(
  maximo_alunos INTEGER
, id_curso INTEGER
, id_professor_sk BIGINT
, id_curso_sk BIGINT
, DATE_FAT  DATE
)
;

CREATE TABLE fato_historico_materiais
(
  id_material_sk BIGINT
, id_modulo_sk BIGINT
, id_professor_sk BIGINT
, id_material INTEGER
, DATE_FAT  DATE
)
;

CREATE TABLE fato_mensagens_professor
(
  id_forum_sk BIGINT
, id_modulo_sk BIGINT
, id_professor_sk BIGINT
, id_mensagem INTEGER
, DATE_FAT  DATE
)
;