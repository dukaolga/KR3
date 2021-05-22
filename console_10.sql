select * from employee;
select * from employee where department_id = 5;
select * from employee where category_id = 1;
select * from employee where age >= 25;

select * from employee where position = 'manager';
# хочет джойн таблицы с департаментами например

select * from projects where curdate() >= projects.start and curdate() <= projects.finish;

select * from coursework.contracts where curdate() >= contracts.begin and curdate() <= contracts.end;
# проблема в несоотвествии открытых проектов с открытыми договорами,
# договор не может закончится, а проект остаться открытым,
# непонятно отношение 1 проект для нескольких договоров и его статус
select * from projects p where p.start >= 'd1' and p.finish <= 'd2';
select * from projects p where p.start between 'd1' and 'd2';
select * from projects p where p.finish between 'd1' and 'd2';

delete from cont_proj;

# where (('2020-05-20' <= finish and finish <= '2020-10-20')
#     or ('2020-05-20' <= start  and start  <= '2020-10-30')
#     or ('2020-05-20' >= start  and finish >= '2020-10-30'))
# не работает + надо такое же для договоров с кастом интервалом

select * from coursework.contracts, cont_proj, projects
where contracts.id = 5 and contracts.id = cont_proj.contracts_id
and projects_id = cont_proj.contracts_id;
# там таблица связей не заполняется + сделать обратное отношение

select * from subcontracts;

select * from equipment_projects, equipment where equipment_id = 10
                                                   and equipment_projects.equipment_id = equipment.id;
# нужно эффективность, обсяг, а это наверное подсчет, а не селект + надо джойн






