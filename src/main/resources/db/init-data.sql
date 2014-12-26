drop table ru_new_sys_user;

create table ru_new_sys_user(
	vusername varchar2(32),
	vpassword varchar2(32),
	vempname varchar2(32)
);

insert into ru_new_sys_user(vusername, vpassword, vempname) values('zhangsan', '11111', '张三');

insert into ru_new_sys_user(vusername, vpassword, vempname) values('admin', 'admin', '管理员');

drop table ru_new_sys_menu;

create table ru_new_sys_menu(
	imenu_code integer not null,
	vmenu_desc varchar2(256),
	vmenu_stage_desc varchar2(20),	
	ifcode integer default 0,
	vmenu_uri varchar2(64),
	vcreated varchar2(10),
	dcrt_date date,
	vupdated varchar2(10),
	dup_date date
);

alter table ru_new_sys_menu add constraint pk_ru_new_sys_menu primary key (imenu_code);

insert into ru_new_sys_menu (imenu_code, vmenu_desc, vmenu_stage_desc, ifcode, vmenu_uri, vcreated, dcrt_date, vupdated, dup_date) 
values(1, '意向申报','一级菜单',0,'', 'ru-001',sysdate, 'ru-001',sysdate);

insert into ru_new_sys_menu (imenu_code, vmenu_desc, vmenu_stage_desc, ifcode, vmenu_uri, vcreated, dcrt_date, vupdated, dup_date) 
values(8, '系统管理','一级菜单',0,'', 'ru-001',sysdate, 'ru-001',sysdate);

insert into ru_new_sys_menu (imenu_code, vmenu_desc, vmenu_stage_desc, ifcode, vmenu_uri, vcreated, dcrt_date, vupdated, dup_date) 
values(2, '特许经销商','二级菜单',1,'', 'ru-001',sysdate, 'ru-001',sysdate);

insert into ru_new_sys_menu (imenu_code, vmenu_desc, vmenu_stage_desc, ifcode, vmenu_uri, vcreated, dcrt_date, vupdated, dup_date) 
values(9, '模块管理','二级菜单',1,'', 'ru-001',sysdate, 'ru-001',sysdate);

insert into ru_new_sys_menu (imenu_code, vmenu_desc, vmenu_stage_desc, ifcode, vmenu_uri, vcreated, dcrt_date, vupdated, dup_date) 
values(3, '申请条件','三级菜单',2,'/console/apply/condition/p/4s/', 'ru-001',sysdate, 'ru-001',sysdate);

insert into ru_new_sys_menu (imenu_code, vmenu_desc, vmenu_stage_desc, ifcode, vmenu_uri, vcreated, dcrt_date, vupdated, dup_date) 
values(4, '申请流程','三级菜单',2,'/console/apply/flow/p/4s/', 'ru-001',sysdate, 'ru-001',sysdate);

insert into ru_new_sys_menu (imenu_code, vmenu_desc, vmenu_stage_desc, ifcode, vmenu_uri, vcreated, dcrt_date, vupdated, dup_date) 
values(5, '申请信息查询','三级菜单',2,'/console/apply/query/p/4s/', 'ru-001',sysdate, 'ru-001',sysdate);

insert into ru_new_sys_menu (imenu_code, vmenu_desc, vmenu_stage_desc, ifcode, vmenu_uri, vcreated, dcrt_date, vupdated, dup_date) 
values(6, '申请审批','三级菜单',2,'/console/apply/approval/p/4s/', 'ru-001',sysdate, 'ru-001',sysdate);

insert into ru_new_sys_menu (imenu_code, vmenu_desc, vmenu_stage_desc, ifcode, vmenu_uri, vcreated, dcrt_date, vupdated, dup_date) 
values(7, '意向批复','三级菜单',2,'/console/apply/notice/p/4s/', 'ru-001',sysdate, 'ru-001',sysdate);

insert into ru_new_sys_menu (imenu_code, vmenu_desc, vmenu_stage_desc, ifcode, vmenu_uri, vcreated, dcrt_date, vupdated, dup_date) 
values(10, '菜单管理','三级菜单',2,'/console/support/menu/', 'ru-001',sysdate, 'ru-001',sysdate);

insert into ru_new_sys_menu (imenu_code, vmenu_desc, vmenu_stage_desc, ifcode, vmenu_uri, vcreated, dcrt_date, vupdated, dup_date) 
values(11, '权限管理','三级菜单',2,'/console/support/role/', 'ru-001',sysdate, 'ru-001',sysdate);

insert into ru_new_sys_menu (imenu_code, vmenu_desc, vmenu_stage_desc, ifcode, vmenu_uri, vcreated, dcrt_date, vupdated, dup_date) 
values(12, '网络形态','三级菜单',2,'/console/support/network/', 'ru-001',sysdate, 'ru-001',sysdate);