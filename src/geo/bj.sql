
    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '羊坊店街道';
    
    set @hospname = '羊坊店社区卫生服务中心';
    set @hospaddr = '北京市海地区北蜂窝中路乙8号';
    set @phone = '63965642';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '八里庄街道';
    
    set @hospname = '八里庄社区卫生服务中心';
    set @hospaddr = '北京市海淀区八里庄22号';
    set @phone = '68457866';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '甘家口街道';
    
    set @hospname = '甘家口社区卫生服务中心';
    set @hospaddr = '北京市海淀区增光路甲57号';
    set @phone = '68315627';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '北下关街道';
    
    set @hospname = '北下关社区卫生服务中心';
    set @hospaddr = '北京市海淀区交大东路3号';
    set @phone = '62255940';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '北太平庄街道';
    
    set @hospname = '北太平庄社区卫生服务中心';
    set @hospaddr = '北京市海淀区文慧园6号楼';
    set @phone = '62269365';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '花园路街道';
    
    set @hospname = '蓟门里社区卫生服务中心';
    set @hospaddr = '北京市海淀区蓟门里小区';
    set @phone = '82011138';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '中关村街道';
    
    set @hospname = '双榆树社区卫生服务中心';
    set @hospaddr = '北京市海淀区双榆树西里12号';
    set @phone = '62564032';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '学院路街道';
    
    set @hospname = '学院路社区卫生服务中心';
    set @hospaddr = '北京市海淀区北四环中路279号展春园30号楼';
    set @phone = '82432727';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '上地街道';
    
    set @hospname = '上地社区卫生服务中心';
    set @hospaddr = '北京市海淀区西北旺二街5号卫生大厦';
    set @phone = '62984596';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '清河街道';
    
    set @hospname = '清河社区卫生服务中心';
    set @hospaddr = '北京市海淀区安宁庄东路19号';
    set @phone = '62913775';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '东升镇';
    
    set @hospname = '东升镇社区卫生服务中心';
    set @hospaddr = '北京市海淀区东升镇潘庄村西路莱圳家园西侧';
    set @phone = '62951768';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '海淀街道';
    
    set @hospname = '海淀镇社区卫生服务中心';
    set @hospaddr = '北京市海淀区西苑操场108号';
    set @phone = '62878894';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '四季青镇';
    
    set @hospname = '四季青镇社区卫生服务中心';
    set @hospaddr = '北京市海淀区远大路32号';
    set @phone = '88448161';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '温泉镇';
    
    set @hospname = '温泉镇社区卫生服务中心';
    set @hospaddr = '北京市海淀区温泉镇黑龙潭';
    set @phone = '62456525';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '西北旺镇';
    
    set @hospname = '西北旺镇社区卫生服务中心';
    set @hospaddr = '北京市海淀区北清路永丰嘉园五区7号楼、6号楼底商';
    set @phone = '62443791';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '上庄镇';
    
    set @hospname = '上庄镇社区卫生服务中心';
    set @hospaddr = '北京市海淀区上庄镇上庄村北';
    set @phone = '62471669';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '苏家坨镇';
    
    set @hospname = '苏家坨镇社区卫生服务中心';
    set @hospaddr = '北京市海淀区苏家坨镇西小营集镇北侧路';
    set @phone = '62482791';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '田村路街道';
    
    set @hospname = '田村社区卫生服务中心';
    set @hospaddr = '北京市海淀区田村北路海澜中苑小区2号公建楼';
    set @phone = '88180330';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '紫竹院街道';
    
    set @hospname = '紫竹院社区卫生服务中心';
    set @hospaddr = '北京市海淀区中关村大街29号';
    set @phone = '62638813';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '海淀街道';
    
    set @hospname = '海淀社区卫生服务中心';
    set @hospaddr = '北京市海淀区海淀南路33号';
    set @phone = '82871456';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '中关村街道';
    
    set @hospname = '中关村社区卫生服务中心';
    set @hospaddr = '北京市中关村南路12号';
    set @phone = '62553297';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '青龙桥街道';
    
    set @hospname = '青龙桥社区卫生服务中心';
    set @hospaddr = '北京市海淀区厢红旗东2号';
    set @phone = '62881708';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '羊坊店街道';
    
    set @hospname = '羊坊店水利社区卫生服务中心';
    set @hospaddr = '北京市海淀区玉渊潭南路19号（普惠北里）3栋一层';
    set @phone = '88615648';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '永定路街道';
    
    set @hospname = '永定路社区卫生服务中心';
    set @hospaddr = '北京市海淀区永定路57号213楼';
    set @phone = '68387073';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '紫竹院街道';
    
    set @hospname = '首都师范大学社区卫生服务中心';
    set @hospaddr = '北京市海淀区西三环北路105号';
    set @phone = '010-68902622';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '八里庄街道';
    
    set @hospname = '玉渊潭社区卫生服务中心';
    set @hospaddr = '北京市海淀区阜成路85号';
    set @phone = '88115077';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '中关村街道';
    
    set @hospname = '北京理工大学社区卫生服务中心';
    set @hospaddr = '北京市海淀区中关村南大街5号';
    set @phone = '68913923';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '紫竹院街道';
    
    set @hospname = '北京外国语大学社区卫生服务中心';
    set @hospaddr = '北京市海淀区西三环北路2号';
    set @phone = '88816878';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '中关村街道';
    
    set @hospname = '中国人民大学社区卫生服务中心';
    set @hospaddr = '北京市海淀区中关村大街59号（校园内）';
    set @phone = '62513390';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '学院路街道';
    
    set @hospname = '北京大学医学部社区卫生服务中心';
    set @hospaddr = '北京市海淀区学院路38号北京大学医学部内';
    set @phone = '82802364';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '学院路街道';
    
    set @hospname = '北京航空航天大学社区卫生服务中心';
    set @hospaddr = '北京市海淀区学院路37号北京航空航天大学医院';
    set @phone = '82317296';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '学院路街道';
    
    set @hospname = '北京语言大学社区卫生服务中心';
    set @hospaddr = '北京市海淀区学院路15号';
    set @phone = '82303177';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '学院路街道';
    
    set @hospname = '北京科技大学社区卫生服务中心';
    set @hospaddr = '北京市海淀区学院路30号';
    set @phone = '62332909';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '清华园街道';
    
    set @hospname = '清华大学社区卫生服务中心';
    set @hospaddr = '北京市海淀区清华大学';
    set @phone = '62784635';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '燕园街道';
    
    set @hospname = '北京大学社区卫生服务中心';
    set @hospaddr = '北京海淀颐和园路5号';
    set @phone = '62765531';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '清河街道';
    
    set @hospname = '社会福利社区卫生服务中心';
    set @hospaddr = '北京市海淀区清河三街52号';
    set @phone = '62913558';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '花园路街道';
    
    set @hospname = '花园路社区卫生服务中心';
    set @hospaddr = '北京市海淀区马甸月季园小区甲3号';
    set @phone = '62355899';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '西三旗街道';
    
    set @hospname = '西三旗社区卫生服务中心';
    set @hospaddr = '北京市海淀区宝盛里小区32号楼';
    set @phone = '62901115';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '香山街道';
    
    set @hospname = '香山社区卫生服务中心';
    set @hospaddr = '北京市海淀区香山路甲1号2区';
    set @phone = '51795189';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '马连洼街道';
    
    set @hospname = '马连洼社区卫生服务站';
    set @hospaddr = '北京市海淀区马连洼街道兰园小区物业白楼';
    set @phone = '62813519';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '上地街道';
    
    set @hospname = '树村社区卫生服务站';
    set @hospaddr = '北京市海淀区上地街道厢黄旗树村万树园小区';
    set @phone = '82796107';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '东升地区（东升乡）';
    
    set @hospname = '东升镇社区卫生服务中心';
    set @hospaddr = '北京市海淀区东升镇潘庄村西路莱圳家园西侧';
    set @phone = '62951768';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '温泉镇';
    
    set @hospname = '温泉镇社区卫生服务中心';
    set @hospaddr = '北京市海淀区温泉镇黑龙潭';
    set @phone = '62456525';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '四季青镇';
    
    set @hospname = '四季青镇社区卫生服务中心';
    set @hospaddr = '北京市海淀区远大路32号';
    set @phone = '88448161';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '西北旺镇';
    
    set @hospname = '西北旺镇社区卫生服务中心';
    set @hospaddr = '京市海淀区北清路永丰嘉园五区7号楼、6号楼底商';
    set @phone = '62443791';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '苏家坨镇';
    
    set @hospname = '苏家坨镇社区卫生服务中心';
    set @hospaddr = '北京市海淀区苏家坨镇西小营集镇北侧路东';
    set @phone = '62482791';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '上庄镇';
    
    set @hospname = '上庄镇社区卫生服务中心';
    set @hospaddr = '北京市海淀区上庄镇上庄村北';
    set @phone = '62471669';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '万寿路街道';
    
    set @hospname = '翠微南里社区卫生服务站';
    set @hospaddr = '北京市海淀区万寿路街道翠微南里南平房1号';
    set @phone = '68158187';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '其他';
    
    set @hospname = '中央民族大学社区卫生服务中心';
    set @hospaddr = '北京市海淀区中关村南大街27号';
    set @phone = '68932488';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '其他';
    
    set @hospname = '北京交通大学社区卫生服务中心';
    set @hospaddr = '北京市海淀区西外大街上园村3号';
    set @phone = '51682525';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '其他';
    
    set @hospname = '北京邮电大学社区卫生服务中心';
    set @hospaddr = '北京市海淀区西土城路10号';
    set @phone = '62283212';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '其他';
    
    set @hospname = '北京师范大学社区卫生服务中心';
    set @hospaddr = '北京市海淀区新外大街19号';
    set @phone = '58808227';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '其他';
    
    set @hospname = '中国农业大学东区社区卫生服务中心';
    set @hospaddr = '北京市海淀区清华东路17号中国农业大学东区院内';
    set @phone = '62736616';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '其他';
    
    set @hospname = '北京林业大学社区卫生服务中心';
    set @hospaddr = '北京市海淀区清华东路35号院内';
    set @phone = '62338236';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '其他';
    
    set @hospname = '中国农业大学西区社区卫生服务中心';
    set @hospaddr = '北京市海淀区圆明园西路2号';
    set @phone = '62732550';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '其他';
    
    set @hospname = '体育大学社区卫生服务中心';
    set @hospaddr = '北京市海淀区信息路48号';
    set @phone = '62989470';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '海淀区';
    set @townname = '其他';
    
    set @hospname = '北京市海淀区北安河社区卫生服务中心';
    set @hospaddr = '北京市海淀区北安河路8号';
    set @phone = '62454872';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '卢沟桥街道';
    
    set @hospname = '卢沟桥社区卫生服务中心';
    set @hospaddr = '北京市丰台区卢沟桥晓月苑清音街1号';
    set @phone = ' 83216921';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '大红门街道';
    
    set @hospname = '大红门社区卫生服务中心';
    set @hospaddr = '北京市丰台区大红门东后街156号';
    set @phone = '87288041';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '丰台街道';
    
    set @hospname = '丰台社区卫生服务中心';
    set @hospaddr = '北京市丰台区大成南里二区3号楼/丰台镇兴隆中街6号';
    set @phone = '63820716';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '方庄地区';
    
    set @hospname = '方庄社区卫生服务中心';
    set @hospaddr = '北京市丰台区方庄芳群园三区一号楼';
    set @phone = '67631289';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '右安门街道';
    
    set @hospname = '右安门社区卫生服务中心';
    set @hospaddr = '北京市丰台区右安门外开阳里二街1号';
    set @phone = '63538453';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '新村街道';
    
    set @hospname = '新村社区卫生服务中心';
    set @hospaddr = '北京市丰台区首经贸北路8号院4号楼';
    set @phone = '63621236';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '长辛店街道';
    
    set @hospname = '长辛店社区卫生服务中心';
    set @hospaddr = '北京市丰台区长辛店大街甲262号';
    set @phone = '83882827';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '长辛店镇';
    
    set @hospname = '长辛店镇社区卫生服务中心';
    set @hospaddr = '北京市丰台区长辛店镇射击场路23号';
    set @phone = '83861652';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '王佐镇';
    
    set @hospname = '王佐镇社区卫生服务中心';
    set @hospaddr = '北京市丰台区王佐镇西王佐356号';
    set @phone = '83316357';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '东铁匠营街道';
    
    set @hospname = '铁营社区卫生服务中心';
    set @hospaddr = '北京市丰台区横一条甲18号院3号楼';
    set @phone = '67688332';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '西罗园街道';
    
    set @hospname = '西罗园社区卫生服务中心';
    set @hospaddr = '北京市丰台区西罗园一区26号楼';
    set @phone = '67219781';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '南苑街道';
    
    set @hospname = '南苑社区卫生服务中心';
    set @hospaddr = '北京市丰台区和义东里二区6号';
    set @phone = '67966719';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '马家堡街道';
    
    set @hospname = '马家堡社区卫生服务中心';
    set @hospaddr = '北京市丰台区马家堡嘉园二里14号';
    set @phone = '67534558';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '长辛店镇';
    
    set @hospname = '二七南社区卫生服务中心';
    set @hospaddr = '北京市丰台区长辛店崔村二里18号';
    set @phone = '83306531';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '长辛店镇';
    
    set @hospname = '二七北社区卫生服务中心';
    set @hospaddr = '北京市丰台区长辛店镇张郭庄南路甲一号';
    set @phone = '83804470';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '云岗街道';
    
    set @hospname = '云岗社区卫生服务中心';
    set @hospaddr = '北京市丰台区云岗南区20楼';
    set @phone = '68374253';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '太平桥街道';
    
    set @hospname = '太平桥社区卫生服务中心';
    set @hospaddr = '北京市丰台区太平桥西里甲1号';
    set @phone = '63501188';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '东高地街道';
    
    set @hospname = '东高地社区卫生服务中心';
    set @hospaddr = '北京市丰台区花乡纪家庙168号';
    set @phone = '63726782';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '卢沟桥乡';
    
    set @hospname = '卢沟桥乡社区卫生服务中心';
    set @hospaddr = '北京市丰台区西局南街137号8号楼';
    set @phone = '63845387';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '和义街道';
    
    set @hospname = '丰台区和义街道和义西里社区卫生服务站';
    set @hospaddr = '北京市丰台区大红门南路58号';
    set @phone = '67979210';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '花乡乡';
    
    set @hospname = '花乡社区卫生服务中心';
    set @hospaddr = '北京市丰台区花乡纪家庙168号';
    set @phone = '63726782';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '南苑乡 ';
    
    set @hospname = '南苑社区卫生服务中心';
    set @hospaddr = '北京市丰台区和义东里二区6号';
    set @phone = '67966719';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '马家堡街道';
    
    set @hospname = '同仁京苑社区卫生服务中心';
    set @hospaddr = '北京市丰台区马家堡东路88号';
    set @phone = '51215069';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '其他';
    
    set @hospname = '蒲黄榆社区卫生服务中心';
    set @hospaddr = '北京市丰台区蒲安西里16号';
    set @phone = '67616028';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '丰台区 ';
    set @townname = '其他';
    
    set @hospname = '朱家坟社区卫生服务中心';
    set @hospaddr = '北京市丰台区朱家坟四里13号';
    set @phone = '83807069';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '石景山区';
    set @townname = '八角街道';
    
    set @hospname = '八角社区卫生服务中心';
    set @hospaddr = '北京市石景山区八角北路';
    set @phone = '68862920';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '石景山区';
    set @townname = '五里坨街道，以及鲁谷社区行政事务管理中心。';
    
    set @hospname = '五里坨社区卫生服务中心';
    set @hospaddr = '北京市石景山区石门路322号';
    set @phone = '51510589';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '石景山区';
    set @townname = '八宝山街道';
    
    set @hospname = '八宝山社区卫生服务中心';
    set @hospaddr = '北京市石景山区鲁谷东街38号';
    set @phone = '010-88655151';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '石景山区';
    set @townname = '苹果园街道';
    
    set @hospname = '苹果园社区卫生服务中心';
    set @hospaddr = '北京市石景山区苹果园大街86号';
    set @phone = '88707858';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '石景山区';
    set @townname = '金顶街街道';
    
    set @hospname = '金顶街社区卫生服务中心';
    set @hospaddr = '北京市石景山区金顶北路22号院1号楼';
    set @phone = '88778785 ';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '石景山区';
    set @townname = '老山街道';
    
    set @hospname = '老山社区卫生服务中心';
    set @hospaddr = '北京市石景山区老山西里';
    set @phone = '88296529';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '石景山区';
    set @townname = '古城街道';
    
    set @hospname = '古城社区卫生服务中心';
    set @hospaddr = '北京市石景山区古城小街';
    set @phone = '88296532';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '石景山区';
    set @townname = '广宁街道';
    
    set @hospname = '广宁社区卫生服务中心';
    set @hospaddr = '北京市石景山区广宁街道原广宁中学院内';
    set @phone = '88990400';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '石景山区';
    set @townname = '其他';
    
    set @hospname = '鲁谷社区卫生服务中心';
    set @hospaddr = '北京市石景山鲁谷小区六合园';
    set @phone = '010-51718219';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '石景山区';
    set @townname = '其他';
    
    set @hospname = '北方工大社区卫生服务中心';
    set @hospaddr = '北京市石景山区晋元庄路5号';
    set @phone = '88803257';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '马坊镇';
    
    set @hospname = '马坊社区卫生服务中心';
    set @hospaddr = '北京市平谷区马坊镇西大街32号';
    set @phone = '60999071';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '高村镇';
    
    set @hospname = '东高村社区卫生服务中心';
    set @hospaddr = '北京市平谷区东高村镇兴业路32号';
    set @phone = '69908547';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '峪口镇';
    
    set @hospname = '峪口社区卫生服务中心';
    set @hospaddr = '北京市平谷区峪口镇峪新大街1号';
    set @phone = '61904757';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '大华山镇';
    
    set @hospname = '大华山社区卫生服务中心';
    set @hospaddr = '北京市平谷区大华山镇大华山村村西257号';
    set @phone = '61947273';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '马昌营镇';
    
    set @hospname = '马昌营社区卫生服务中心';
    set @hospaddr = '北京市平谷区马昌营镇马昌营村北';
    set @phone = '61982797';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '平谷镇';
    
    set @hospname = '平谷镇社区卫生服务中心';
    set @hospaddr = '北京市平谷区平谷镇新平南路207号';
    set @phone = '69961013';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '金海湖镇';
    
    set @hospname = '金海湖社区卫生服务中心';
    set @hospaddr = '北京市平谷区金海湖镇滑子村';
    set @phone = '69994772';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '夏各庄镇';
    
    set @hospname = '夏各庄社区卫生服务中心';
    set @hospaddr = '北京市平谷区夏各庄镇夏各庄村西';
    set @phone = '60911618';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '南独乐河镇';
    
    set @hospname = '南独乐河社区卫生服务中心';
    set @hospaddr = '北京市平谷区南独乐河镇粮管所路169号';
    set @phone = '60927224';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '大兴庄镇';
    
    set @hospname = '大兴庄社区卫生服务中心';
    set @hospaddr = '北京市平谷区大兴庄镇大兴庄村东路270号';
    set @phone = '89931395';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '镇罗营镇';
    
    set @hospname = '镇罗营社区卫生服务中心';
    set @hospaddr = '北京市平谷区镇罗营镇上营村西158号';
    set @phone = '61969034';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '黄松峪乡';
    
    set @hospname = '黄松峪社区卫生服务中心';
    set @hospaddr = '北京市平谷区黄松峪乡黄松峪村东大街384号';
    set @phone = '60972859';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '熊耳寨乡';
    
    set @hospname = '熊尔寨社区卫生服务中心';
    set @hospaddr = '北京市平谷区熊耳寨乡熊东路34号';
    set @phone = '61961882';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '山东庄镇';
    
    set @hospname = '山东庄社区卫生服务中心';
    set @hospaddr = '北京市平谷区山东庄镇府前路7号';
    set @phone = '60937614';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '刘家店镇';
    
    set @hospname = '刘家店社区卫生服务中心';
    set @hospaddr = '北京市平谷区刘家店镇刘家店西路18号';
    set @phone = '61971055';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '王辛庄镇';
    
    set @hospname = '王辛庄社区卫生服务中心';
    set @hospaddr = '北京市平谷区王辛庄镇乐园路31号';
    set @phone = '61921482';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '王辛庄镇';
    
    set @hospname = '兴谷街道社区卫生服务中心';
    set @hospaddr = '北京市平谷区王辛庄镇校园路3号';
    set @phone = '89983646';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '滨河街道';
    
    set @hospname = '北京市平谷区滨河街道社区卫生服务中心';
    set @hospaddr = '北京市平谷区滨河街道林荫南街6号';
    set @phone = '69961913';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '东高村镇';
    
    set @hospname = '北京市平谷区东高村社区卫生服务中心';
    set @hospaddr = '北京市平谷区东高村镇兴业路32号';
    set @phone = '69908547';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '平谷区';
    set @townname = '林荫南街';
    
    set @hospname = '滨河街道社区卫生服务中心';
    set @hospaddr = '北京市平谷区林荫南街6号';
    set @phone = '69961913';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '永宁镇';
    
    set @hospname = '永宁社区卫生服务中心';
    set @hospaddr = '北京市延庆县永宁镇东街路北';
    set @phone = '60171487';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '张山营镇';
    
    set @hospname = '张山营社区卫生服务中心';
    set @hospaddr = '北京市延庆县张山营镇张山营村';
    set @phone = '69111163';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '千家店镇';
    
    set @hospname = '千家店社区卫生服务中心';
    set @hospaddr = '北京市延庆县千家店镇千家店村';
    set @phone = '010-60188440';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '四海镇';
    
    set @hospname = '四海镇社区卫生服务中心';
    set @hospaddr = '北京市延庆县四海镇四海村';
    set @phone = '60187205';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '康庄镇';
    
    set @hospname = '康庄镇社区卫生服务中心';
    set @hospaddr = '北京市延庆县康庄镇文汇街2号';
    set @phone = '61161313';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '旧县镇';
    
    set @hospname = '旧县社区卫服务中心';
    set @hospaddr = '北京市延庆县旧县镇旧县村西';
    set @phone = '61151602';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '沈家营镇';
    
    set @hospname = '沈家营社区卫生服务中心';
    set @hospaddr = '北京市延庆县沈家营镇沈家营村西';
    set @phone = '61132245';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '井庄镇';
    
    set @hospname = '井庄社区卫生服务中心';
    set @hospaddr = '北京市延庆区井庄镇井庄村';
    set @phone = '61191705';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '八达岭镇';
    
    set @hospname = '八达岭社区卫生服务中心';
    set @hospaddr = '北京市延庆县八达岭镇西拨子村';
    set @phone = '69120365';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '大榆树镇';
    
    set @hospname = '大榆树社区卫生服务中心';
    set @hospaddr = '北京市延庆县大榆树镇大榆树村6号';
    set @phone = '61182983';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '刘斌堡乡';
    
    set @hospname = '刘斌堡社区卫生服务中心';
    set @hospaddr = '北京市延庆区刘斌堡乡刘斌堡村东';
    set @phone = '010-60181714';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '香营乡';
    
    set @hospname = '香营社区卫生服务中心';
    set @hospaddr = '北京市延庆县香营乡香营村西';
    set @phone = '60162454';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '延庆镇';
    
    set @hospname = '延庆镇社区卫生服务中心';
    set @hospaddr = '北京市延庆县南菜园公安医院西侧';
    set @phone = '69172966';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '大庄科乡';
    
    set @hospname = '大庄科社区卫生服务中心';
    set @hospaddr = '北京市延庆县大庄科乡大庄科村';
    set @phone = '60189817';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '妫水南街';
    
    set @hospname = '南菜园社区卫生服务中心';
    set @hospaddr = '北京市延庆县妫水南街0号';
    set @phone = '69181772';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '延庆县';
    set @townname = '香营乡';
    
    set @hospname = '香营乡香营村卫生室';
    set @hospaddr = '北京市延庆县香营乡香营村中心公路边';
    set @phone = '69181772';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '鼓楼街道';
    
    set @hospname = '鼓楼社区卫生服务中心';
    set @hospaddr = '北京市密云县鼓楼东大街6号';
    set @phone = '69044334';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '果园街道';
    
    set @hospname = '果园社区卫生服务中心';
    set @hospaddr = '北京市密云县果园街道西门外';
    set @phone = '69044606';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '西田各庄镇';
    
    set @hospname = '西田各庄镇社区卫生服务中心';
    set @hospaddr = '北京市密云县西田各庄镇西田各庄村';
    set @phone = '61015254';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '十里堡镇';
    
    set @hospname = '十里堡镇社区卫生服务中心';
    set @hospaddr = '北京市密云县十里堡镇河槽村西200米';
    set @phone = '010-89023297';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '河南寨镇';
    
    set @hospname = '河南寨镇社区卫生服务中心';
    set @hospaddr = '北京市密云县河南寨镇芦古庄村北';
    set @phone = '61087288';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '巨各庄镇';
    
    set @hospname = '巨各庄镇社区卫生服务中心';
    set @hospaddr = '北京市密云县巨各庄镇水峪村';
    set @phone = '61033001';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '东邵渠镇';
    
    set @hospname = '东邵渠镇社区卫生服务中心';
    set @hospaddr = '北京市密云县东邵渠镇高各庄村';
    set @phone = '61061321';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '大城子镇';
    
    set @hospname = '大城子镇社区卫生服务中心';
    set @hospaddr = '北京市密云县大城子镇大城子村';
    set @phone = '61071761';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '穆家峪镇';
    
    set @hospname = '穆家峪镇社区卫生服务中心';
    set @hospaddr = '北京市密云县穆家峪镇南穆家峪村';
    set @phone = '61053836';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '太师屯镇';
    
    set @hospname = '太师屯镇社区卫生服务中心';
    set @hospaddr = '北京市密云县太师屯镇';
    set @phone = '69032541';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '北庄镇';
    
    set @hospname = '北庄镇社区卫生服务中心';
    set @hospaddr = '北京市密云县北庄镇北庄村';
    set @phone = '81002006';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '新城子镇';
    
    set @hospname = '新城子镇社区卫生服务中心';
    set @hospaddr = '北京市密云县新城子镇新城子村';
    set @phone = '81023799';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '古北口镇';
    
    set @hospname = '古北口镇社区卫生服务中心';
    set @hospaddr = '北京市密云县古北口镇河东村';
    set @phone = '81051007';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '高岭镇';
    
    set @hospname = '高岭镇社区卫生服务中心';
    set @hospaddr = '北京市密云区高岭镇高岭村政府路9号';
    set @phone = '81081157';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '不老屯镇';
    
    set @hospname = '不老屯镇社区卫生服务中心';
    set @hospaddr = '北京市密云县不老屯镇不老屯村';
    set @phone = '81091893';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '冯家峪镇';
    
    set @hospname = '冯家峪镇社区卫生服务中心';
    set @hospaddr = '北京市密云县冯家峪镇冯家峪村99号';
    set @phone = '81069963';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '石城镇';
    
    set @hospname = '石城镇社区卫生服务中心';
    set @hospaddr = '北京市密云县石城镇南石城村';
    set @phone = '61025192';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '溪翁庄镇';
    
    set @hospname = '溪翁庄镇社区卫生服务中心';
    set @hospaddr = '北京市密云县溪翁庄镇溪翁庄村';
    set @phone = '69012577';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '密云县';
    set @townname = '密云镇';
    
    set @hospname = '密云镇社区卫生服务中心';
    set @hospaddr = '北京市密云县密云镇李各庄村委会南';
    set @phone = '010-69080456';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '东华门街道';
    
    set @hospname = '东华门社区卫生服务站(中心站)';
    set @hospaddr = '北京市东城区瓷器库南巷1号';
    set @phone = '65597833';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '安定门街道';
    
    set @hospname = '安定门社区卫生服务站(中心站)';
    set @hospaddr = '北京市东城区豆腐池胡同13号';
    set @phone = '64007169';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '北新桥街道';
    
    set @hospname = '北新桥社区卫生服务站(中心站)';
    set @hospaddr = '北京市东城区东直门大街184号';
    set @phone = '64053216';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '东四街道';
    
    set @hospname = '东四社区卫生服务站（中心站）';
    set @hospaddr = '北京市东城区东四六条62号';
    set @phone = '64017470';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '东直门街道';
    
    set @hospname = '东直门社区卫生服务站（中心站）';
    set @hospaddr = '北京市东城区东直门外察慈小区7号楼';
    set @phone = '64610470';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '和平里街道';
    
    set @hospname = '和平里社区卫生服务站（中心站）';
    set @hospaddr = '北京市东城区和平里北街18号西门';
    set @phone = '64215168';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '东四南大街';
    
    set @hospname = '东城区朝阳门社区卫生服务中心';
    set @hospaddr = '北京市东城区东四南大街灯草胡同31号';
    set @phone = '65138019';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '建国门街道';
    
    set @hospname = '东城区建国门社区卫生服务中心';
    set @hospaddr = '北京市东城区市桥街西城路西兴苑12栋东梯2-3楼';
    set @phone = '34605032';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '东花市街道';
    
    set @hospname = '东城区东花市社区卫生服务中心';
    set @hospaddr = '北京市东城区广渠家园13号楼';
    set @phone = '34605032';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '天坛街道';
    
    set @hospname = '天坛社区卫生服务中心';
    set @hospaddr = '北京市东城区粉厂胡同57号';
    set @phone = '67074337';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '东直门街道';
    
    set @hospname = '东直门街道清水苑社区卫生服务站';
    set @hospaddr = '北京市东城区清水苑小区4号';
    set @phone = '64611494';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '体育馆路街道';
    
    set @hospname = '体育馆路社区卫生服务中心';
    set @hospaddr = '北京市东城区法华南里25号楼西门';
    set @phone = '67120019';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '景山街道';
    
    set @hospname = '景山街道宽街社区卫生服务站';
    set @hospaddr = '北京市东城区美术馆后街12号';
    set @phone = '64006540';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '景山街道';
    
    set @hospname = '景山街道魏家社区卫生服务站';
    set @hospaddr = '北京市东城区魏家胡同53号';
    set @phone = '84032330';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '交道口街道';
    
    set @hospname = '交道口街道交东社区卫生服务站';
    set @hospaddr = '北京市东城区土儿胡同10号楼';
    set @phone = '84046916';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '朝阳门街道';
    
    set @hospname = '朝阳门街道朝内头条社区卫生服务站';
    set @hospaddr = '北京市东城区朝内大街203号';
    set @phone = '64015610';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '建国门街道';
    
    set @hospname = '建国门街道外交部街社区卫生服务站';
    set @hospaddr = '北京市东城区东堂子胡同24号';
    set @phone = '65121974';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '其他';
    
    set @hospname = '忠实里社区卫生服务中心';
    set @hospaddr = '北京市东城区忠实里西区7号楼106';
    set @phone = '87749048';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '东城区';
    set @townname = '其他';
    
    set @hospname = '龙潭社区卫生服务中心';
    set @hospaddr = '北京市崇文区光明中街25号';
    set @phone = '67111096';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '西城区';
    set @townname = '西长安街街道';
    
    set @hospname = '西长安街社区卫生服务中心';
    set @hospaddr = '北京市西城区油坊胡同52号';
    set @phone = '66018511';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '西城区';
    set @townname = '新街口街道';
    
    set @hospname = '新街口社区卫生服务中心';
    set @hospaddr = '北京市西城区后半壁街19号';
    set @phone = '66250400';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '西城区';
    set @townname = '月坛街道';
    
    set @hospname = '月坛社区卫生服务中心';
    set @hospaddr = '北京市西城区复兴门外真武庙六里7号楼';
    set @phone = '68032035';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '西城区';
    set @townname = '展览路街道';
    
    set @hospname = '展览路社区卫生服务中心';
    set @hospaddr = '北京市西城区阜成门外北大街201号';
    set @phone = '68352553';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '西城区';
    set @townname = '德胜街道';
    
    set @hospname = '德胜社区卫生服务中心';
    set @hospaddr = '北京市西城区德外大街34号';
    set @phone = '62012633';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '西城区';
    set @townname = '金融街街道';
    
    set @hospname = '金融街社区卫生服务中心';
    set @hospaddr = '北京市西城区阜成门内大街306号';
    set @phone = '66030336';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '西城区';
    set @townname = '什刹海街道';
    
    set @hospname = '什刹海社区卫生服务中心';
    set @hospaddr = '北京市西城区正觉胡同甲13号';
    set @phone = '83285658';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '西城区';
    set @townname = '陶然亭街道';
    
    set @hospname = '陶然亭社区卫生服务中心';
    set @hospaddr = '北京市西城区陶然亭路12号';
    set @phone = '63534679';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '西城区';
    set @townname = '椿树街道';
    
    set @hospname = '椿树社区卫生服务中心';
    set @hospaddr = '北京市西城区西琉璃厂63号';
    set @phone = '010-63035473';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '西城区';
    set @townname = '牛街街道';
    
    set @hospname = '牛街社区卫生服务中心';
    set @hospaddr = '北京市西城区培育胡同15号';
    set @phone = '010-83539819';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '西城区';
    set @townname = '广安门内街道';
    
    set @hospname = '广内社区卫生服务中心';
    set @hospaddr = '北京市西城区校场五条49号';
    set @phone = '63037725 ';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '西城区';
    set @townname = '白纸坊街道';
    
    set @hospname = '白纸坊社区卫生服务中心';
    set @hospaddr = '北京市西城区新安中里4号';
    set @phone = '63522376';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '西城区';
    set @townname = '广安门外街道';
    
    set @hospname = '广外社区卫生服务中心';
    set @hospaddr = '北京市西城区广外三义里甲2号';
    set @phone = '63269062';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '西城区';
    set @townname = '天桥街道';
    
    set @hospname = '天桥社区卫生服务中心';
    set @hospaddr = '北京市西城区万明路甲8号';
    set @phone = '010-63153498';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '西城区';
    set @townname = '大栅栏街道';
    
    set @hospname = '大栅栏社区卫生服务中心';
    set @hospaddr = '北京市西城区煤市街152';
    set @phone = '63033727';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '门头沟区';
    set @townname = '大峪街道';
    
    set @hospname = '门城地区社区卫生服务中心';
    set @hospaddr = '北京市门头沟区峪园小区甲六号';
    set @phone = '69842268';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '门头沟区';
    set @townname = '城子街道';
    
    set @hospname = '门城地区社区卫生服务中心';
    set @hospaddr = '北京市门头沟区峪园小区甲六号';
    set @phone = '69842269';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '门头沟区';
    set @townname = '龙泉镇';
    
    set @hospname = '门城地区社区卫生服务中心';
    set @hospaddr = '北京市门头沟区峪园小区甲六号';
    set @phone = '69842270';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '门头沟区';
    set @townname = '潭柘寺镇';
    
    set @hospname = '潭柘寺镇社区卫生服务中心';
    set @hospaddr = '北京市门头沟区潭柘寺镇鲁家滩大街64号';
    set @phone = '60861550';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '门头沟区';
    set @townname = '永定镇';
    
    set @hospname = '永定镇社区卫生服务中心（永定镇卫生院）';
    set @hospaddr = '北京市门头沟区石门营B1-7号楼';
    set @phone = '69804370';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '门头沟区';
    set @townname = '军庄镇';
    
    set @hospname = '军庄镇社区卫生服务中心';
    set @hospaddr = '北京市门头沟区军庄镇政府东侧（军庄镇卫生院）';
    set @phone = '60811931';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '门头沟区';
    set @townname = '妙峰山镇';
    
    set @hospname = '妙峰山镇社区卫生服务中心（妙峰山镇卫生院）';
    set @hospaddr = '北京市门头沟区妙峰山镇陇驾庄村';
    set @phone = '61881686';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '门头沟区';
    set @townname = '王平地区';
    
    set @hospname = '王平镇社区卫生服务中心（色树坟中心卫生院）';
    set @hospaddr = '北京市门头沟区王平镇色树坟大街10号';
    set @phone = '61859443';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '门头沟区';
    set @townname = '雁翅镇';
    
    set @hospname = '雁翅镇社区卫生服务中心（雁翅中心卫生院）';
    set @hospaddr = '北京市门头沟区雁翅镇雁翅村';
    set @phone = '61830208';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '门头沟区';
    set @townname = '斋堂镇';
    
    set @hospname = '斋堂镇社区卫生服务中心（斋堂医院）';
    set @hospaddr = '北京市门头沟区斋堂镇东斋堂村33号';
    set @phone = '15611523043';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '门头沟区';
    set @townname = '清水镇';
    
    set @hospname = '清水镇社区卫生服务中心（清水中心卫生院）';
    set @hospaddr = '北京市门头沟区清水镇上清水村、清水镇黄塔村、清水镇齐家庄村';
    set @phone = '60855119';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '门头沟区';
    set @townname = '东辛房街道';
    
    set @hospname = '东辛房社区卫生服务中心（京煤总医院门矿医院）';
    set @hospaddr = '北京市门头沟区门头沟路47号';
    set @phone = '61815049';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '门头沟区';
    set @townname = '大台街道';
    
    set @hospname = '大台社区卫生服务中心（京煤总医院大台医院）';
    set @hospaddr = '北京市门头沟区大台北大地9号';
    set @phone = '61870100';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '良乡镇';
    
    set @hospname = '良乡地区社区卫生服务中心';
    set @hospaddr = '北京市房山区良乡苏庄大街';
    set @phone = '89370240';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '城关街道';
    
    set @hospname = '城关街道社区卫生服务中心';
    set @hospaddr = '北京市房山区城关北大街16号';
    set @phone = '89336063';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '东风街道';
    
    set @hospname = '燕化东风街道社区卫生服务中心';
    set @hospaddr = '北京市房山区东风北里31号';
    set @phone = '69334338';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '东风街道';
    
    set @hospname = '燕山地区社区卫生服务中心';
    set @hospaddr = '北京市房山区燕房路50号';
    set @phone = '69347570';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '迎风街道';
    
    set @hospname = '燕山地区社区卫生服务中心';
    set @hospaddr = '北京市房山区燕房路50号';
    set @phone = '69347570';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '星城街道';
    
    set @hospname = '燕山地区社区卫生服务中心';
    set @hospaddr = '北京市房山区燕房路50号';
    set @phone = '69347570';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '向阳街道';
    
    set @hospname = '燕山地区社区卫生服务中心';
    set @hospaddr = '北京市房山区燕房路50号';
    set @phone = '69347570';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '河北镇';
    
    set @hospname = '河北镇社区卫生服务中心';
    set @hospaddr = '北京市房山区河北镇李各庄村';
    set @phone = '60377217';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '阎村镇';
    
    set @hospname = '阎村镇社区卫生服务中心';
    set @hospaddr = '北京市房山区阎村镇紫园南路28号';
    set @phone = '01089317688';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '张坊镇';
    
    set @hospname = '张坊社区卫生服务中心';
    set @hospaddr = '北京市房山区张坊镇张坊村';
    set @phone = '010-61331366';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '长沟镇';
    
    set @hospname = '长沟社区卫生服务中心';
    set @hospaddr = '北京市房山区长沟大街15号';
    set @phone = '01061361364';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '周口店镇';
    
    set @hospname = '周口店镇社区卫生服务中心';
    set @hospaddr = '北京市房山区周口店大街28号';
    set @phone = '69305088';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '长阳镇';
    
    set @hospname = '长阳镇社区卫生服务中心';
    set @hospaddr = '北京市房山区长阳镇政府西侧长阳镇卫生院';
    set @phone = '80351615';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '佛子庄乡';
    
    set @hospname = '佛子庄社区卫生服务中心';
    set @hospaddr = '北京市房山区佛子庄乡黑龙关村';
    set @phone = '60365950';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '南窖乡';
    
    set @hospname = '南窖乡社区卫生服务中心';
    set @hospaddr = '北京市房山区南窖乡南窖村';
    set @phone = '60375388';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '史家营乡';
    
    set @hospname = '史家营乡社区卫生服务中心';
    set @hospaddr = '北京房山区史家营乡北涧村';
    set @phone = '60397794';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '霞云岭乡';
    
    set @hospname = '霞云岭社区卫生服务中心';
    set @hospaddr = '北京市房山区霞云岭乡';
    set @phone = '010-60367349';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '大安山乡';
    
    set @hospname = '大安山乡社区卫生服务中心';
    set @hospaddr = '北京市房山区大安山乡大安山村';
    set @phone = '60373799';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '石楼镇';
    
    set @hospname = '石楼社区卫生服务中心';
    set @hospaddr = '北京市房山区石楼镇石楼大街3号';
    set @phone = '89300294';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '琉璃河镇';
    
    set @hospname = '琉璃河镇社区卫生服务中心';
    set @hospaddr = '北京市房山区琉璃河镇中原大街25号';
    set @phone = '61393399';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '青龙湖镇';
    
    set @hospname = '青龙湖镇社区卫生服务中心';
    set @hospaddr = '北京市房山区青龙湖镇豆各庄村';
    set @phone = ' 010-60321345';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '十渡镇';
    
    set @hospname = '十渡镇社区卫生服务中心';
    set @hospaddr = '北京市房山区十渡镇八渡村十渡镇社区卫生服务中心';
    set @phone = '61340834';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '蒲洼乡';
    
    set @hospname = '蒲洼乡社区卫生服务中心';
    set @hospaddr = '北京市房山区蒲洼乡蒲洼村';
    set @phone = '010-61371643';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '大石窝镇';
    
    set @hospname = '大石窝镇社区卫生服务中心';
    set @hospaddr = '北京市房山区大石窝镇石窝村';
    set @phone = ' 010-61385258';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '韩村河镇';
    
    set @hospname = '韩村河镇社区卫生服务中心';
    set @hospaddr = '北京市房山区韩村河镇韩村河村;北京市房山区韩村河镇岳各庄村';
    set @phone = '80380563';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '窦店镇';
    
    set @hospname = '窦店镇社区卫生服务中心';
    set @hospaddr = '北京市房山区窦店镇窦店村2区77号；北京市房山区窦店镇交道二街四区3号';
    set @phone = '69396889';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '拱辰街道';
    
    set @hospname = '良乡镇社区卫生服务中心';
    set @hospaddr = '北京市房山区良乡镇官道东大街48号';
    set @phone = '60331999';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '西潞街道';
    
    set @hospname = '良乡镇社区卫生服务中心';
    set @hospaddr = '北京市房山区良乡镇官道东大街48号';
    set @phone = '60331999';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '新镇街道';
    
    set @hospname = '新镇原新中路社区卫生服务站';
    set @hospaddr = '北京市房山区新镇原新中路';
    set @phone = '69358238';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '房山区';
    set @townname = '良乡地区';
    
    set @hospname = '良乡镇社区卫生服务中心';
    set @hospaddr = '北京市房山区良乡镇官道东大街48号';
    set @phone = '60331999';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '新华街道';
    
    set @hospname = '新华社区卫生服务中心';
    set @hospaddr = '北京市通州区新华大街47号';
    set @phone = '69544236';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '永顺地区';
    
    set @hospname = '永顺社区卫生服务中心';
    set @hospaddr = '北京市通州区永顺地区龙旺庄36号楼';
    set @phone = '89596885';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '梨园地区';
    
    set @hospname = '梨园社区卫生服务中心';
    set @hospaddr = '北京市通州区葛布店南里10、11号楼；通州区群芳园路口往东200米（梨园敬老院底商）；';
    set @phone = '81553000';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '潞城镇';
    
    set @hospname = '潞城社区卫生服务中心';
    set @hospaddr = '北京市通州区潞城镇胡各庄';
    set @phone = '89584074';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '潞城镇';
    
    set @hospname = '甘棠社区卫生服务中心';
    set @hospaddr = '北京市通州区潞城镇侉店村';
    set @phone = '61521017';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '宋庄镇';
    
    set @hospname = '宋庄社区卫生服务中心';
    set @hospaddr = '北京市通州区宋庄镇前夏村';
    set @phone = '69594606';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '宋庄镇';
    
    set @hospname = '徐辛庄社区卫生服务中心';
    set @hospaddr = '北京市通州区宋庄镇徐辛庄村';
    set @phone = '89567154';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '中仓街道';
    
    set @hospname = '新华社区卫生服务中心';
    set @hospaddr = '北京市通州区新华大街47号';
    set @phone = '69544236';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '北苑街道';
    
    set @hospname = '新华社区卫生服务中心';
    set @hospaddr = '北京市通州区新华大街47号';
    set @phone = '69544236';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '玉桥街道';
    
    set @hospname = '新华社区卫生服务中心';
    set @hospaddr = '北京市通州区新华大街47号';
    set @phone = '69544236';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '台湖镇';
    
    set @hospname = '台湖社区卫生服务中心';
    set @hospaddr = '北京市通州区台湖镇台湖村东口路北';
    set @phone = ' 010-61531720';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '台湖镇';
    
    set @hospname = '次渠社区卫生服务中心';
    set @hospaddr = '北京市通州区台湖镇次渠村';
    set @phone = '69544987';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '张家湾镇';
    
    set @hospname = '张家湾社区卫生服务中心';
    set @hospaddr = '北京市通州区张家湾镇张家湾村东区甲2号';
    set @phone = '61503694';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '张家湾镇';
    
    set @hospname = '牛堡屯社区卫生服务中心';
    set @hospaddr = '北京市通州区张家湾镇牛堡屯后坨村186号';
    set @phone = '69581337';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '马驹桥镇';
    
    set @hospname = '马驹桥社区卫生服务中心';
    set @hospaddr = '北京市通州区马驹桥镇兴华大街11号';
    set @phone = '59012825';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '马驹桥镇';
    
    set @hospname = '大杜社社区卫生服务中心';
    set @hospaddr = '北京市通州区马驹桥镇大杜社村北';
    set @phone = '61583000';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '漷县镇';
    
    set @hospname = '漷县社区卫生服务中心';
    set @hospaddr = '北京市通州区漷县镇漷兴一街';
    set @phone = '80586031';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '漷县镇';
    
    set @hospname = '觅子店社区卫生服务中心';
    set @hospaddr = '北京市通州区漷县镇觅子店村村北';
    set @phone = '80566218';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '西集镇';
    
    set @hospname = '西集社区卫生服务中心';
    set @hospaddr = '北京市通州区西集镇南';
    set @phone = '010-61576285';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '西集镇';
    
    set @hospname = '郎府社区卫生服务中心';
    set @hospaddr = '北京市通州区西集镇郎东村后/北京市通州区西集镇郎府敬老院内';
    set @phone = '61559055';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '永乐店镇';
    
    set @hospname = '永乐店社区卫生服务中心';
    set @hospaddr = '北京市通州区永乐店镇永乐大街20号';
    set @phone = ' 010-69568653';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '通州区';
    set @townname = '于家务回族乡';
    
    set @hospname = '于家务社区卫生服务中心';
    set @hospaddr = '北京市通州区于家务回族乡于家务村';
    set @phone = ' 010-80534409';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '北石槽镇';
    
    set @hospname = '北石槽社区卫生服务中心';
    set @hospaddr = '北京市顺义区北石槽镇府前街12号';
    set @phone = '60422508';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '北务镇';
    
    set @hospname = '北务社区卫生服务中心';
    set @hospaddr = '北京市顺义区北务镇政府东侧100米';
    set @phone = '61421715';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '赵全营镇';
    
    set @hospname = '赵全营社区卫生服务中心';
    set @hospaddr = '北京市顺义区赵全营镇中板路119号';
    set @phone = '60431136';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '北小营镇';
    
    set @hospname = '北小营社区卫生服务中心';
    set @hospaddr = '北京市顺义区北小营镇府前街2号';
    set @phone = '60483645';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '南彩镇';
    
    set @hospname = '南彩社区卫生服务中心';
    set @hospaddr = '北京市顺义区南彩镇顺平路南彩段３号';
    set @phone = '89469280';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '南彩镇';
    
    set @hospname = '洼里社区卫生服务站';
    set @hospaddr = '北京市顺义区南彩镇洼里村';
    set @phone = '89461839';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '赵全营镇';
    
    set @hospname = '板桥社区卫生服务中心';
    set @hospaddr = '北京市顺义区赵全营镇板桥村牛板路23号';
    set @phone = '60442196';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '大孙各庄镇';
    
    set @hospname = '大孙各庄社区卫生服务中心';
    set @hospaddr = '北京市顺义区大孙各庄镇府前东街4号';
    set @phone = '01061432044';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '天竺地区';
    
    set @hospname = '天竺社区卫生服务中心';
    set @hospaddr = '北京市顺义区天竺镇府前一街27号';
    set @phone = '01064566232';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '牛栏山地区';
    
    set @hospname = '牛栏山社区卫生服务中心（三院）';
    set @hospaddr = '北京市顺义区牛栏山镇府前街13号';
    set @phone = '52135333';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '杨镇地区';
    
    set @hospname = '杨镇社区卫生服务中心（二院）';
    set @hospaddr = '北京市顺义区杨镇环镇东路2号（注：杨镇小学后面）';
    set @phone = '61451265';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '张镇';
    
    set @hospname = '张镇社区卫生服务中心';
    set @hospaddr = '北京市顺义区张镇大街5号';
    set @phone = '61480647';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '李遂镇';
    
    set @hospname = '李遂社区卫生服务中心';
    set @hospaddr = '北京市顺义区李遂镇府前街东侧';
    set @phone = '89481582';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '南彩镇';
    
    set @hospname = '俸伯社区卫生服务中心';
    set @hospaddr = '北京市顺义区南彩镇后俸伯村东';
    set @phone = '89477261';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '木林镇';
    
    set @hospname = '木林社区卫生服务中心';
    set @hospaddr = '北京市顺义区木林镇顺焦路81号';
    set @phone = '60457195';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '后沙峪地区';
    
    set @hospname = '后沙峪社区卫生服务中心（空港）';
    set @hospaddr = '北京市顺义区后沙峪地区双裕街49号';
    set @phone = '80496772';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '仁和地区';
    
    set @hospname = '仁和社区卫生服务中心';
    set @hospaddr = '北京市顺义区石园南区东侧';
    set @phone = '89446896';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '高丽营镇';
    
    set @hospname = '张喜庄社区卫生服务中心';
    set @hospaddr = '北京市顺义区高丽营镇张喜庄村南';
    set @phone = '010-69491442';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '胜利街道';
    
    set @hospname = '城区卫生服务中心';
    set @hospaddr = '北京市顺义区建新南区甲28号北';
    set @phone = '69448469';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '光明街道';
    
    set @hospname = '城区卫生服务中心';
    set @hospaddr = '北京市顺义区建新南区甲28号北';
    set @phone = '69448469';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '旺泉街道';
    
    set @hospname = '城区卫生服务中心';
    set @hospaddr = '北京市顺义区建新南区甲28号北';
    set @phone = '69448469';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '石园街道';
    
    set @hospname = '城区卫生服务中心';
    set @hospaddr = '北京市顺义区建新南区甲28号北';
    set @phone = '69448469';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '龙湾屯镇';
    
    set @hospname = '龙湾屯社区卫生服务中心';
    set @hospaddr = '北京市顺义区龙湾屯镇府前街17号';
    set @phone = '60462200';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '李桥镇';
    
    set @hospname = '李桥社区卫生服务中心';
    set @hospaddr = '北京市顺义区李桥镇任李路沿河段154号';
    set @phone = '69485961';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '杨镇地区';
    
    set @hospname = '沙岭社区卫生服务中心';
    set @hospaddr = '北京市顺平路沙岭段57号';
    set @phone = '61444966';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '杨镇地区';
    
    set @hospname = '小店社区卫生服务中心';
    set @hospaddr = '北京市顺义区杨镇小店村';
    set @phone = '61412835';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '高丽营镇';
    
    set @hospname = '高丽营社区卫生服务中心';
    set @hospaddr = '北京市顺义区高丽营镇高泗路四村段9号';
    set @phone = '69455946';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '南法信地区';
    
    set @hospname = '南法信社区卫生服务中心';
    set @hospaddr = '北京市顺义区南法信镇顺于路9号';
    set @phone = '69478565';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '顺义区';
    set @townname = '马坡地区';
    
    set @hospname = '马坡社区卫生服务中心';
    set @hospaddr = '北京市顺义区马坡镇马坡花园东侧';
    set @phone = '69404194';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '马池口地区';
    
    set @hospname = '马池口社区卫生服务中心';
    set @hospaddr = '北小营村马池口社区卫生院临806号';
    set @phone = '60756310';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '南邵镇';
    
    set @hospname = '南邵社区卫生服务中心';
    set @hospaddr = '北京市昌平区南邵镇南邵村';
    set @phone = '60735776';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '沙河地区';
    
    set @hospname = '沙河社区卫生服务中心';
    set @hospaddr = '北京市昌平区沙河镇展思门路5号';
    set @phone = '80707369';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '十三陵镇';
    
    set @hospname = '十三陵社区卫生服务中心';
    set @hospaddr = '北京市昌平区十三陵镇胡庄村';
    set @phone = '89761433';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '小汤山镇';
    
    set @hospname = '小汤山社区卫生服务中心';
    set @hospaddr = '北京市昌平区小汤山镇小汤山村村南';
    set @phone = '010-61781542';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '兴寿镇';
    
    set @hospname = '兴寿社区卫生服务中心';
    set @hospaddr = '北京市昌平区兴寿镇兴寿村西';
    set @phone = '61726071';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '阳坊镇';
    
    set @hospname = '阳坊社区卫生服务中心';
    set @hospaddr = '北京市昌平区阳坊镇阳坊村中心北街13号';
    set @phone = '69762823';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '城北街道';
    
    set @hospname = '城区社区卫生服务中心';
    set @hospaddr = '北京市昌平区城北街道南环里53号';
    set @phone = '69706816';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '南口地区';
    
    set @hospname = '南口社区卫生服务中心';
    set @hospaddr = '北京市昌平区南口镇兴隆街3号';
    set @phone = '51642228';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '百善镇';
    
    set @hospname = '百善社区卫生服务中心';
    set @hospaddr = '北京市昌平区百善镇百善村西';
    set @phone = '61739134';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '北七家镇';
    
    set @hospname = '北七家社区卫生服务中心';
    set @hospaddr = '北京市昌平区北七家镇定泗路北侧';
    set @phone = '69756429';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '崔村镇';
    
    set @hospname = '崔村社区卫生服务中心';
    set @hospaddr = '北京市昌平区崔村镇政府街';
    set @phone = '60721380';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '东小口地区';
    
    set @hospname = '东小口社区卫生服务中心';
    set @hospaddr = '北京市昌平区东小口镇陈营村北';
    set @phone = '84847221';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '城南街道';
    
    set @hospname = '城区社区卫生服务中心';
    set @hospaddr = '北京市昌平区城北街道南环里53号';
    set @phone = '69706816';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '回龙观地区';
    
    set @hospname = '回龙观社区卫生服务中心';
    set @hospaddr = '北京市昌平区回龙观派出所东100米';
    set @phone = '82950224';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '昌平区';
    set @townname = '流村镇';
    
    set @hospname = '流村社区卫生服务中心';
    set @hospaddr = '北京市昌平区流村镇北流村北';
    set @phone = '89778043';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '安定镇';
    
    set @hospname = '安定社区卫生服务中心';
    set @hospaddr = '北京市大兴区安定镇善台子村';
    set @phone = '80232120';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '北臧村镇';
    
    set @hospname = '北臧村社区卫生服务中心';
    set @hospaddr = '北京市大兴区北臧村镇北兴路9号';
    set @phone = '60276179';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '采育镇';
    
    set @hospname = '采育社区卫生服务中心';
    set @hospaddr = '北京市大兴区采育镇东二营村';
    set @phone = '80275012';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '长子营镇';
    
    set @hospname = '长子营社区卫生服务中心';
    set @hospaddr = '北京市大兴区长子营镇上长子村';
    set @phone = '80265046';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '黄村地区（黄村镇）';
    
    set @hospname = '黄村社区卫生服务中心';
    set @hospaddr = '北京市大兴区黄村镇狼垡二村';
    set @phone = '69244148';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '西红门地区（西红门镇）';
    
    set @hospname = '金星社区卫生服务中心';
    set @hospaddr = '北京市大兴区西红门镇团河路金荣园小区东里';
    set @phone = '61288262';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '旧宫地区（旧宫镇）';
    
    set @hospname = '旧宫社区卫生服务中心';
    set @hospaddr = '北京市大兴区旧宫镇庑殿路32号';
    set @phone = '87972870';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '礼贤镇';
    
    set @hospname = '礼贤社区卫生服务中心';
    set @hospaddr = '北京市大兴区礼贤镇西';
    set @phone = '89271505';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '庞各庄镇';
    
    set @hospname = '庞各庄社区卫生服务中心';
    set @hospaddr = '北京市大兴区庞各庄镇繁荣村';
    set @phone = '89287912';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '黄村地区（黄村镇）';
    
    set @hospname = '孙村社区卫生服务中心';
    set @hospaddr = '北京市大兴区黄村镇孙村组团横三路西侧';
    set @phone = '61267297';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '魏善庄镇';
    
    set @hospname = '魏善庄社区卫生服务中心';
    set @hospaddr = '北京市大兴区魏善庄镇魏善庄村北';
    set @phone = '89201952';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '西红门地区（西红门镇）';
    
    set @hospname = '西红门社区卫生服务中心';
    set @hospaddr = '北京市大兴区西红门镇欣荣北大街28号';
    set @phone = '60255344';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '兴丰街道';
    
    set @hospname = '兴丰街道社区卫生服务中心';
    set @hospaddr = '北京市大兴区黄村镇富强路20号';
    set @phone = '69253643';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '亦庄地区（亦庄镇）';
    
    set @hospname = '亦庄社区卫生服务中心';
    set @hospaddr = '北京市大兴区广德北巷6号';
    set @phone = '67870497';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '瀛海镇';
    
    set @hospname = '瀛海社区卫生服务中心';
    set @hospaddr = '北京市大兴区瀛海镇政府对面';
    set @phone = '69271800';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '榆垡镇';
    
    set @hospname = '榆垡社区卫生服务中心';
    set @hospaddr = '北京市大兴区榆垡镇榆垡路9号';
    set @phone = '89213168';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '林校路街道';
    
    set @hospname = '林校路社区卫生服务中心';
    set @hospaddr = '北京市黄村西大街26号';
    set @phone = '60283295';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '清源街道';
    
    set @hospname = '清源社区卫生服务中心';
    set @hospaddr = '北京市大兴黄村兴丰北大街138号';
    set @phone = '60283678';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '大兴区';
    set @townname = '青云店镇';
    
    set @hospname = '青云店社区卫生服务中心';
    set @hospaddr = '北京市大兴区青云店镇五村';
    set @phone = '80281032';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '泉河街道';
    
    set @hospname = '泉河街道社区卫生服务中心';
    set @hospaddr = '北京市怀柔区泉河街道社区卫生服务中心';
    set @phone = '69685145';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '怀柔地区';
    
    set @hospname = '怀柔镇社区卫生服务中心';
    set @hospaddr = '北京市怀柔区兴怀大街4号';
    set @phone = '69698120';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '庙城地区';
    
    set @hospname = '庙城镇社区卫生服务中心';
    set @hospaddr = '北京市怀柔区庙城镇庙城村';
    set @phone = '01060693051';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '桥梓镇';
    
    set @hospname = '桥梓镇社区卫生服务中心';
    set @hospaddr = '北京市怀柔区桥梓镇茶坞铁路地区';
    set @phone = '01051048019';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '杨宋镇';
    
    set @hospname = '杨宋镇社区卫生服务中心';
    set @hospaddr = '北京市怀柔区杨宋镇仙台村';
    set @phone = '61671428';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '北房镇';
    
    set @hospname = '北房镇社区卫生服务中心';
    set @hospaddr = '北京市怀柔区北房镇社区卫生服务中心';
    set @phone = '61681942';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '渤海镇';
    
    set @hospname = '渤海镇社区卫生服务中心';
    set @hospaddr = '北京市怀柔区渤海镇渤海所村西';
    set @phone = '61632391';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '九渡河镇';
    
    set @hospname = '九渡河社区卫生服务中心';
    set @hospaddr = '北京市怀柔区九渡河镇黄花城村';
    set @phone = '61651165';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '雁栖地区';
    
    set @hospname = '雁栖镇社区卫生服务中心';
    set @hospaddr = '北京市怀柔区雁栖镇下庄村南434号';
    set @phone = '61642581';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '怀北镇';
    
    set @hospname = '怀北镇社区卫生服务中心';
    set @hospaddr = '北京市怀柔区怀北镇西庄村西319号';
    set @phone = '010-69662564';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '琉璃庙镇';
    
    set @hospname = '琉璃庙镇社区卫生服务中心';
    set @hospaddr = '北京市怀柔区琉璃庙镇琉璃庙村';
    set @phone = '61610541';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '汤河口镇';
    
    set @hospname = '汤河口镇社区卫生服务中心';
    set @hospaddr = '北京市怀柔区汤河口镇汤河口大街5号';
    set @phone = '89671926';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '宝山镇';
    
    set @hospname = '宝山镇社区卫生服务中心';
    set @hospaddr = '北京市怀柔区宝山镇宝山寺村115号';
    set @phone = '60625988';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '长哨营满族乡';
    
    set @hospname = '长哨营社区卫生服务中心';
    set @hospaddr = '北京市怀柔区长哨营满族乡长哨营村';
    set @phone = '60621945';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '喇叭沟门满族乡';
    
    set @hospname = '喇叭沟门社区卫生服务中心';
    set @hospaddr = '北京市怀柔区喇叭沟门村';
    set @phone = '60623519';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '怀柔区';
    set @townname = '龙山街道';
    
    set @hospname = '龙山街道社区卫生服务中心';
    set @hospaddr = '北京市怀柔区南大街24号';
    set @phone = '69647901';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '望京开发街道';
    
    set @hospname = '望京社区卫生服务中心';
    set @hospaddr = '北京市朝阳区望花路西里14号';
    set @phone = '64707662';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '望京街道';
    
    set @hospname = '望京社区卫生服务中心';
    set @hospaddr = '北京市朝阳区望花路西里14号';
    set @phone = '64707662';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '酒仙桥街道';
    
    set @hospname = '酒仙桥社区卫生服务中心';
    set @hospaddr = '北京市朝阳区酒仙桥十街坊6号';
    set @phone = '64321278';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '左家庄街道';
    
    set @hospname = '左家庄社区卫生服务中心';
    set @hospaddr = '北京市朝阳区顺源街01楼';
    set @phone = '64672412';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '三里屯街道';
    
    set @hospname = '三里屯社区卫生服务中心';
    set @hospaddr = '北京市朝阳区北三里屯南45号';
    set @phone = '010-64152731';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '团结湖街道';
    
    set @hospname = '团结湖社区卫生服务中心';
    set @hospaddr = '北京市朝阳区团结湖北三条7号楼';
    set @phone = '85975958';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '六里屯街道';
    
    set @hospname = '六里屯社区卫生服务中心';
    set @hospaddr = '北京市朝阳区水碓子东路15号';
    set @phone = '85964238';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '朝阳门外街道';
    
    set @hospname = '朝外社区卫生服务中心';
    set @hospaddr = '北京市朝阳区工体南路6号';
    set @phone = '65535620';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '八里庄街道';
    
    set @hospname = '八里庄社区卫生服务中心';
    set @hospaddr = '北京市朝阳区延静西里11楼';
    set @phone = '65005221';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '八里庄街道';
    
    set @hospname = '八里庄第二社区卫生服务中心';
    set @hospaddr = '北京市朝阳区十里堡东里119楼';
    set @phone = '65574585';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '双井街道';
    
    set @hospname = '双井社区卫生服务中心';
    set @hospaddr = '北京市朝阳区广渠门外大街31号';
    set @phone = '67788835';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '劲松街道';
    
    set @hospname = '劲松社区卫生服务中心';
    set @hospaddr = '北京市朝阳区劲松五区';
    set @phone = '87715961';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '潘家园街道';
    
    set @hospname = '潘家园社区卫生服务中心';
    set @hospaddr = '北京市朝阳区潘家园华威里25号';
    set @phone = '67719999';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '垡头街道';
    
    set @hospname = '垡头社区卫生服务中心';
    set @hospaddr = '北京市朝阳区垡头金蝉北里19号楼';
    set @phone = '67204382';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '孙河地区（孙河乡）';
    
    set @hospname = '孙河社区卫生服务中心';
    set @hospaddr = '北京市朝阳区孙河乡西甸村中街';
    set @phone = '84595672';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '来广营地区（来广营乡）';
    
    set @hospname = '来广营社区卫生服务中心';
    set @hospaddr = '北京市朝阳区朝来家园赢秋苑小区北侧综合楼';
    set @phone = '84952190';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '崔各庄地区（崔各庄乡）';
    
    set @hospname = '崔各庄社区卫生服务中心';
    set @hospaddr = '北京市朝阳区东直门外京顺路北皋北';
    set @phone = '84701525';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '金盏地区（金盏乡）';
    
    set @hospname = '金盏社区卫生服务中心';
    set @hospaddr = '北京市朝阳区金盏乡楼梓庄中心街104号';
    set @phone = '84317826';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '金盏地区（金盏乡）';
    
    set @hospname = '金盏第二社区卫生服务中心';
    set @hospaddr = '北京市朝阳区金盏大街2号，北京市朝阳区金盏乡楼梓庄中心街104号';
    set @phone = '84334240';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '东坝地区（东坝乡）';
    
    set @hospname = '东坝社区卫生服务中心';
    set @hospaddr = '北京市朝阳区东坝乡东风大队二条';
    set @phone = '84314994';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '将台地区（将台乡）';
    
    set @hospname = '将台社区卫生服务中心';
    set @hospaddr = '北京市朝阳区酒仙桥路49号';
    set @phone = '64372046';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '东风地区（东风乡）';
    
    set @hospname = '东风社区卫生服务中心';
    set @hospaddr = '北京市朝阳区南十里居40号；北京市朝阳区石佛营西里29号';
    set @phone = '84503274';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '平房地区（平房乡）';
    
    set @hospname = '平房社区卫生服务中心';
    set @hospaddr = '北京市朝阳区姚家园西里1号院1号楼';
    set @phone = '85575492';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '常营回族地区（常营回族乡）';
    
    set @hospname = '常营社区卫生服务中心';
    set @hospaddr = '北京市朝阳区常营回族乡政府西';
    set @phone = '65435960';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '高碑店地区（高碑店乡）';
    
    set @hospname = '高碑店社区卫生服务中心';
    set @hospaddr = '北京市朝阳区高碑店乡高碑店村250号';
    set @phone = '85775004';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '三间房地区（三间房乡）';
    
    set @hospname = '三间房社区卫生服务中心';
    set @hospaddr = '北京市朝阳区双桥中路铁路桥南';
    set @phone = '85365532';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '管庄地区（管庄乡）';
    
    set @hospname = '管庄第二社区卫生服务中心';
    set @hospaddr = '北京市朝阳区管庄地区瑞祥里小区17号楼';
    set @phone = '85706208';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '黑庄户地区（黑庄户乡）';
    
    set @hospname = '黑庄户社区卫生服务中心';
    set @hospaddr = '北京市朝阳区黑庄户乡黑庄户村';
    set @phone = '85386211';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '豆各庄地区（豆各庄乡）';
    
    set @hospname = '豆各庄社区卫生服务中心';
    set @hospaddr = '北京市朝阳区豆各庄乡';
    set @phone = '67384620';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '王四营地区（王四营乡）';
    
    set @hospname = '王四营社区卫生服务中心';
    set @hospaddr = '北京市朝阳区王四营乡';
    set @phone = '67379393';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '小红门地区（小红门乡）';
    
    set @hospname = '小红门社区卫生服务中心';
    set @hospaddr = '北京市朝阳区鸿博家园五区临2号';
    set @phone = '87604635';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '十八里店地区（十八里店乡）';
    
    set @hospname = '十八里店社区卫生服务中心';
    set @hospaddr = '北京市朝阳区十八里店乡周家庄村23号';
    set @phone = '1067482091';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '南磨房地区（南磨房乡）';
    
    set @hospname = '南磨房社区卫生服务中心';
    set @hospaddr = '北京市朝阳区西大望路29号';
    set @phone = '010-6732664';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '香河园街道';
    
    set @hospname = '香河园社区卫生服务中心';
    set @hospaddr = '北京市朝阳区柳芳南里15号楼';
    set @phone = '64617215';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '奥运村地区（奥运村乡）';
    
    set @hospname = '奥运村社区卫生服务中心';
    set @hospaddr = '北京市朝阳区媒体村天居园9号楼105';
    set @phone = '84828804';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '亚运村街道';
    
    set @hospname = '亚运村社区卫生服务中心';
    set @hospaddr = '北京市朝阳区安慧里一区17号楼';
    set @phone = '010-64916748';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '安贞街道';
    
    set @hospname = '安贞社区卫生服务中心';
    set @hospaddr = '北京市朝阳区安贞社区卫生服务中心';
    set @phone = '64234017';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '小关街道';
    
    set @hospname = '小关社区卫生服务中心';
    set @hospaddr = '北京市朝阳区安外小关51号';
    set @phone = '52075435';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '大屯街道';
    
    set @hospname = '大屯社区卫生服务中心';
    set @hospaddr = '北京市朝阳区安慧北里逸园甲10号';
    set @phone = '64969518';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '太阳宫地区（太阳宫乡）';
    
    set @hospname = '太阳宫社区卫生服务中心';
    set @hospaddr = '北京市朝阳区光熙门北里34号楼';
    set @phone = '64294423';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '呼家楼街道';
    
    set @hospname = '呼家楼第二社区卫生服务中心';
    set @hospaddr = '北京市朝阳区呼家楼南里1号';
    set @phone = '65006552';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '和平街街道';
    
    set @hospname = '北京市朝阳区和平街社区卫生服务中心';
    set @hospaddr = '北京市朝阳区和平街13区1号';
    set @phone = '010-64202514';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '潘家园街道';
    
    set @hospname = '北京市朝阳区潘家园第二社区卫生服务中心';
    set @hospaddr = '北京市朝阳区松榆里22号楼';
    set @phone = '67335624';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '建国门外街道';
    
    set @hospname = '朝阳区建外社区卫生服务中心';
    set @hospaddr = '北京市朝阳区东三环南路2号';
    set @phone = '67335624';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '麦子店街道';
    
    set @hospname = '朝阳区麦子店街道农展南里社区卫生服务站';
    set @hospaddr = '北京市朝阳区麦子店街道农展南里社区居委会旁';
    set @phone = '010-65026170';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '麦子店街道';
    
    set @hospname = '朝阳区麦子店街道霞光里社区卫生服务站';
    set @hospaddr = '北京市朝阳区麦子店街道霞光里30号院内';
    set @phone = '010-64632529';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '麦子店街道';
    
    set @hospname = '朝阳区麦子店街道枣营北里社区卫生服务站';
    set @hospaddr = '北京市朝阳区麦子店街道枣营北里26号楼东侧';
    set @phone = '65035115';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '首都机场街道';
    
    set @hospname = '朝阳区首都机场街道南平街社区卫生服务站';
    set @hospaddr = '北京首都机场宿舍区燕翔西里';
    set @phone = '64597291';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '酒仙桥街道';
    
    set @hospname = '朝阳区酒仙桥街道东路社区卫生服务站';
    set @hospaddr = '北京市朝阳区酒仙桥驼房营南里甲15楼2层';
    set @phone = '64321278';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);


    set @provname = '北京';
    set @cityname = '北京市';
    set @distname = '朝阳区';
    set @townname = '酒仙桥街道';
    
    set @hospname = '朝阳区酒仙桥街道南路社区卫生服务站';
    set @hospaddr = '北京市朝阳区酒仙桥十一街坊21号楼后';
    set @phone = '64321278';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);

