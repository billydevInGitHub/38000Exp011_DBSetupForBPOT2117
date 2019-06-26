create database db_orange;


---------------------------create table RT_appl_info--------------

drop table rt_appl_info

create table rt_appl_info   (
rt_appl_id  BIGINT NOT NULL auto_increment,
dt_application_name varchar(200),
application_name varchar(120), 
generation_number BIGINT  , 
trigger_time timestamp, 
trigger_user_id varchar(30), 
state varchar(6),
description varchar(40) , 
primary key(RT_appl_id))   ; 






---------------------------- create table  RT_job_Info  ----------------- 
----column state: refer to: C:\Billydev080107\MyEnabil\03_MyDiagrams\160123-1-ENCADiagrams\009-TechDetails\CAWAReplace_jobsstates_SysView_151105

drop table rt_job_info;

create table rt_job_Info (
job_id bigint NOT NULL AUTO_INCREMENT,
job_type varchar(6),
job_name varchar(120), 
qualifier varchar(20), 
application_name varchar(120),
appl_generation_number BIGINT, 
predecessor_names varchar(200),    
orig_predecessor_names varchar(200),    
predecessor_condition  varchar(6),                    
successor_names varchar(200),                          
schedule_time timestamp, 
start_time datetime, 
end_time datetime, 
state varchar(6),
tag_for_wait_states  varchar(30), 
tag_for_run_states varchar(30), 
agent_name varchar(30),
script varchar(400),
arguments_of_script varchar(800),
userid varchar(20),
shell varchar(10),
expected_execution_time_in_min int,
extra_tags varchar(100),
extension_field varchar(100),                    
return_code varchar(6),
spool_info varchar(200), 
general_runtime_info varchar(200), 
engine_name varchar(25), 
completion_code varchar(6),
description varchar(200),
primary key(job_id)
);


--------------------create table appl_diagram_rect-----------

drop table appl_diagram_rect

create table appl_diagram_rect   (
dt_application_name varchar(200),
job_name varchar(120), 
x SMALLINT, 
y SMALLINT,
width SMALLINT,
height SMALLINT, 
x_job_name SMALLINT,
y_job_name SMALLINT 
);


--------------------create table appl_diagram_line-----------


drop table  appl_diagram_line

create table appl_diagram_line  (
dt_application_name varchar(200),
x1 SMALLINT,
y1 SMALLINT,
x2 SMALLINT, 
y2 SMALLINT,
hasarrow varchar(2)
);

-------------------create table   DT_appl_info-----------

drop table dt_appl_info ;

create table dt_appl_info  (
appl_id bigint NOT NULL AUTO_INCREMENT,
dt_application_name varchar(200), 
applscript MEDIUMTEXT, 
upload_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
appl_create_user_id varchar(30), 
description varchar(40),
primary key(appl_id)
); 


-------------------create table   DT_job_info-----------

drop table dt_job_info; 

create table dt_job_info (
job_id bigint NOT NULL AUTO_INCREMENT,
job_type varchar(6),
dt_job_name varchar(400), 
qualifier varchar(20),
dt_application_name varchar(200), 
predecessor_names  varchar(400),                      
predecessor_condition  varchar(6),                 
successor_names varchar(400),                        
state varchar(3),
tag_for_wait_states  varchar(30), 
tag_for_run_states varchar(30),
script_userid varchar(30),  
agent_name varchar(30),
script varchar(400),
arguments_of_script varchar(800),
description varchar(200),
primary key(job_id)
);  
                 

------------------create table event_info
-----schedule: should be schedule code parsed to certain datetime etc. 

drop table event_info ; 

create table event_info(
event_name varchar(200) primary key, 
dt_application_name varchar(200),
remarks  varchar(100),
schedule  varchar(100),
next_scheduled_time timestamp, 
state  varchar(20), 
user_parameters varchar(800),
event_create_user_id   varchar(50), 
event_create_time datetime, 
description varchar(400)) ;



---following added by billy  (user table must be lower case or might conflict with db system table)----


drop table user;

 create table user  (
id int, 
firstname  varchar(200),
lastname varchar(200),
username varchar(200),
password  varchar(200),
salary int, 
age int)   



   