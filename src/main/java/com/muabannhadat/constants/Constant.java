package com.muabannhadat.constants;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Constant {
//	VIEW
public static final String VIEW_ADMIN_HOME = "admin/home";
//MAPPING URL
public static final String MAPPING_URL_ADMIN_HOME = "/quan-tri/trang-chu";
public static final String MAPPING_URL_HOME = "/trang-chu";
//database
public static final String DATABASE = "db";
public static final String DIRVER_NAME_DB = "driverName";
public static final String URL_DB = "url";
public static final String USER_DB = "user";
public static final String PASSWORD_DB = "password";
public static final String PERSISTENCE_DATA = "persistence-data";
//hibernate
public static final String HIBERNATE_AUTO = "hibernate.hbm2ddl.auto";
public static final String HIBERNATE_ENABLE_LAZY = "hibernate.enable_lazy_load_no_trans";
//parram
public static final String UPDATE = "update";
public static final String CREATE = "create";
public static final String NONE = "none";

//status
public static final String ACTIVE_STATUS = "1";
public static final String INACTIVE_STATUS = "0";
public static final String TRUE = "true";
public static final String FALSE = "false";
//
public static final String ADMIN = "ADMIN";
public static final String USER = "USER";
public static final String ERROR_USER_NOT_FOUND = "User not found";
//
//public static final String RS = "i18n/messages";
//public static final String RS = "WEB-INF/resources/messages";
public static final String RS = "messages/messages";

public static final String CURRENT_YEAR_MONTH_1ST = new SimpleDateFormat("yyyy-MM").format(new Date())+"-01"+"%2000:00:00";
public static final String CURRENT_YEAR_MONTH_DAY = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
public static final String CURRENT_YEAR_MONTH_1ST_URL = new SimpleDateFormat("yyyy-MM").format(new Date())+"-01"+"%2000:00:00";
public static final String CURRENT_YEAR_MONTH_DAY_URL = new SimpleDateFormat("yyyy-MM-dd%2HH:mm:ss").format(new Date());

}
