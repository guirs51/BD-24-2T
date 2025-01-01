
-- comando para ver os atributos da tabela crime_scene_report 
select * from crime_scene_report where city = 'SQL City'and type = 'murder'
-- condição para que somente assasinatos na cidade SQL seja mostrado 

-- selecionado a tabele person e mostrando na tabela apenas os endereço "Northwestern Dr"
-- e mostrar com os numeros das casas em ordem decrescente 
select *
from person
where address_street_name = 'Northwestern Dr'
order by address_number desc 

-- comando para ver a tabela person , para ver somente o endereço Franklin Ave
select * from person where  address_street_name = 'Franklin Ave'

-- comando para ver a tabela interview, e ver somente os atributos(depoimento e entre outros ) das testemunhas 
select *
from interview 
where person_id in (14887, 16371)

select * -- selecionando todos os atributos 
from drivers_license as dl -- dizendo uma table de origem e mudando o nome para dl 
inner join person as p on dl.id = p.license_id -- dizendo outra table  e buscando uma relção entre as cheves primaria e estangeira 
inner join get_fit_now_member as gf on p.id = gf.person_id -- dizendo outra table  e buscando uma relção entre as cheves primaria e estangeira
inner join get_fit_now_check_in as ci on gf.id = ci.membership_id -- dizendo outra table  e buscando uma relção entre as cheves primaria e estangeira
where plate_number like '%H42W%' -- condiçao para buscar resultados onde a placa tinha essa esses letras e numeros
and membership_status = 'gold' -- condição para buscar somente o membro com status "gold"

select *  -- selecionando tods os atributos 
from interview -- dizendo a tabela 
where person_id = 67318 -- condição para buscar somente esse person_id 

select p.*, fb.*  -- selecionando todos os atributos das tabelas P e FB
from drivers_license as dl -- dizendo uma tabela e mudando o nome para busca
inner join person  as p on dl.id = p.license_id --dizendo uma tabela e mudando o nome para busca 
inner join facebook_event_checkin as fb on fb.person_id = p.id -- dizendo uma tabela e mudando o nome para busca
where hair_color = 'red' -- condição para busca
and gender = 'female' -- condição para busca
and car_make = 'Tesla' -- condição para busca

-- nome do vilã: Miranda Priestly
