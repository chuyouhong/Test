# -*- coding: utf-8 -*-

import os

sql = """
    set @provname = '%s';
    set @cityname = '%s';
    set @distname = '%s';
    set @townname = '%s';
    
    set @hospname = '%s';
    set @hospaddr = '%s';
    set @phone = '%s';

    insert into geo_province (id,`name`) select (select max(id)+1 from geo_province), @provname from dual where not exists(select 1 from geo_province where `name` = @provname);

    set @provid = (select id from geo_province where `name`=@provname);

    insert into geo_city (id,`name`,province_id) select (select max(id)+1 from geo_city), @cityname,  @provid from dual where not exists(select 1 from geo_city where `name` = @cityname);

    set @cityid = (select id from geo_city where `name`=@cityname and province_id = @provid);

    insert into geo_district (id,`name`,city_id) select (select max(id)+1 from geo_district),@distname,@cityid from dual where not exists(select 1 from geo_district where `name` = @distname  and city_id = @cityid);

    set @distid = (select id from geo_district where `name` = @distname and city_id = @cityid);

    insert into geo_town (id,`name`,district_id) select (select max(id)+1 from geo_town),@townname,@distid from dual where not exists(select 1 from geo_town where `name` = @townname and district_id = @distid);

    set @townid = (select id from geo_town where name = @townname and district_id = @distid);

    
    INSERT INTO `geo_hospital` (`name`, `province_id`, `province_name`, `city_id`, `city_name`, `district_id`, `district_name`, `town_id`, `town_name`, `address`, `org_id`, `org_pic`, `org_code`, `description`, `type`, `feature`, `pic`, `level`, `phone`, `website`, `coverage`, `created`, `updated`, `disabled`, `template`) select @hospname, @provid, @provname, @cityid, @cityname, @distid, @distname, @townid, @townname, @hospaddr, '1', '', '', '', '1', '', '', '1', @phone, '', NULL, now(), now(), 1, NULL
     from dual where not exists(select 1 from geo_hospital where name = @hospname and `province_id` = @provid and `city_id` = @cityid and `district_id` = @distid and `town_id` = @townid);

"""

csvfile = 'gz.csv'
savefile = 'gz.sql'
province = '广东'
city = '广州市'

with open(savefile,'wt') as f:
    with open(csvfile, 'rt') as c:
        for row in c.readlines()[1:]:
            items = row.strip().split(',')
            if (items[0] != '' and items[1] != '' and items[2] != ''):
                tmp = sql % (province, city,items[0],items[1],items[2],items[3],items[4])
                print(tmp)
                f.write(tmp)
    

