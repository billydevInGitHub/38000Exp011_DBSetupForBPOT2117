create database db_orange;


---------------------------create table RT_appl_info--------------

drop table RT_appl_info

create table RT_appl_info   (
RT_appl_id  BIGINT NOT NULL auto_increment,
DT_Application_Name varchar(200),
Application_Name varchar(120), 
generation_number BIGINT  , 
trigger_time timestamp, 
trigger_user_id varchar(30), 
State varchar(6),
description varchar(40) , 
primary key(RT_appl_id))   ; 






---------------------------- create table  RT_Job_Info  ----------------- 
----column State: refer to: C:\Billydev080107\MyEnabil\03_MyDiagrams\160123-1-ENCADiagrams\009-TechDetails\CAWAReplace_JobsStates_SysView_151105

drop table RT_Job_info;

create table RT_Job_Info (
Job_Id bigint NOT NULL AUTO_INCREMENT,
Job_Type varchar(6),
Job_Name varchar(120), 
Qualifier varchar(20), 
Application_Name varchar(120),
appl_generation_number BIGINT, 
Predecessor_Names varchar(200),    
Orig_Predecessor_Names varchar(200),    
Predecessor_Condition  varchar(6),                    
Successor_Names varchar(200),                          
Schedule_Time timestamp, 
Start_Time datetime, 
End_Time datetime, 
State varchar(6),
tag_for_wait_states  varchar(30), 
tag_for_run_states varchar(30), 
Agent_Name varchar(30),
Script varchar(400),
Arguments_Of_Script varchar(800),
UserID varchar(20),
shell varchar(10),
expected_execution_time_in_min int,
extra_tags varchar(100),
extension_field varchar(100),                    
return_code varchar(6),
spool_info varchar(200), 
general_runtime_info varchar(200), 
engine_name varchar(25), 
Completion_Code varchar(6),
Description varchar(200),
primary key(Job_Id)
);


--------------------create table appl_diagram_rect-----------

drop table appl_diagram_rect

create table appl_diagram_rect   (
DT_Application_Name varchar(200),
Job_name varchar(120), 
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
DT_Application_Name varchar(200),
x1 SMALLINT,
y1 SMALLINT,
x2 SMALLINT, 
y2 SMALLINT,
hasArrow varchar(2)
);

-------------------create table   DT_appl_info-----------

drop table dt_appl_info ;

create table dt_appl_info  (
Appl_Id bigint NOT NULL AUTO_INCREMENT,
DT_Application_Name varchar(200), 
applscript MEDIUMTEXT, 
upload_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
appl_create_user_id varchar(30), 
description varchar(40),
primary key(Appl_Id)
); 


-------------------create table   DT_job_info-----------

drop table DT_JOB_info; 

create table DT_Job_Info (
Job_Id bigint NOT NULL AUTO_INCREMENT,
Job_Type varchar(6),
DT_Job_Name varchar(400), 
Qualifier varchar(20),
DT_Application_Name varchar(200), 
Predecessor_Names  varchar(400),                      
Predecessor_Condition  varchar(6),                 
Successor_Names varchar(400),                        
State varchar(3),
tag_for_wait_states  varchar(30), 
tag_for_run_states varchar(30),
Script_userid varchar(30),  
Agent_Name varchar(30),
Script varchar(400),
Arguments_Of_Script varchar(800),
Description varchar(200),
primary key(Job_Id)
);  
                 

------------------create table event_info
-----schedule: should be schedule code parsed to certain datetime etc. 

drop table event_info ; 

create table event_info(
event_name varchar(200) primary key, 
DT_Application_Name varchar(200),
remarks  varchar(100),
schedule  varchar(100),
next_scheduled_time timestamp, 
state  varchar(20), 
user_parameters varchar(800),
event_create_user_id   varchar(50), 
event_create_time datetime, 
description varchar(400)) ;



---following added by billy  (user table must be lower case or might conflict with db system table)----
 create table user  (
id int, 
firstname  varchar(200),
lastname varchar(200),
username varchar(200),
password  varchar(200),
salary int, 
age int)   



   