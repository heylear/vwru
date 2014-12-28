drop table ru_new_sys_user;

create table ru_new_sys_user(
	nuserid number not null,
	vusername varchar2(32) not null,
	vpassword varchar2(32) not null,
	vempname varchar2(32),
	vstatus varchar2(2) not null default '1',
	vcreated varchar2(10) not null,
	dcrt_date date not null,
	vupdated varchar2(10),
	dup_date date
);

alter table ru_new_sys_user add constraint pk_ru_sys_user primary key(nuserid);

drop sequence seq_ru_sys_user;

create sequence seq_ru_sys_user start with 10000;

comment on table ru_new_sys_user is '系统用户主表';

comment on column ru_new_sys_user.nuserid is '用户ID,唯一标识<seq:seq_ru_sys_user>';

comment on column ru_new_sys_user.vusername is '用户名';

comment on column ru_new_sys_user.vpassword is '密码';

comment on column ru_new_sys_user.vempname is '雇员名称';

comment on column ru_new_sys_user.vstatus is '帐号状态:1:有效,0:无效,2:被禁用';

comment on column ru_new_sys_user.vcreated is '创建人';

comment on column ru_new_sys_user.dcrt_date is '创建日期';

comment on column ru_new_sys_user.vupdated is '更新人';

comment on column ru_new_sys_user.dup_date is '更新日期';

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