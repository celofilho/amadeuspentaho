# amadeuspentaho
Projeto de Business Intelligence para o Amadeus LMS desenvolvido como Trabalho de Conclusão de Curso na faculdade Estácio do Recife
## Como rodar o Projeto?

- Esse Projeto foi desenvolvido original na Suíte Pentaho versão 5.3 (http://wiki.pentaho.com/display/COM/Getting+Started+Downloads).

- Nesse projeto tem arquivos para: BI-SERVER (Business Intelligence Server), PDI (Kettle), Schema Workbench
- Execute o arquivo SQL (PostgresSQL) para a criação das tabelas FATO e Dimensão.
- Antes de rodar os arquivos é necessário configurar as conexões do Banco e Datawarehouse
- No PDI:  (View / Transformações / Conexões)
- No Schema Workbench: (Options / Connection) - Antes de 
- No BI-Server: (File / Manage Data Sources), crie com o nome de SchemaAmadeus AmadeusDW
- Abrir os Arquivos do PDI (rode primeiro os arquivos de DIM_ e depois os FATO_)
- Abrir o SchemaAmadeus.xml no programa Schema Workbench

## Como Contribuir?

Primeiramente você deve forkar o projeto aqui pelo Github. O ideal é para quem conhece a ferramenta de EAD Amadeus LMS. 


