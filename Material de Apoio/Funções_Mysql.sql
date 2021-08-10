--Funções mais utilizadas no MySql

--Funções de Agregação
AVG() - retorna a média aritmética.
select avg(preco_venda_cd) from cd;

COUNT(*) - retorna a quantidade de registros na tabela.
select count(*) from gravadora;

MAX() - retorna o maior valor
select max(preco_venda_cd) from cd;

MIN() - retorna o menor valor
select min(preco_venda_cd) from cd;

SUM() - retorna o somatório
select sum(preco_venda_cd) from cd;

MOD() - retona o resto da divisão
select mod(3,2);

FLOOR(x) - retorna o menor valor inteiro menor que x
select floor(1.123);

CEIL(x) - retorna o maior valor inteiro maior que x
select ceil(1.123);

ROUND() - retorna o valor arredondado
select round(1.123);
select round(1.123 , 1);

POWER(X,Y) - retorna o valor de x elevado a potência de y
select power(4,2)

PI - retorna o valor de PI
select pi()

TRUNCATE(X,D) - retorna o  valor truncado de um número.
select truncate(1.123 , 2)

--Funções com String
ASCII() - retorna o código da tabela 'ASC'
select ascii('a');
select ascii('A'),ascii('l'),ascii('e'),ascii('x');

CHAR() - retorna o caracter de acordo com código da tabela 'ASC'
select char(97);
select char(65), char(108), char(101), char(120)

CONCAT() - retorna a concatenação de string
select concat('alex ','sandro ', 'etec')

FIND_IN_SET - retorna o índice do caracter na string separada por vírgula.
select find_in_set('d', 'a,b,c,d');

UPPER() - converte para maiúsculas
select upper('alex');

LOWER() - converte para minusculas
select lower('ALEX');

LEFT() - retorna a string cortada a esquerda
select left('alex sandro', 5);

LENGTH - retorna o tamanha da String
select length('alex sandro');

LTRIM() - retira os espaços em branco da string a esquerda
select ltrim(   'alex sandro        ');

RTRIM() - retira os espaços em branco da string a direita
select rtrim(   ' alex sandro ');

select ltrim(rtrim(   ' alex sandro '));

TRIM() - retira os espaços em branco a esquerda e a direita da string
select trim('   alex sandro     ');

SUBSTRING() - recorta uma string
select substring('alex sandro',1,5);

REPEAT() - repete a string
select repeat('alex' , 3);

REPLACE() - troca a string
select replace('www.etec.com.br', 'w', 'W');

REVERSE() - inverte a string
select reverse('ordnas xela');

RIGHT() - retorna a string cortada a direita
select right('alex sandro', 4);

LPAD() - completa a string a esquerda
select lpad('alex', 5, '?')

RPAD() - completa a string a direita
select rpad('alex', 5, '?')

STRCMP() - compara string retorna 0 se for igual -1 se a primeira for menor e 1 se a segunda for maior
select strcmp('alex','alex');

--Funções de data e hora
DATE() - extrai a data
select date('2013/01/01 12:00:00');

TIME() - extrai a hora
select time('2013/01/01 12:00:00');

DAYOFWEEK() - retorna o dia da semana 1 = Domingo, 2 = segunda, 3 = Terça.....
select dayofweek('2013/11/04 12:00:00');

DAY() - retorna o dia da data
select day('2013/11/04 12:00:00');

MONTH() - retorna o mês da data
select month('2013/11/04 12:00:00');

YEAR() - retorna o ano da data
select year('2013/11/04 12:00:00');

HOUR()   - retorna a hora
select hour('2013/11/04 12:00:00');

MINUTE() - retorna o minuto
select minute('2013/11/04 12:00:00');

SECOND() - retorna o segundo
select second('2013/11/04 12:00:00');

DATE_ADD() - adiciona um intervalo na data
select date_add(now(), interval -1 day);

DATEDIFF() - direfença entre duas datas
select datediff(now(), '20130101');

TO_DAYS() - retorna em dias
select to_days(now());

LAST_DAY() - último dia do mês da data
select last_day('20130101');

retorna a data atual
CURDATE()
CURRENT_DATE()
select curdate();
select current_date();

retorna a hora
SELECT CURTIME();
select current_time();

retorna a data e hora
select now();