***ALUNOS 5º ANO SAEB 2015***

keep if id_municipio==3550308

rename id_prova_brasil ano

drop id_regiao

renam id_uf uf

rename id_escola codmec

rename id_dependencia_adm dep_adm

rename id_localizacao local

rename id_turma turma

rename id_turno turno

rename id_aluno cod_aluno

rename in_situacao_censo censo  /*indica se o aluno está consistente com o censo 2015*/

rename in_preenchimento_prova prova

drop  id_caderno id_bloco_1 id_bloco_2 tx_resp_bloco_1_lp tx_resp_bloco_2_lp tx_resp_bloco_1_mt tx_resp_bloco_2_mt

**QUESTIONÁRIO**

*var sexo
gen feminino=0
replace feminino=1 if tx_resp_q001=="B"
replace feminino=. if tx_resp_q001==""

*var branco/raça
gen branco=0
replace branco=1 if tx_resp_q002=="A"
replace branco=. if tx_resp_q002=="" | tx_resp_q002=="F"

*var idade
gen idade=0
replace idade=8 if tx_resp_q004=="A"
replace idade=9 if tx_resp_q004=="B"
replace idade=10 if tx_resp_q004=="C"
replace idade=11 if tx_resp_q004=="D"
replace idade=12 if tx_resp_q004=="E"
replace idade=13 if tx_resp_q004=="F"
replace idade=14 if tx_resp_q004=="G"
replace idade=15 if tx_resp_q004=="H"
replace idade=. if tx_resp_q004==""

*var tv/ se tem tv na casa..sim vale independente da quantidade de tvs
gen tv=0
replace tv=1 if tx_resp_q005=="B" | tx_resp_q005=="C" | tx_resp_q005=="D" | tx_resp_q005=="E"
replace tv=. if tx_resp_q005==""

*var geladeira/ se tem geladeira na casa..sim vale independente da quantidade de geladeiras
gen geladeira=0
replace geladeira=1 if tx_resp_q008=="B" | tx_resp_q008=="C" | tx_resp_q008=="D" | tx_resp_q008=="E"
replace geladeira=. if tx_resp_q008==""

*var carro/ se tem carro na casa..sim vale independente da quantidade de carros
gen carro=0
replace carro=1 if tx_resp_q012=="B" | tx_resp_q012=="C" | tx_resp_q012=="D" | tx_resp_q012=="E"
replace carro=. if tx_resp_q012==""

*var comp_casa/ se tem computador na casa..sim vale independente da quantidade de computadores
gen comp_casa=0
replace comp_casa=1 if tx_resp_q013=="B" | tx_resp_q013=="C" | tx_resp_q013=="D" | tx_resp_q013=="E"
replace comp_casa=. if tx_resp_q013==""

*var banh_casa / se tem benheiro na casa..sim vale independente da quantidade de banheiros
gen banh_casa=0
replace banh_casa=1 if tx_resp_q014=="B" | tx_resp_q014=="C" | tx_resp_q014=="D" | tx_resp_q014=="E"
replace banh_casa=. if tx_resp_q014==""

*var esc_mae_em/escolaridade mãe...1 indica que concluiu apenas o EM
gen esc_mae_em=0
replace esc_mae_em=1 if tx_resp_q019=="E"
replace esc_mae_em=. if tx_resp_q019=="G"

*var esc_mae_sup/escolaridade mãe...1 indica que concluiu o ensino superior
gen esc_mae_sup=0
replace esc_mae_sup=1 if tx_resp_q019=="F"
replace esc_mae_sup=. if tx_resp_q019=="G"

*var esc_pai_em/escolaridade pai...1 indica que concluiu apenas o EM
gen esc_pai_em=0
replace esc_pai_em=1 if tx_resp_q023=="E"
replace esc_pai_em=. if tx_resp_q023=="G"

*var esc_pai_em/escolaridade pai...1 indica que concluiu apenas o ensino superior
gen esc_pai_sup=0
replace esc_pai_sup=1 if tx_resp_q023=="F"
replace esc_pai_sup=. if tx_resp_q023=="G"

*var trabalho/ indica se o aluno trabalha fora de casa (no momento do preenchimento)
gen trab_aluno=0
replace trab_aluno=1 if tx_resp_q042=="A"

*var de quando entrou na escola/ 1 indica que entrou antes da pré-escola (creche e pré-escola)
gen inicio_esc=0
replace inicio_esc=1 if tx_resp_q043=="A"
replace inicio_esc=1 if tx_resp_q043=="B"


***ALUNOS 9º ANO SAEB 2015***

keep if id_municipio==3550308

rename id_prova_brasil ano

drop id_regiao

renam id_uf uf

rename id_escola codmec

rename id_dependencia_adm dep_adm

rename id_localizacao local

rename id_turma turma

rename id_turno turno

rename id_aluno cod_aluno

rename in_situacao_censo censo  /*indica se o aluno está consistente com o censo 2015*/

rename in_preenchimento_prova prova

drop  id_caderno id_bloco_1 id_bloco_2 tx_resp_bloco_1_lp tx_resp_bloco_2_lp tx_resp_bloco_1_mt tx_resp_bloco_2_mt

**QUESTIONÁRIO**

*var sexo
gen feminino=0
replace feminino=1 if tx_resp_q001=="B"
replace feminino=. if tx_resp_q001==""

*var branco/raça
gen branco=0
replace branco=1 if tx_resp_q002=="A"
replace branco=. if tx_resp_q002=="" | tx_resp_q002=="F"

*var idade / para 9º ano  não há a pergunta de idade, apenas do ano em que nasceu. Assim, construi a variável
*subtraindo 2015-anodenascimento.

gen idade=0
replace idade=12 if tx_resp_q004=="A"
replace idade=13 if tx_resp_q004=="B"
replace idade=14 if tx_resp_q004=="C"
replace idade=15 if tx_resp_q004=="D"
replace idade=16 if tx_resp_q004=="E"
replace idade=17 if tx_resp_q004=="F"
replace idade=18 if tx_resp_q004=="G"
replace idade=19 if tx_resp_q004=="H"
replace idade=. if tx_resp_q004==""

*var tv/ se tem tv na casa..sim vale independente da quantidade de tvs
gen tv=0
replace tv=1 if tx_resp_q005=="B" | tx_resp_q005=="C" | tx_resp_q005=="D" | tx_resp_q005=="E"
replace tv=. if tx_resp_q005==""

*var geladeira/ se tem geladeira na casa..sim vale independente da quantidade de geladeiras
gen geladeira=0
replace geladeira=1 if tx_resp_q008=="B" | tx_resp_q008=="C" | tx_resp_q008=="D" | tx_resp_q008=="E"
replace geladeira=. if tx_resp_q008==""

*var carro/ se tem carro na casa..sim vale independente da quantidade de carros
gen carro=0
replace carro=1 if tx_resp_q012=="B" | tx_resp_q012=="C" | tx_resp_q012=="D" | tx_resp_q012=="E"
replace carro=. if tx_resp_q012==""

*var comp_casa/ se tem computador na casa..sim vale independente da quantidade de computadores
gen comp_casa=0
replace comp_casa=1 if tx_resp_q013=="B" | tx_resp_q013=="C" | tx_resp_q013=="D" | tx_resp_q013=="E"
replace comp_casa=. if tx_resp_q013==""

*var banh_casa / se tem benheiro na casa..sim vale independente da quantidade de banheiros
gen banh_casa=0
replace banh_casa=1 if tx_resp_q014=="B" | tx_resp_q014=="C" | tx_resp_q014=="D" | tx_resp_q014=="E"
replace banh_casa=. if tx_resp_q014==""

*var esc_mae_em/escolaridade mãe...1 indica que concluiu apenas o EM
gen esc_mae_em=0
replace esc_mae_em=1 if tx_resp_q019=="E"
replace esc_mae_em=. if tx_resp_q019=="G"

*var esc_mae_sup/escolaridade mãe...1 indica que concluiu o ensino superior
gen esc_mae_sup=0
replace esc_mae_sup=1 if tx_resp_q019=="F"
replace esc_mae_sup=. if tx_resp_q019=="G"

*var esc_pai_em/escolaridade pai...1 indica que concluiu apenas o EM
gen esc_pai_em=0
replace esc_pai_em=1 if tx_resp_q023=="E"
replace esc_pai_em=1 if tx_resp_q023=="G"

*var esc_pai_em/escolaridade pai...1 indica que concluiu apenas o ensino superior
gen esc_pai_sup=0
replace esc_pai_sup=1 if tx_resp_q023=="F"
replace esc_pai_sup=1 if tx_resp_q023=="G"

*var trabalho/ indica se o aluno trabalha fora de casa (no momento do preenchimento)
gen trab_aluno=0
replace trab_aluno=1 if tx_resp_q045=="A"

*var de quando entrou na escola/ 1 indica que entrou antes da pré-escola (creche e pré-escola)
gen inicio_esc=0
replace inicio_esc=1 if tx_resp_q046=="A"
replace inicio_esc=1 if tx_resp_q046=="B"

*manter questão que investiga se querem continuar estudando após 9º ano.
rename tx_resp_q057 conclusao9
 


***ALUNOS 3º EM SAEB 2015***

**aparentemente não foram incluídos alunos da cidade de SP
**LER SOBRE
