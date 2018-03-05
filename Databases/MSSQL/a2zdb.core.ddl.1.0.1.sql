/*
 * ER/Studio Data Architect 11.0 SQL Code Generation
 * Project :      A2Zb.DM1
 *
 * Date Created : Monday, March 05, 2018 12:27:23
 * Target DBMS : Microsoft SQL Server 2012
 */

/* 
 * TABLE: A2Z_ACCOUNT 
 */

CREATE TABLE A2Z_ACCOUNT(
    ACCOUNT_ID               uniqueidentifier    NOT NULL,
    MEMBER_ID                uniqueidentifier    NOT NULL,
    ACCOUNT_TYPE             nvarchar(35)        NULL,
    ACCOUNT_CLASS            nvarchar(35)        NULL,
    ACCOUNT_NAME             nvarchar(65)        NULL,
    ACCOUNT_STATUS           nvarchar(35)        NULL,
    DISPLAY_NAME             nvarchar(65)        NULL,
    ACCOUNT_EMAIL            nvarchar(65)        NULL,
    IS_EMAIL_CONFIRMED       bit                 NULL,
    SMS_NUMBER               nvarchar(35)        NULL,
    PIN_NUMBER               varchar(1024)       NULL,
    PASS_KEY                 varchar(1024)       NULL,
    IS_PASS_KEY_EXPIRABLE    bit                 NULL,
    PASS_KEY_EXPIRE_UTS      bigint              NULL,
    HOME_METRO_CODE          int                 NULL,
    AVATAR_IMG_PATH          varchar(255)        NULL,
    LAST_SESSION_ID          varchar(37)         NULL,
    CONSTRAINT PK1 PRIMARY KEY NONCLUSTERED (ACCOUNT_ID)
)
go



IF OBJECT_ID('A2Z_ACCOUNT') IS NOT NULL
    PRINT '<<< CREATED TABLE A2Z_ACCOUNT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE A2Z_ACCOUNT >>>'
go

/* 
 * TABLE: A2Z_ACCOUNT_POLICY 
 */

CREATE TABLE A2Z_ACCOUNT_POLICY(
    PORTAL_POLICY_ID         uniqueidentifier    NOT NULL,
    ACCOUNT_ID               uniqueidentifier    NOT NULL,
    IS_PASS_KEY_EXPIRABLE    bit                 NULL,
    PASS_KEY_EXPIRE_UTS      bigint              NULL,
    CONSTRAINT PK54 PRIMARY KEY NONCLUSTERED (PORTAL_POLICY_ID, ACCOUNT_ID)
)
go



IF OBJECT_ID('A2Z_ACCOUNT_POLICY') IS NOT NULL
    PRINT '<<< CREATED TABLE A2Z_ACCOUNT_POLICY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE A2Z_ACCOUNT_POLICY >>>'
go

/* 
 * TABLE: A2Z_ACCOUNT_PREFERENCE 
 */

CREATE TABLE A2Z_ACCOUNT_PREFERENCE(
    PORTAL_PREFERENCE_ID    uniqueidentifier    NOT NULL,
    ACCOUNT_ID              uniqueidentifier    NOT NULL,
    DEFAULT_HOME            varchar(255)        NULL,
    REMEMBER_ME             bit                 NULL,
    CONSTRAINT PK56 PRIMARY KEY NONCLUSTERED (PORTAL_PREFERENCE_ID, ACCOUNT_ID)
)
go



IF OBJECT_ID('A2Z_ACCOUNT_PREFERENCE') IS NOT NULL
    PRINT '<<< CREATED TABLE A2Z_ACCOUNT_PREFERENCE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE A2Z_ACCOUNT_PREFERENCE >>>'
go

/* 
 * TABLE: A2Z_APPLICATION_STATE 
 */

CREATE TABLE A2Z_APPLICATION_STATE(
    APPLICATION_ID        uniqueidentifier    NOT NULL,
    PORTAL_ID             uniqueidentifier    NOT NULL,
    APPLICATION_TYPE      nvarchar(35)        NOT NULL,
    APPLICATION_CLASS     nvarchar(35)        NULL,
    REQUEST_TYPE          varchar(10)         NULL,
    AREA_NAME             nvarchar(35)        NULL,
    CONTROL_NAME          nvarchar(35)        NULL,
    CONTROL_PATH          nvarchar(35)        NULL,
    VIEW_NAME             nvarchar(35)        NULL,
    VIEW_PATH             varchar(65)         NULL,
    HTTP_PATH             nvarchar(255)       NULL,
    SHORT_DESC            varchar(512)        NULL,
    APPLICATION_STATUS    varchar(35)         NULL,
    PRIVACY_SETTING       varchar(35)         NOT NULL,
    IS_READ_ONLY          bit                 NULL,
    IS_HIDDEN             bit                 NULL,
    LAST_MODIFIED_UTS     bigint              NULL,
    OWNER_ID              uniqueidentifier    NULL,
    CONSTRAINT PK6 PRIMARY KEY NONCLUSTERED (APPLICATION_ID)
)
go



IF OBJECT_ID('A2Z_APPLICATION_STATE') IS NOT NULL
    PRINT '<<< CREATED TABLE A2Z_APPLICATION_STATE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE A2Z_APPLICATION_STATE >>>'
go

/* 
 * TABLE: A2Z_OBJECT_NOTATION 
 */

CREATE TABLE A2Z_OBJECT_NOTATION(
    NOTATION_ID          uniqueidentifier    NOT NULL,
    PORTAL_ID            uniqueidentifier    NOT NULL,
    NOTATION_TYPE        nvarchar(35)        NOT NULL,
    NOTATION_CLASS       nvarchar(35)        NULL,
    NOTATION_LEXICON     varchar(35)         NOT NULL,
    CLASS_TYPE           varchar(512)        NULL,
    JSON_STRING          text                NOT NULL,
    PRIVACY_SETTING      varchar(35)         NOT NULL,
    IS_READ_ONLY         bit                 NULL,
    IS_HIDDEN            bit                 NULL,
    LAST_MODIFIED_UTS    bigint              NULL,
    OWNER_ID             uniqueidentifier    NULL,
    CONSTRAINT PK25_1 PRIMARY KEY NONCLUSTERED (NOTATION_ID)
)
go



IF OBJECT_ID('A2Z_OBJECT_NOTATION') IS NOT NULL
    PRINT '<<< CREATED TABLE A2Z_OBJECT_NOTATION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE A2Z_OBJECT_NOTATION >>>'
go

/* 
 * TABLE: A2Z_PORTAL 
 */

CREATE TABLE A2Z_PORTAL(
    PORTAL_ID            uniqueidentifier    NOT NULL,
    PORTAL_TYPE          nvarchar(35)        NOT NULL,
    PORTAL_CLASS         nvarchar(35)        NULL,
    PORTAL_LEXICON       nvarchar(65)        NULL,
    PORTAL_STATUS        nvarchar(35)        NULL,
    DATE_CRETATED        datetime            NULL,
    PRIVACY_SETTING      varchar(35)         NOT NULL,
    IS_READ_ONLY         bit                 NULL,
    IS_HIDDEN            bit                 NULL,
    LAST_MODIFIED_UTS    bigint              NULL,
    OWNER_ID             uniqueidentifier    NOT NULL,
    CONSTRAINT PK2 PRIMARY KEY NONCLUSTERED (PORTAL_ID)
)
go



IF OBJECT_ID('A2Z_PORTAL') IS NOT NULL
    PRINT '<<< CREATED TABLE A2Z_PORTAL >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE A2Z_PORTAL >>>'
go

/* 
 * TABLE: A2Z_PORTAL_SUBSCRIPTION 
 */

CREATE TABLE A2Z_PORTAL_SUBSCRIPTION(
    SUBSCRIPTION_ID       uniqueidentifier    NOT NULL,
    PORTAL_ID             uniqueidentifier    NOT NULL,
    ACCOUNT_ID            uniqueidentifier    NOT NULL,
    SUBSCRIPTION_TYPE     nvarchar(35)        NOT NULL,
    SUBSCRIPTION_CLASS    nvarchar(35)        NULL,
    LAST_MODIFIED_UTS     bigint              NULL,
    GRANTED_BY            uniqueidentifier    NULL,
    CONSTRAINT PK4 PRIMARY KEY NONCLUSTERED (SUBSCRIPTION_ID)
)
go



IF OBJECT_ID('A2Z_PORTAL_SUBSCRIPTION') IS NOT NULL
    PRINT '<<< CREATED TABLE A2Z_PORTAL_SUBSCRIPTION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE A2Z_PORTAL_SUBSCRIPTION >>>'
go

/* 
 * TABLE: A2Z_SESSION_STATE 
 */

CREATE TABLE A2Z_SESSION_STATE(
    SESSION_ID            uniqueidentifier    NOT NULL,
    PORTAL_ID             uniqueidentifier    NOT NULL,
    ACCOUNT_ID            uniqueidentifier    NOT NULL,
    FAILED_LOGIN_COUNT    int                 NULL,
    IS_SUSPICIOUS         bit                 NULL,
    LAST_LOGIN_UTS        bigint              NULL,
    SESSION_EXPIRE_UTS    bigint              NULL,
    COOKIE_EXPIRE_UTS     bigint              NULL,
    IP_ADDRESS            varchar(35)         NULL,
    USER_AGENT            varchar(512)        NULL,
    DATE_CREATED          bigint              NULL,
    LOGIN_HOME            varchar(255)        NULL,
    CONSTRAINT PK5 PRIMARY KEY NONCLUSTERED (SESSION_ID, PORTAL_ID)
)
go



IF OBJECT_ID('A2Z_SESSION_STATE') IS NOT NULL
    PRINT '<<< CREATED TABLE A2Z_SESSION_STATE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE A2Z_SESSION_STATE >>>'
go

/* 
 * TABLE: CMS_CONTAINER 
 */

CREATE TABLE CMS_CONTAINER(
    CONTAINER_ID          uniqueidentifier    NOT NULL,
    CONTAINER_TYPE        nvarchar(35)        NOT NULL,
    CONTAINER_CLASS       nvarchar(35)        NULL,
    CONTAINER_LEXICON     nvarchar(65)        NULL,
    CONTAINER_STATUS      nvarchar(35)        NULL,
    TEMPLATE_DATA         text                NULL,
    LAST_MODIFIED_DATE    datetime            NULL,
    CONSTRAINT PK27 PRIMARY KEY NONCLUSTERED (CONTAINER_ID)
)
go



IF OBJECT_ID('CMS_CONTAINER') IS NOT NULL
    PRINT '<<< CREATED TABLE CMS_CONTAINER >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE CMS_CONTAINER >>>'
go

/* 
 * TABLE: CMS_CONTENT 
 */

CREATE TABLE CMS_CONTENT(
    CONTENT_ID        uniqueidentifier    NOT NULL,
    CONTAINER_ID      uniqueidentifier    NOT NULL,
    CONTENT_TYPE      nvarchar(35)        NOT NULL,
    CONTENT_CLASS     nvarchar(35)        NULL,
    CONTENT_TITLE     nvarchar(255)       NULL,
    CONTENT_PATH      nvarchar(255)       NULL,
    IS_DYNAMIC        bit                 NULL,
    CONTENT_STATUS    nvarchar(35)        NULL,
    CONTENT_DATA      text                NULL,
    SURROGATE_KEY     uniqueidentifier    NULL,
    AUTHOR            uniqueidentifier    NULL,
    IS_RATABLE        bit                 NULL,
    IS_COMMENTABLE    bit                 NULL,
    CONSTRAINT PK28 PRIMARY KEY NONCLUSTERED (CONTENT_ID)
)
go



IF OBJECT_ID('CMS_CONTENT') IS NOT NULL
    PRINT '<<< CREATED TABLE CMS_CONTENT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE CMS_CONTENT >>>'
go

/* 
 * TABLE: CMS_CONTENT_SOCIAL 
 */

CREATE TABLE CMS_CONTENT_SOCIAL(
    SOCIAL_ID          uniqueidentifier    NOT NULL,
    CONTENT_ID         uniqueidentifier    NOT NULL,
    SOCIAL_TYPE        nvarchar(35)        NOT NULL,
    SOCIAL_CLASS       nvarchar(35)        NULL,
    IS_RATABLE         bit                 NULL,
    IS_COMMENTABLE     bit                 NULL,
    PRIVACY_SETTING    nvarchar(35)        NULL,
    IS_HIDDEN          nvarchar(35)        NULL,
    CONSTRAINT PK29 PRIMARY KEY NONCLUSTERED (SOCIAL_ID)
)
go



IF OBJECT_ID('CMS_CONTENT_SOCIAL') IS NOT NULL
    PRINT '<<< CREATED TABLE CMS_CONTENT_SOCIAL >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE CMS_CONTENT_SOCIAL >>>'
go

/* 
 * TABLE: CMS_FILE_SYSTEM 
 */

CREATE TABLE CMS_FILE_SYSTEM(
    FILE_ID       uniqueidentifier    NOT NULL,
    CONTENT_ID    uniqueidentifier    NOT NULL,
    FILE_TYPE     nvarchar(35)        NOT NULL,
    CONSTRAINT PK32 PRIMARY KEY NONCLUSTERED (FILE_ID)
)
go



IF OBJECT_ID('CMS_FILE_SYSTEM') IS NOT NULL
    PRINT '<<< CREATED TABLE CMS_FILE_SYSTEM >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE CMS_FILE_SYSTEM >>>'
go

/* 
 * TABLE: CMS_OBJECT_NOTATION 
 */

CREATE TABLE CMS_OBJECT_NOTATION(
    NOTATION_ID          uniqueidentifier    NOT NULL,
    CONTENT_ID           uniqueidentifier    NOT NULL,
    NOTATION_TYPE        nvarchar(35)        NOT NULL,
    NOTATION_CLASS       nvarchar(35)        NULL,
    NOTATION_LEXICON     varchar(35)         NOT NULL,
    CLASS_TYPE           varchar(512)        NULL,
    JSON_STRING          text                NOT NULL,
    PRIVACY_SETTING      varchar(35)         NOT NULL,
    IS_READ_ONLY         bit                 NULL,
    IS_HIDDEN            bit                 NULL,
    LAST_MODIFIED_UTS    bigint              NULL,
    OWNER_ID             uniqueidentifier    NULL,
    CONSTRAINT PK25_1_1 PRIMARY KEY NONCLUSTERED (NOTATION_ID)
)
go



IF OBJECT_ID('CMS_OBJECT_NOTATION') IS NOT NULL
    PRINT '<<< CREATED TABLE CMS_OBJECT_NOTATION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE CMS_OBJECT_NOTATION >>>'
go

/* 
 * TABLE: CMS_PERFORMANCE_KEYS 
 */

CREATE TABLE CMS_PERFORMANCE_KEYS(
    INDICATOR_ID       uniqueidentifier    NOT NULL,
    CONTENT_ID         uniqueidentifier    NOT NULL,
    INDICATOR_TYPE     nvarchar(35)        NOT NULL,
    INDICATOR_CLASS    nvarchar(35)        NULL,
    POSITIVE_RATE      int                 NULL,
    NEGATIVE_RATE      int                 NULL,
    CONSTRAINT PK30 PRIMARY KEY NONCLUSTERED (INDICATOR_ID)
)
go



IF OBJECT_ID('CMS_PERFORMANCE_KEYS') IS NOT NULL
    PRINT '<<< CREATED TABLE CMS_PERFORMANCE_KEYS >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE CMS_PERFORMANCE_KEYS >>>'
go

/* 
 * TABLE: COM_CONTACT 
 */

CREATE TABLE COM_CONTACT(
    CONTACT_ID           uniqueidentifier    NOT NULL,
    MEMBER_ID            uniqueidentifier    NOT NULL,
    CONTACT_TYPE         nvarchar(35)        NOT NULL,
    CONTACT_CLASS        nvarchar(35)        NULL,
    CONTACT_LEXICON      nvarchar(65)        NOT NULL,
    CONTACT_VALUE        nvarchar(65)        NOT NULL,
    PRIVACY_SETTING      nvarchar(35)        NOT NULL,
    IS_READ_ONLY         bit                 NULL,
    IS_HIDDEN            bit                 NULL,
    LAST_MODIFIED_UTS    bigint              NULL,
    OWNER_ID             uniqueidentifier    NULL,
    CONSTRAINT PK19 PRIMARY KEY NONCLUSTERED (CONTACT_ID)
)
go



IF OBJECT_ID('COM_CONTACT') IS NOT NULL
    PRINT '<<< CREATED TABLE COM_CONTACT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE COM_CONTACT >>>'
go

/* 
 * TABLE: COM_LOCATION 
 */

CREATE TABLE COM_LOCATION(
    LOCATION_ID          uniqueidentifier    NOT NULL,
    MEMBER_ID            uniqueidentifier    NOT NULL,
    LOCATION_TYPE        nvarchar(35)        NOT NULL,
    LOCATION_CLASS       nvarchar(35)        NULL,
    LOCATION_LEXICON     nvarchar(65)        NOT NULL,
    COUNTRY_CODE         varchar(2)          NOT NULL,
    REGION_CODE          varchar(3)          NULL,
    METRO_CODE           int                 NULL,
    POSTAL_CODE          varchar(20)         NULL,
    MUNICIPALITY         nvarchar(255)       NULL,
    LOCATION_LINE1       nvarchar(255)       NULL,
    LOCATION_LINE2       nvarchar(255)       NULL,
    LOCATION_LINE3       nvarchar(255)       NULL,
    PRIVACY_SETTING      varchar(35)         NULL,
    IS_READ_ONLY         bit                 NULL,
    IS_HIDDEN            bit                 NULL,
    LAST_MODIFIED_UTS    bigint              NULL,
    OWNER_ID             uniqueidentifier    NOT NULL,
    CONSTRAINT PK20 PRIMARY KEY NONCLUSTERED (LOCATION_ID)
)
go



IF OBJECT_ID('COM_LOCATION') IS NOT NULL
    PRINT '<<< CREATED TABLE COM_LOCATION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE COM_LOCATION >>>'
go

/* 
 * TABLE: COM_MEMBER 
 */

CREATE TABLE COM_MEMBER(
    MEMBER_ID            uniqueidentifier    NOT NULL,
    MEMBER_TYPE          nvarchar(35)        NOT NULL,
    MEMBER_CLASS         nvarchar(35)        NULL,
    DISPLAY_NAME         nvarchar(150)       NOT NULL,
    COMMON_NAME          nvarchar(65)        NULL,
    GIVEN_NAME           nvarchar(65)        NULL,
    OTHER_NAME           nvarchar(65)        NULL,
    PARTITION            nvarchar(35)        NULL,
    SOURCE               nvarchar(35)        NULL,
    PRIVACY_SETTING      varchar(35)         NULL,
    IS_READ_ONLY         bit                 NULL,
    IS_HIDDEN            bit                 NULL,
    LAST_MODIFIED_UTS    bigint              NULL,
    OWNER_ID             uniqueidentifier    NULL,
    CONSTRAINT PK_COM_MEMBER_UUID PRIMARY KEY NONCLUSTERED (MEMBER_ID)
)
go



IF OBJECT_ID('COM_MEMBER') IS NOT NULL
    PRINT '<<< CREATED TABLE COM_MEMBER >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE COM_MEMBER >>>'
go

/* 
 * TABLE: COM_MEMBER_DOCUMENT 
 */

CREATE TABLE COM_MEMBER_DOCUMENT(
    DOCUMENT_ID          uniqueidentifier    NOT NULL,
    MEMBER_ID            uniqueidentifier    NOT NULL,
    DOCUMENT_TYPE        nvarchar(35)        NOT NULL,
    DOCUMENT_CLASS       nvarchar(35)        NULL,
    DOCUMENT_STATUS      varchar(35)         NOT NULL,
    DOCUMENT_LEXICON     varchar(65)         NULL,
    DOCUMENT_WEB_PATH    varchar(255)        NULL,
    DOCUMENT_MARK_UP     text                NULL,
    DOCUMENT_AUTHOR      varchar(255)        NULL,
    PRIVACY_SETTING      nvarchar(35)        NULL,
    IS_READ_ONLY         bit                 NULL,
    IS_HIDDEN            bit                 NULL,
    LAST_MODIFIED_UTS    bigint              NULL,
    OWNER_ID             uniqueidentifier    NULL,
    NOTATION_ID          uniqueidentifier    NULL,
    CONTAINER_ID         uniqueidentifier    NOT NULL,
    CONSTRAINT PK24 PRIMARY KEY NONCLUSTERED (DOCUMENT_ID)
)
go



IF OBJECT_ID('COM_MEMBER_DOCUMENT') IS NOT NULL
    PRINT '<<< CREATED TABLE COM_MEMBER_DOCUMENT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE COM_MEMBER_DOCUMENT >>>'
go

/* 
 * TABLE: COM_OBJECT_NOTATION 
 */

CREATE TABLE COM_OBJECT_NOTATION(
    NOTATION_ID          uniqueidentifier    NOT NULL,
    MEMBER_ID            uniqueidentifier    NOT NULL,
    NOTATION_TYPE        nvarchar(35)        NOT NULL,
    NOTATION_CLASS       nvarchar(35)        NULL,
    NOTATION_LEXICON     varchar(35)         NOT NULL,
    CLASS_TYPE           varchar(512)        NULL,
    JSON_STRING          text                NOT NULL,
    PRIVACY_SETTING      varchar(35)         NOT NULL,
    IS_READ_ONLY         bit                 NULL,
    IS_HIDDEN            bit                 NULL,
    LAST_MODIFIED_UTS    bigint              NULL,
    OWNER_ID             uniqueidentifier    NULL,
    CONSTRAINT PK25 PRIMARY KEY NONCLUSTERED (NOTATION_ID)
)
go



IF OBJECT_ID('COM_OBJECT_NOTATION') IS NOT NULL
    PRINT '<<< CREATED TABLE COM_OBJECT_NOTATION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE COM_OBJECT_NOTATION >>>'
go

/* 
 * TABLE: COM_RELATIONSHIP 
 */

CREATE TABLE COM_RELATIONSHIP(
    RELATIONSHIP_ID           uniqueidentifier    NOT NULL,
    RELATED_FROM_MEMBER       uniqueidentifier    NOT NULL,
    RELATED_TO_MEMBER         uniqueidentifier    NOT NULL,
    RELATIONSHIP_TYPE         nvarchar(35)        NOT NULL,
    RELATIONSHIP_CLASS        nvarchar(35)        NULL,
    RELATIONSHIP_LEXICON      nvarchar(65)        NULL,
    IS_ACTIVE_RELATIONSHIP    bit                 NULL,
    START_UTS                 bigint              NULL,
    END_UTS                   bigint              NULL,
    LAST_MODIFIED_UTS         bigint              NULL,
    CONSTRAINT PK21 PRIMARY KEY NONCLUSTERED (RELATIONSHIP_ID)
)
go



IF OBJECT_ID('COM_RELATIONSHIP') IS NOT NULL
    PRINT '<<< CREATED TABLE COM_RELATIONSHIP >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE COM_RELATIONSHIP >>>'
go

/* 
 * TABLE: COM_ROLE 
 */

CREATE TABLE COM_ROLE(
    ROLE_ID              uniqueidentifier    NOT NULL,
    MEMBER_ID            uniqueidentifier    NOT NULL,
    ROLE_TYPE            nvarchar(35)        NOT NULL,
    ROLE_CLASS           nvarchar(35)        NULL,
    ROLE_LEXICON         nvarchar(65)        NOT NULL,
    SHORT_DESC           nvarchar(512)       NULL,
    SURROGATE_KEY        uniqueidentifier    NULL,
    IS_ACTIVE            bit                 NULL,
    START_UTS            bigint              NULL,
    END_UTS              bigint              NULL,
    LAST_MODIFIED_UTS    bigint              NULL,
    CONSTRAINT PK22 PRIMARY KEY NONCLUSTERED (ROLE_ID)
)
go



IF OBJECT_ID('COM_ROLE') IS NOT NULL
    PRINT '<<< CREATED TABLE COM_ROLE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE COM_ROLE >>>'
go

/* 
 * TABLE: COM_STRUCTURE 
 */

CREATE TABLE COM_STRUCTURE(
    STRUCTURE_ID         uniqueidentifier    NOT NULL,
    MEMBER_ID            uniqueidentifier    NOT NULL,
    LOCATION_ID          uniqueidentifier    NOT NULL,
    STRUCTURE_TYPE       nvarchar(35)        NOT NULL,
    STRUCTURE_CLASS      nvarchar(35)        NULL,
    STRUCTURE_LEXICON    nvarchar(65)        NOT NULL,
    CONSTRAINT PK23 PRIMARY KEY NONCLUSTERED (STRUCTURE_ID)
)
go



IF OBJECT_ID('COM_STRUCTURE') IS NOT NULL
    PRINT '<<< CREATED TABLE COM_STRUCTURE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE COM_STRUCTURE >>>'
go

/* 
 * TABLE: DEV_CALANDAR 
 */

CREATE TABLE DEV_CALANDAR(
    CALENDAR_ID       uniqueidentifier    NOT NULL,
    CALENDAR_TYPE     nvarchar(35)        NOT NULL,
    CALENDAR_CLASS    nvarchar(35)        NULL,
    EVENT_NAME        nvarchar(35)        NULL,
    EVENT_DETAILS     nvarchar(4000)      NULL,
    EVENT_CATEGORY    nvarchar(35)        NULL,
    UTS_ID            bigint              NOT NULL,
    UTS_START         bigint              NULL,
    UTS_END           bigint              NULL,
    IS_PUBLISHED      bit                 NULL,
    SURROGATE_KEY     uniqueidentifier    NULL,
    CONSTRAINT PK35_1 PRIMARY KEY NONCLUSTERED (CALENDAR_ID)
)
go



IF OBJECT_ID('DEV_CALANDAR') IS NOT NULL
    PRINT '<<< CREATED TABLE DEV_CALANDAR >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DEV_CALANDAR >>>'
go

/* 
 * TABLE: DEV_OBJECT_NOTATION 
 */

CREATE TABLE DEV_OBJECT_NOTATION(
    NOTATION_ID          uniqueidentifier    NOT NULL,
    SURROGATE_KEY        uniqueidentifier    NOT NULL,
    NOTATION_TYPE        nvarchar(35)        NOT NULL,
    NOTATION_CLASS       nvarchar(35)        NULL,
    NOTATION_LEXICON     varchar(35)         NOT NULL,
    CLASS_TYPE           varchar(512)        NULL,
    JSON_STRING          text                NOT NULL,
    PRIVACY_SETTING      varchar(35)         NOT NULL,
    IS_READ_ONLY         bit                 NULL,
    IS_HIDDEN            bit                 NULL,
    LAST_MODIFIED_UTS    bigint              NULL,
    OWNER_ID             uniqueidentifier    NULL,
    CONSTRAINT PK25_2 PRIMARY KEY NONCLUSTERED (NOTATION_ID)
)
go



IF OBJECT_ID('DEV_OBJECT_NOTATION') IS NOT NULL
    PRINT '<<< CREATED TABLE DEV_OBJECT_NOTATION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DEV_OBJECT_NOTATION >>>'
go

/* 
 * TABLE: DEV_PROJECT 
 */

CREATE TABLE DEV_PROJECT(
    PROJECT_ID         uniqueidentifier    NOT NULL,
    PROJECT_TYPE       nvarchar(35)        NOT NULL,
    PROJECT_CLASS      nvarchar(35)        NULL,
    PROJECT_NAME       nvarchar(65)        NULL,
    SHORT_DESC         nvarchar(512)       NULL,
    PRIVACY_SETTING    nvarchar(35)        NULL,
    PROJECT_OWNER      uniqueidentifier    NULL,
    CONSTRAINT PK36 PRIMARY KEY NONCLUSTERED (PROJECT_ID)
)
go



IF OBJECT_ID('DEV_PROJECT') IS NOT NULL
    PRINT '<<< CREATED TABLE DEV_PROJECT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DEV_PROJECT >>>'
go

/* 
 * TABLE: DEV_PROJECT_DOCUMENT 
 */

CREATE TABLE DEV_PROJECT_DOCUMENT(
    DOCUMENT_ID          uniqueidentifier    NOT NULL,
    SURROGATE_KEY        nvarchar(35)        NOT NULL,
    DOCUMENT_TYPE        nvarchar(35)        NOT NULL,
    DOCUMENT_CLASS       nvarchar(35)        NULL,
    DOCUMENT_STATUS      varchar(35)         NOT NULL,
    DOCUMENT_LEXICON     varchar(65)         NULL,
    DOCUMENT_WEB_PATH    varchar(255)        NULL,
    DOCUMENT_MARK_UP     text                NULL,
    DOCUMENT_AUTHOR      varchar(255)        NULL,
    PRIVACY_SETTING      nvarchar(35)        NULL,
    IS_READ_ONLY         bit                 NULL,
    IS_HIDDEN            bit                 NULL,
    LAST_MODIFIED_UTS    bigint              NULL,
    OWNER_ID             uniqueidentifier    NULL,
    CONTAINER_ID         uniqueidentifier    NULL,
    NOTATION_ID          uniqueidentifier    NULL,
    CONSTRAINT PK24_1 PRIMARY KEY NONCLUSTERED (DOCUMENT_ID)
)
go



IF OBJECT_ID('DEV_PROJECT_DOCUMENT') IS NOT NULL
    PRINT '<<< CREATED TABLE DEV_PROJECT_DOCUMENT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DEV_PROJECT_DOCUMENT >>>'
go

/* 
 * TABLE: DEV_PROJECT_TODO 
 */

CREATE TABLE DEV_PROJECT_TODO(
    TASK_ID           uniqueidentifier    NOT NULL,
    PROJECT_ID        uniqueidentifier    NOT NULL,
    TASK_TYPE         nvarchar(35)        NOT NULL,
    TASK_CLASS        nvarchar(35)        NULL,
    TASK_LEXICON      varchar(150)        NULL,
    TASK_OWNER        uniqueidentifier    NULL,
    TASK_STATUS       nvarchar(35)        NULL,
    TASK_START_UTS    bigint              NULL,
    END_UTS           bigint              NULL,
    TOTAL_HOURS       int                 NULL,
    CONSTRAINT PK37 PRIMARY KEY NONCLUSTERED (TASK_ID)
)
go



IF OBJECT_ID('DEV_PROJECT_TODO') IS NOT NULL
    PRINT '<<< CREATED TABLE DEV_PROJECT_TODO >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE DEV_PROJECT_TODO >>>'
go

/* 
 * TABLE: EAV_ACTIVITY_FEED 
 */

CREATE TABLE EAV_ACTIVITY_FEED(
    FEED_ID         uniqueidentifier    NOT NULL,
    FEED_TYPE       nvarchar(35)        NOT NULL,
    FEED_CLASS      nvarchar(35)        NULL,
    FEED_SEED       nvarchar(35)        NULL,
    FEED_LEXICON    varchar(35)         NULL,
    SHORT_DESC      nvarchar(65)        NULL,
    JSON_STRING     nvarchar(max)       NULL,
    AUTHOR          nvarchar(125)       NULL,
    UTS_START       bigint              NULL,
    UTS_END         bigint              NULL,
    STATUS          nvarchar(35)        NULL,
    CONSTRAINT PK51 PRIMARY KEY NONCLUSTERED (FEED_ID)
)
go



IF OBJECT_ID('EAV_ACTIVITY_FEED') IS NOT NULL
    PRINT '<<< CREATED TABLE EAV_ACTIVITY_FEED >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EAV_ACTIVITY_FEED >>>'
go

/* 
 * TABLE: EAV_ACTIVITY_LOG 
 */

CREATE TABLE EAV_ACTIVITY_LOG(
    LOG_ID         uniqueidentifier    NOT NULL,
    LOG_TYPE       nvarchar(35)        NOT NULL,
    LOG_CLASS      nvarchar(35)        NULL,
    LOG_LEXICON    nvarchar(65)        NULL,
    LOG_UTS        bigint              NULL,
    LOG_MESSAGE    nvarchar(512)       NULL,
    LOG_LEVEL      nvarchar(35)        NULL,
    JSON_STRING    nvarchar(max)       NULL,
    CONSTRAINT PK15 PRIMARY KEY NONCLUSTERED (LOG_ID)
)
go



IF OBJECT_ID('EAV_ACTIVITY_LOG') IS NOT NULL
    PRINT '<<< CREATED TABLE EAV_ACTIVITY_LOG >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EAV_ACTIVITY_LOG >>>'
go

/* 
 * TABLE: EAV_MEMBER 
 */

CREATE TABLE EAV_MEMBER(
    ATTRIBUTE_ID        uniqueidentifier    NOT NULL,
    MEMBER_ID           uniqueidentifier    NOT NULL,
    EAV_MEMBER_TYPE     nvarchar(35)        NOT NULL,
    EAV_MEMBER_CLASS    nvarchar(35)        NULL,
    ATTRIBUTE_KEY       nvarchar(65)        NULL,
    ATTRIBUTE_VALUE     nvarchar(65)        NULL,
    SURROGATE_KEY       uniqueidentifier    NULL,
    ATTRIBUTE_DATE      datetime            NULL,
    CONSTRAINT PK16 PRIMARY KEY NONCLUSTERED (ATTRIBUTE_ID)
)
go



IF OBJECT_ID('EAV_MEMBER') IS NOT NULL
    PRINT '<<< CREATED TABLE EAV_MEMBER >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EAV_MEMBER >>>'
go

/* 
 * TABLE: EAV_MEMBER_ATTRIBUTE 
 */

CREATE TABLE EAV_MEMBER_ATTRIBUTE(
    VALUE_ID         uniqueidentifier    NOT NULL,
    ATTRIBUTE_ID     uniqueidentifier    NOT NULL,
    DATE_VALUE       datetime            NULL,
    MONEY_VALUE      money               NULL,
    NUMBER_VALUE     int                 NULL,
    BOOLEAN_VALUE    bit                 NULL,
    STRING_VALUE     nvarchar(65)        NULL,
    CONSTRAINT PK17 PRIMARY KEY NONCLUSTERED (VALUE_ID)
)
go



IF OBJECT_ID('EAV_MEMBER_ATTRIBUTE') IS NOT NULL
    PRINT '<<< CREATED TABLE EAV_MEMBER_ATTRIBUTE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EAV_MEMBER_ATTRIBUTE >>>'
go

/* 
 * TABLE: EAV_OBJECT_NOTATION 
 */

CREATE TABLE EAV_OBJECT_NOTATION(
    NOTATION_ID         uniqueidentifier    NOT NULL,
    NOTATION_TYPE       nvarchar(35)        NOT NULL,
    NOTATION_CLASS      nvarchar(35)        NULL,
    NOTATION_LEXICON    nvarchar(65)        NULL,
    JSON_STRING         text                NULL,
    SURROGATE_KEY       varchar(35)         NULL,
    CONSTRAINT PK14 PRIMARY KEY NONCLUSTERED (NOTATION_ID)
)
go



IF OBJECT_ID('EAV_OBJECT_NOTATION') IS NOT NULL
    PRINT '<<< CREATED TABLE EAV_OBJECT_NOTATION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE EAV_OBJECT_NOTATION >>>'
go

/* 
 * TABLE: GEO_COUNTRY 
 */

CREATE TABLE GEO_COUNTRY(
    COUNTRY_CODE_A2               varchar(2)     NOT NULL,
    GAZETTEER_NAME                varchar(65)    NULL,
    PROPER_NAME                   varchar(65)    NULL,
    FORMAL_NAME                   varchar(65)    NULL,
    NATIONALITY                   varchar(35)    NULL,
    COUNTRY_CODE_A3               varchar(3)     NULL,
    COUNTRY_CODE_N3               int            NULL,
    COUNTRY_CODE_N3_REGION        int            NULL,
    COUNTRY_CODE_N3_SUB_REGION    int            NULL,
    FIPS                          varchar(2)     NULL,
    CONSTRAINT PK41 PRIMARY KEY NONCLUSTERED (COUNTRY_CODE_A2)
)
go



IF OBJECT_ID('GEO_COUNTRY') IS NOT NULL
    PRINT '<<< CREATED TABLE GEO_COUNTRY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE GEO_COUNTRY >>>'
go

/* 
 * TABLE: GEO_IP_BLOCK 
 */

CREATE TABLE GEO_IP_BLOCK(
    GEO_IP_BLOCK_ID    uniqueidentifier    NOT NULL,
    START_IP_NUM       bigint              NULL,
    END_IP_NUM         varchar(35)         NULL,
    LOCATION_ID        int                 NULL,
    CONSTRAINT PK42 PRIMARY KEY NONCLUSTERED (GEO_IP_BLOCK_ID)
)
go



IF OBJECT_ID('GEO_IP_BLOCK') IS NOT NULL
    PRINT '<<< CREATED TABLE GEO_IP_BLOCK >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE GEO_IP_BLOCK >>>'
go

/* 
 * TABLE: GEO_IP_LOCATION 
 */

CREATE TABLE GEO_IP_LOCATION(
    LOCATION_ID     int              NOT NULL,
    COUNTRY_CODE    char(2)          NULL,
    REGION_CODE     varchar(2)       NULL,
    MUNICIPALITY    varchar(255)     NULL,
    POSTAL_CODE     varchar(10)      NULL,
    LATITUDE        decimal(8, 6)    NULL,
    LONGITUDE       decimal(8, 6)    NULL,
    METRO_CODE      int              NULL,
    AREA_CODE       varchar(3)       NULL,
    CONSTRAINT PK43 PRIMARY KEY NONCLUSTERED (LOCATION_ID)
)
go



IF OBJECT_ID('GEO_IP_LOCATION') IS NOT NULL
    PRINT '<<< CREATED TABLE GEO_IP_LOCATION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE GEO_IP_LOCATION >>>'
go

/* 
 * TABLE: GEO_IP_REGION 
 */

CREATE TABLE GEO_IP_REGION(
    GEO_IP_REGION_ID    int            NOT NULL,
    REGION_CODE         varchar(2)     NULL,
    COUNTRY_CODE        varchar(2)     NULL,
    REGION_NAME         varchar(65)    NULL,
    CONSTRAINT PK44 PRIMARY KEY NONCLUSTERED (GEO_IP_REGION_ID)
)
go



IF OBJECT_ID('GEO_IP_REGION') IS NOT NULL
    PRINT '<<< CREATED TABLE GEO_IP_REGION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE GEO_IP_REGION >>>'
go

/* 
 * TABLE: GEO_METRO_USA 
 */

CREATE TABLE GEO_METRO_USA(
    METRO_USA_ID    uniqueidentifier    NOT NULL,
    CRITERIA_ID     bigint              NULL,
    METRO_CODE      int                 NULL,
    METRO_REGION    varchar(255)        NULL,
    MUNICIPALITY    varchar(65)         NULL,
    STATE           varchar(35)         NULL,
    REGION_CODE     varchar(2)          NULL,
    CONSTRAINT PK45 PRIMARY KEY NONCLUSTERED (METRO_USA_ID)
)
go



IF OBJECT_ID('GEO_METRO_USA') IS NOT NULL
    PRINT '<<< CREATED TABLE GEO_METRO_USA >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE GEO_METRO_USA >>>'
go

/* 
 * TABLE: GEO_POSTAL_USA 
 */

CREATE TABLE GEO_POSTAL_USA(
    POSTAL_ID       uniqueidentifier    NOT NULL,
    COUNTRY_CODE    char(2)             NULL,
    POSTAL_CODE     varchar(20)         NULL,
    PLACE_NAME      varchar(180)        NULL,
    ADMIN_NAME1     varchar(100)        NULL,
    ADMIN_CODE1     varchar(20)         NULL,
    ADMIN_NAME2     varchar(100)        NULL,
    ADMIN_CODE2     varchar(20)         NULL,
    ADMIN_NAME3     varchar(100)        NULL,
    ADMIN_CODE3     varchar(20)         NULL,
    LATITUDE        decimal(8, 6)       NULL,
    LONGITUDE       decimal(9, 6)       NULL,
    IMPORT_DATE     datetime            NULL,
    CONSTRAINT PK47 PRIMARY KEY NONCLUSTERED (POSTAL_ID)
)
go



IF OBJECT_ID('GEO_POSTAL_USA') IS NOT NULL
    PRINT '<<< CREATED TABLE GEO_POSTAL_USA >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE GEO_POSTAL_USA >>>'
go

/* 
 * TABLE: MDR_CONTENT 
 */

CREATE TABLE MDR_CONTENT(
    METADATA_KEY         nvarchar(35)     NOT NULL,
    PARENT_KEY           nvarchar(35)     NULL,
    PROTOTYPE_KEY        nvarchar(35)     NOT NULL,
    LEXICON              nvarchar(65)     NOT NULL,
    SHORT_DESC           nvarchar(512)    NULL,
    JSON_STRING          nvarchar(max)    NULL,
    MDR_PARTITION        nvarchar(65)     NULL,
    TARGET_COLUMN        nvarchar(65)     NULL,
    SOURCE               nvarchar(65)     NULL,
    READ_ONLY            bit              NULL,
    IS_HIDDEN            bit              NULL,
    LAST_MODIFIED_UTS    bigint           NULL,
    CONSTRAINT PK13 PRIMARY KEY NONCLUSTERED (METADATA_KEY)
)
go



IF OBJECT_ID('MDR_CONTENT') IS NOT NULL
    PRINT '<<< CREATED TABLE MDR_CONTENT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE MDR_CONTENT >>>'
go

/* 
 * TABLE: MDR_CORE_MODEL 
 */

CREATE TABLE MDR_CORE_MODEL(
    METADATA_KEY         nvarchar(35)     NOT NULL,
    PARENT_KEY           nvarchar(35)     NULL,
    PROTOTYPE_KEY        nvarchar(35)     NOT NULL,
    LEXICON              nvarchar(65)     NOT NULL,
    SHORT_DESC           nvarchar(512)    NOT NULL,
    JSON_STRING          nvarchar(max)    NULL,
    MDR_PARTITION        nvarchar(65)     NULL,
    TARGET_COLUMN        nvarchar(65)     NULL,
    SOURCE               nvarchar(65)     NULL,
    READ_ONLY            bit              NULL,
    IS_HIDDEN            bit              NULL,
    LAST_MODIFIED_UTS    bigint           NULL,
    CONSTRAINT PK10 PRIMARY KEY NONCLUSTERED (METADATA_KEY)
)
go



IF OBJECT_ID('MDR_CORE_MODEL') IS NOT NULL
    PRINT '<<< CREATED TABLE MDR_CORE_MODEL >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE MDR_CORE_MODEL >>>'
go

/* 
 * TABLE: MDR_DEVOPS 
 */

CREATE TABLE MDR_DEVOPS(
    METADATA_KEY         nvarchar(35)     NOT NULL,
    PARENT_KEY           nvarchar(35)     NULL,
    PROTOTYPE_KEY        nvarchar(35)     NOT NULL,
    LEXICON              nvarchar(65)     NULL,
    SHORT_DESC           nvarchar(512)    NULL,
    JSON_STRING          nvarchar(max)    NULL,
    MDR_PARTITION        nvarchar(65)     NULL,
    TARGET_COLUMN        nvarchar(65)     NULL,
    SOURCE               nvarchar(65)     NULL,
    READ_ONLY            bit              NULL,
    IS_HIDDEN            bit              NULL,
    LAST_MODIFIED_UTS    bigint           NULL,
    CONSTRAINT PK12 PRIMARY KEY NONCLUSTERED (METADATA_KEY)
)
go



IF OBJECT_ID('MDR_DEVOPS') IS NOT NULL
    PRINT '<<< CREATED TABLE MDR_DEVOPS >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE MDR_DEVOPS >>>'
go

/* 
 * TABLE: MDR_MEMBER 
 */

CREATE TABLE MDR_MEMBER(
    METADATA_KEY         nvarchar(35)     NOT NULL,
    PARENT_KEY           nvarchar(35)     NULL,
    PROTOTYPE_KEY        nvarchar(35)     NOT NULL,
    LEXICON              nvarchar(65)     NULL,
    SHORT_DESC           nvarchar(512)    NULL,
    JSON_STRING          nvarchar(max)    NULL,
    MDR_PARTITION        nvarchar(65)     NULL,
    TARGET_COLUMN        nvarchar(65)     NULL,
    SOURCE               nvarchar(65)     NULL,
    READ_ONLY            bit              NULL,
    IS_HIDDEN            bit              NULL,
    LAST_MODIFIED_UTS    bigint           NULL,
    CONSTRAINT PK11 PRIMARY KEY NONCLUSTERED (METADATA_KEY)
)
go



IF OBJECT_ID('MDR_MEMBER') IS NOT NULL
    PRINT '<<< CREATED TABLE MDR_MEMBER >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE MDR_MEMBER >>>'
go

/* 
 * TABLE: MDR_MEMBER_TAG 
 */

CREATE TABLE MDR_MEMBER_TAG(
    MEMBER_ARCHETYPE    varchar(71)         NOT NULL,
    MEMBER_ID           uniqueidentifier    NOT NULL,
    MEMBER_TYPE         nvarchar(35)        NOT NULL,
    MEMBER_CLASS        nvarchar(35)        NULL,
    SHORT_DESC          varchar(512)        NULL,
    CONSTRAINT PK52 PRIMARY KEY NONCLUSTERED (MEMBER_ARCHETYPE, MEMBER_ID)
)
go



IF OBJECT_ID('MDR_MEMBER_TAG') IS NOT NULL
    PRINT '<<< CREATED TABLE MDR_MEMBER_TAG >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE MDR_MEMBER_TAG >>>'
go

/* 
 * TABLE: MDR_PROTOTYPE 
 */

CREATE TABLE MDR_PROTOTYPE(
    PROTOTYPE_KEY        nvarchar(35)     NOT NULL,
    PARENT_KEY           nvarchar(35)     NULL,
    LEXICON              nvarchar(65)     NOT NULL,
    SHORT_DESC           nvarchar(512)    NULL,
    MDR_PARTITION        varchar(65)      NULL,
    TABLE_COLUMN         varchar(65)      NULL,
    ORDINAL              int              NULL,
    LAST_MODIFIED_UTS    bigint           NULL,
    CONSTRAINT PK9 PRIMARY KEY NONCLUSTERED (PROTOTYPE_KEY)
)
go



IF OBJECT_ID('MDR_PROTOTYPE') IS NOT NULL
    PRINT '<<< CREATED TABLE MDR_PROTOTYPE >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE MDR_PROTOTYPE >>>'
go

/* 
 * TABLE: MDR_TAXONOMY 
 */

CREATE TABLE MDR_TAXONOMY(
    METADATA_KEY         nvarchar(35)     NOT NULL,
    PARENT_KEY           nvarchar(35)     NULL,
    PROTOTYPE_KEY        nvarchar(35)     NOT NULL,
    LEXICON              nvarchar(65)     NULL,
    SHORT_DESC           nvarchar(512)    NULL,
    JSON_STRING          nvarchar(max)    NULL,
    MDR_PARTITION        nvarchar(65)     NULL,
    TARGET_COLUMN        nvarchar(65)     NULL,
    SOURCE               nvarchar(65)     NULL,
    READ_ONLY            bit              NULL,
    IS_HIDDEN            bit              NULL,
    LAST_MODIFIED_UTS    bigint           NULL,
    CONSTRAINT PK50 PRIMARY KEY NONCLUSTERED (METADATA_KEY)
)
go



IF OBJECT_ID('MDR_TAXONOMY') IS NOT NULL
    PRINT '<<< CREATED TABLE MDR_TAXONOMY >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE MDR_TAXONOMY >>>'
go

/* 
 * TABLE: MDR_TAXONOMY_DATA 
 */

CREATE TABLE MDR_TAXONOMY_DATA(
    TAX_KEY          varchar(15)     NOT NULL,
    SUPER_KEY        varchar(15)     NULL,
    INDEX_NAME       varchar(35)     NULL,
    TARGET_MDR       varchar(65)     NULL,
    MDR_KEY          varchar(65)     NOT NULL,
    MDR_SUPER_KEY    varchar(65)     NULL,
    MDR_LEXICON      varchar(65)     NULL,
    TAX_STANDARD     varchar(65)     NULL,
    SHORT_DESC       varchar(512)    NULL,
    AUTHOR           varchar(255)    NULL,
    CONSTRAINT PK53_1 PRIMARY KEY NONCLUSTERED (TAX_KEY)
)
go



IF OBJECT_ID('MDR_TAXONOMY_DATA') IS NOT NULL
    PRINT '<<< CREATED TABLE MDR_TAXONOMY_DATA >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE MDR_TAXONOMY_DATA >>>'
go

/* 
 * TABLE: MDR_TAXONOMY_OBJECT 
 */

CREATE TABLE MDR_TAXONOMY_OBJECT(
    TAX_KEY          varchar(15)     NOT NULL,
    SUPER_KEY        varchar(15)     NULL,
    INDEX_NAME       varchar(35)     NULL,
    TARGET_MDR       varchar(65)     NULL,
    MDR_KEY          varchar(65)     NOT NULL,
    MDR_SUPER_KEY    varchar(65)     NULL,
    MDR_LEXICON      varchar(65)     NULL,
    TAX_STANDARD     varchar(65)     NULL,
    SHORT_DESC       varchar(512)    NULL,
    AUTHOR           varchar(255)    NULL,
    CONSTRAINT PK53 PRIMARY KEY NONCLUSTERED (TAX_KEY)
)
go



IF OBJECT_ID('MDR_TAXONOMY_OBJECT') IS NOT NULL
    PRINT '<<< CREATED TABLE MDR_TAXONOMY_OBJECT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE MDR_TAXONOMY_OBJECT >>>'
go

/* 
 * TABLE: MSG_ENVELOP 
 */

CREATE TABLE MSG_ENVELOP(
    ENVELOPE_ID        uniqueidentifier    NOT NULL,
    ENVELOPE_TYPE      nvarchar(35)        NOT NULL,
    ENVELOPE_CLASS     nvarchar(35)        NULL,
    STATUS             nvarchar(35)        NULL,
    MESSAGE_CONTENT    nvarchar(max)       NULL,
    DATE_CREATED       datetime            NULL,
    CONSTRAINT PK48 PRIMARY KEY NONCLUSTERED (ENVELOPE_ID)
)
go



IF OBJECT_ID('MSG_ENVELOP') IS NOT NULL
    PRINT '<<< CREATED TABLE MSG_ENVELOP >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE MSG_ENVELOP >>>'
go

/* 
 * TABLE: MSG_MAIL_LOG 
 */

CREATE TABLE MSG_MAIL_LOG(
    MAIL_LOG_ID       uniqueidentifier    NOT NULL,
    ENVELOPE_ID       uniqueidentifier    NOT NULL,
    MAIL_LOG_TYPE     nvarchar(35)        NULL,
    MAIL_LOG_CLASS    nvarchar(35)        NULL,
    MAIL_STATUS       nvarchar(35)        NULL,
    FROM_EMAIL        nvarchar(65)        NULL,
    TO_EMAIL          nvarchar(65)        NULL,
    TO_MEMBER_ID      uniqueidentifier    NULL,
    MAIL_SENT_DATE    datetime            NULL,
    CONSTRAINT PK49 PRIMARY KEY NONCLUSTERED (MAIL_LOG_ID)
)
go



IF OBJECT_ID('MSG_MAIL_LOG') IS NOT NULL
    PRINT '<<< CREATED TABLE MSG_MAIL_LOG >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE MSG_MAIL_LOG >>>'
go

/* 
 * TABLE: OPS_CALANDAR 
 */

CREATE TABLE OPS_CALANDAR(
    CALENDAR_ID       uniqueidentifier    NOT NULL,
    CALENDAR_TYPE     nvarchar(35)        NOT NULL,
    CALENDAR_CLASS    nvarchar(35)        NULL,
    EVENT_NAME        nvarchar(35)        NULL,
    EVENT_DETAILS     nvarchar(max)       NULL,
    EVENT_CATEGORY    nvarchar(35)        NULL,
    UTS_ID            bigint              NOT NULL,
    UTS_START         bigint              NULL,
    UTS_END           bigint              NULL,
    IS_PUBLISHED      bit                 NULL,
    SURROGATE_KEY     uniqueidentifier    NULL,
    CONSTRAINT PK35 PRIMARY KEY NONCLUSTERED (CALENDAR_ID)
)
go



IF OBJECT_ID('OPS_CALANDAR') IS NOT NULL
    PRINT '<<< CREATED TABLE OPS_CALANDAR >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE OPS_CALANDAR >>>'
go

/* 
 * TABLE: OPS_DATE_DIMENSION 
 */

CREATE TABLE OPS_DATE_DIMENSION(
    UTS_ID                 bigint          NOT NULL,
    CALENDAR_DATE          date            NULL,
    CALENDAR_YEAR          int             NULL,
    QUARTER                int             NULL,
    QUARTER_DESCRIPTION    varchar(10)     NULL,
    CALENDAR_MONTH         int             NULL,
    MONTH_SHORT_NAME       varchar(10)     NULL,
    MONTH_LONG_NAME        varchar(30)     NULL,
    WEEK_IN_MONTH          int             NULL,
    WEEK_IN_YEAR           int             NULL,
    IS_WEEKEND             bit             NULL,
    IS_WORK_DAY            bit             NULL,
    DAY_OF_MONTH           int             NULL,
    DAY_OF_YEAR            int             NULL,
    DAY_OF_WEEK            int             NULL,
    DAY_LONG_NAME          varchar(10)     NULL,
    DAY_SHORT_NAME         varchar(5)      NULL,
    IS_HOLIDAY             bit             NULL,
    HOLIDAY_NAME           nvarchar(65)    NULL,
    CONSTRAINT PK34 PRIMARY KEY NONCLUSTERED (UTS_ID)
)
go



IF OBJECT_ID('OPS_DATE_DIMENSION') IS NOT NULL
    PRINT '<<< CREATED TABLE OPS_DATE_DIMENSION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE OPS_DATE_DIMENSION >>>'
go

/* 
 * TABLE: OPS_DOCUMENT 
 */

CREATE TABLE OPS_DOCUMENT(
    DOCUMENT_ID          uniqueidentifier    NOT NULL,
    SURROGATE_KEY        varchar(35)         NOT NULL,
    DOCUMENT_TYPE        nvarchar(35)        NOT NULL,
    DOCUMENT_CLASS       nvarchar(35)        NULL,
    DOCUMENT_STATUS      varchar(35)         NOT NULL,
    DOCUMENT_LEXICON     varchar(65)         NULL,
    DOCUMENT_WEB_PATH    varchar(255)        NULL,
    DOCUMENT_MARK_UP     text                NULL,
    DOCUMENT_AUTHOR      varchar(255)        NULL,
    PRIVACY_SETTING      nvarchar(35)        NULL,
    IS_READ_ONLY         bit                 NULL,
    IS_HIDDEN            bit                 NULL,
    LAST_MODIFIED_UTS    bigint              NULL,
    NOTATION_ID          uniqueidentifier    NULL,
    OWNER_ID             uniqueidentifier    NOT NULL,
    CONSTRAINT PK24_2 PRIMARY KEY NONCLUSTERED (DOCUMENT_ID)
)
go



IF OBJECT_ID('OPS_DOCUMENT') IS NOT NULL
    PRINT '<<< CREATED TABLE OPS_DOCUMENT >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE OPS_DOCUMENT >>>'
go

/* 
 * TABLE: OPS_OBJECT_NOTATION 
 */

CREATE TABLE OPS_OBJECT_NOTATION(
    NOTATION_ID          uniqueidentifier    NOT NULL,
    SURROGATE_ID         uniqueidentifier    NOT NULL,
    NOTATION_TYPE        nvarchar(35)        NOT NULL,
    NOTATION_CLASS       nvarchar(35)        NULL,
    NOTATION_LEXICON     varchar(35)         NOT NULL,
    CLASS_TYPE           varchar(512)        NULL,
    JSON_STRING          text                NOT NULL,
    PRIVACY_SETTING      varchar(35)         NOT NULL,
    IS_READ_ONLY         bit                 NULL,
    IS_HIDDEN            bit                 NULL,
    LAST_MODIFIED_UTS    bigint              NULL,
    OWNER_ID             uniqueidentifier    NOT NULL,
    CONSTRAINT PK25_3 PRIMARY KEY NONCLUSTERED (NOTATION_ID)
)
go



IF OBJECT_ID('OPS_OBJECT_NOTATION') IS NOT NULL
    PRINT '<<< CREATED TABLE OPS_OBJECT_NOTATION >>>'
ELSE
    PRINT '<<< FAILED CREATING TABLE OPS_OBJECT_NOTATION >>>'
go

/* 
 * TABLE: A2Z_ACCOUNT 
 */

ALTER TABLE A2Z_ACCOUNT ADD CONSTRAINT RefCOM_MEMBER46 
    FOREIGN KEY (MEMBER_ID)
    REFERENCES COM_MEMBER(MEMBER_ID)
go

ALTER TABLE A2Z_ACCOUNT ADD CONSTRAINT RefMDR_CORE_MODEL47 
    FOREIGN KEY (ACCOUNT_TYPE)
    REFERENCES MDR_CORE_MODEL(METADATA_KEY)
go


/* 
 * TABLE: A2Z_ACCOUNT_POLICY 
 */

ALTER TABLE A2Z_ACCOUNT_POLICY ADD CONSTRAINT RefA2Z_ACCOUNT72 
    FOREIGN KEY (ACCOUNT_ID)
    REFERENCES A2Z_ACCOUNT(ACCOUNT_ID)
go


/* 
 * TABLE: A2Z_ACCOUNT_PREFERENCE 
 */

ALTER TABLE A2Z_ACCOUNT_PREFERENCE ADD CONSTRAINT RefA2Z_ACCOUNT73 
    FOREIGN KEY (ACCOUNT_ID)
    REFERENCES A2Z_ACCOUNT(ACCOUNT_ID)
go


/* 
 * TABLE: A2Z_APPLICATION_STATE 
 */

ALTER TABLE A2Z_APPLICATION_STATE ADD CONSTRAINT RefA2Z_PORTAL76 
    FOREIGN KEY (PORTAL_ID)
    REFERENCES A2Z_PORTAL(PORTAL_ID)
go

ALTER TABLE A2Z_APPLICATION_STATE ADD CONSTRAINT RefMDR_CORE_MODEL58 
    FOREIGN KEY (APPLICATION_TYPE)
    REFERENCES MDR_CORE_MODEL(METADATA_KEY)
go


/* 
 * TABLE: A2Z_OBJECT_NOTATION 
 */

ALTER TABLE A2Z_OBJECT_NOTATION ADD CONSTRAINT RefA2Z_PORTAL74 
    FOREIGN KEY (PORTAL_ID)
    REFERENCES A2Z_PORTAL(PORTAL_ID)
go

ALTER TABLE A2Z_OBJECT_NOTATION ADD CONSTRAINT RefMDR_CORE_MODEL75 
    FOREIGN KEY (NOTATION_TYPE)
    REFERENCES MDR_CORE_MODEL(METADATA_KEY)
go


/* 
 * TABLE: A2Z_PORTAL 
 */

ALTER TABLE A2Z_PORTAL ADD CONSTRAINT RefMDR_CORE_MODEL48 
    FOREIGN KEY (PORTAL_TYPE)
    REFERENCES MDR_CORE_MODEL(METADATA_KEY)
go

ALTER TABLE A2Z_PORTAL ADD CONSTRAINT RefCOM_MEMBER54 
    FOREIGN KEY (OWNER_ID)
    REFERENCES COM_MEMBER(MEMBER_ID)
go


/* 
 * TABLE: A2Z_PORTAL_SUBSCRIPTION 
 */

ALTER TABLE A2Z_PORTAL_SUBSCRIPTION ADD CONSTRAINT RefA2Z_ACCOUNT51 
    FOREIGN KEY (ACCOUNT_ID)
    REFERENCES A2Z_ACCOUNT(ACCOUNT_ID)
go

ALTER TABLE A2Z_PORTAL_SUBSCRIPTION ADD CONSTRAINT RefA2Z_PORTAL52 
    FOREIGN KEY (PORTAL_ID)
    REFERENCES A2Z_PORTAL(PORTAL_ID)
go

ALTER TABLE A2Z_PORTAL_SUBSCRIPTION ADD CONSTRAINT RefMDR_CORE_MODEL53 
    FOREIGN KEY (SUBSCRIPTION_TYPE)
    REFERENCES MDR_CORE_MODEL(METADATA_KEY)
go


/* 
 * TABLE: A2Z_SESSION_STATE 
 */

ALTER TABLE A2Z_SESSION_STATE ADD CONSTRAINT RefA2Z_PORTAL55 
    FOREIGN KEY (PORTAL_ID)
    REFERENCES A2Z_PORTAL(PORTAL_ID)
go

ALTER TABLE A2Z_SESSION_STATE ADD CONSTRAINT RefA2Z_ACCOUNT56 
    FOREIGN KEY (ACCOUNT_ID)
    REFERENCES A2Z_ACCOUNT(ACCOUNT_ID)
go


/* 
 * TABLE: CMS_CONTAINER 
 */

ALTER TABLE CMS_CONTAINER ADD CONSTRAINT RefMDR_CONTENT78 
    FOREIGN KEY (CONTAINER_TYPE)
    REFERENCES MDR_CONTENT(METADATA_KEY)
go


/* 
 * TABLE: CMS_CONTENT 
 */

ALTER TABLE CMS_CONTENT ADD CONSTRAINT RefCMS_CONTAINER1 
    FOREIGN KEY (CONTAINER_ID)
    REFERENCES CMS_CONTAINER(CONTAINER_ID)
go

ALTER TABLE CMS_CONTENT ADD CONSTRAINT RefMDR_CONTENT79 
    FOREIGN KEY (CONTENT_TYPE)
    REFERENCES MDR_CONTENT(METADATA_KEY)
go


/* 
 * TABLE: CMS_CONTENT_SOCIAL 
 */

ALTER TABLE CMS_CONTENT_SOCIAL ADD CONSTRAINT RefCMS_CONTENT2 
    FOREIGN KEY (CONTENT_ID)
    REFERENCES CMS_CONTENT(CONTENT_ID)
go

ALTER TABLE CMS_CONTENT_SOCIAL ADD CONSTRAINT RefMDR_CONTENT81 
    FOREIGN KEY (SOCIAL_TYPE)
    REFERENCES MDR_CONTENT(METADATA_KEY)
go


/* 
 * TABLE: CMS_FILE_SYSTEM 
 */

ALTER TABLE CMS_FILE_SYSTEM ADD CONSTRAINT RefMDR_CONTENT83 
    FOREIGN KEY (FILE_TYPE)
    REFERENCES MDR_CONTENT(METADATA_KEY)
go

ALTER TABLE CMS_FILE_SYSTEM ADD CONSTRAINT RefCMS_CONTENT84 
    FOREIGN KEY (CONTENT_ID)
    REFERENCES CMS_CONTENT(CONTENT_ID)
go


/* 
 * TABLE: CMS_OBJECT_NOTATION 
 */

ALTER TABLE CMS_OBJECT_NOTATION ADD CONSTRAINT RefCMS_CONTENT77 
    FOREIGN KEY (CONTENT_ID)
    REFERENCES CMS_CONTENT(CONTENT_ID)
go

ALTER TABLE CMS_OBJECT_NOTATION ADD CONSTRAINT RefMDR_CONTENT80 
    FOREIGN KEY (NOTATION_TYPE)
    REFERENCES MDR_CONTENT(METADATA_KEY)
go


/* 
 * TABLE: CMS_PERFORMANCE_KEYS 
 */

ALTER TABLE CMS_PERFORMANCE_KEYS ADD CONSTRAINT RefCMS_CONTENT3 
    FOREIGN KEY (CONTENT_ID)
    REFERENCES CMS_CONTENT(CONTENT_ID)
go

ALTER TABLE CMS_PERFORMANCE_KEYS ADD CONSTRAINT RefMDR_CONTENT82 
    FOREIGN KEY (INDICATOR_TYPE)
    REFERENCES MDR_CONTENT(METADATA_KEY)
go


/* 
 * TABLE: COM_CONTACT 
 */

ALTER TABLE COM_CONTACT ADD CONSTRAINT RefCOM_MEMBER14 
    FOREIGN KEY (MEMBER_ID)
    REFERENCES COM_MEMBER(MEMBER_ID)
go

ALTER TABLE COM_CONTACT ADD CONSTRAINT RefMDR_MEMBER15 
    FOREIGN KEY (CONTACT_TYPE)
    REFERENCES MDR_MEMBER(METADATA_KEY)
go


/* 
 * TABLE: COM_LOCATION 
 */

ALTER TABLE COM_LOCATION ADD CONSTRAINT RefCOM_MEMBER16 
    FOREIGN KEY (MEMBER_ID)
    REFERENCES COM_MEMBER(MEMBER_ID)
go

ALTER TABLE COM_LOCATION ADD CONSTRAINT RefMDR_MEMBER17 
    FOREIGN KEY (LOCATION_TYPE)
    REFERENCES MDR_MEMBER(METADATA_KEY)
go


/* 
 * TABLE: COM_MEMBER 
 */

ALTER TABLE COM_MEMBER ADD CONSTRAINT RefMDR_MEMBER13 
    FOREIGN KEY (MEMBER_TYPE)
    REFERENCES MDR_MEMBER(METADATA_KEY)
go

ALTER TABLE COM_MEMBER ADD CONSTRAINT RefCOM_MEMBER66 
    FOREIGN KEY (OWNER_ID)
    REFERENCES COM_MEMBER(MEMBER_ID)
go


/* 
 * TABLE: COM_MEMBER_DOCUMENT 
 */

ALTER TABLE COM_MEMBER_DOCUMENT ADD CONSTRAINT RefCOM_MEMBER26 
    FOREIGN KEY (MEMBER_ID)
    REFERENCES COM_MEMBER(MEMBER_ID)
go

ALTER TABLE COM_MEMBER_DOCUMENT ADD CONSTRAINT RefMDR_MEMBER27 
    FOREIGN KEY (DOCUMENT_TYPE)
    REFERENCES MDR_MEMBER(METADATA_KEY)
go

ALTER TABLE COM_MEMBER_DOCUMENT ADD CONSTRAINT RefCMS_CONTAINER63 
    FOREIGN KEY (CONTAINER_ID)
    REFERENCES CMS_CONTAINER(CONTAINER_ID)
go

ALTER TABLE COM_MEMBER_DOCUMENT ADD CONSTRAINT RefCOM_OBJECT_NOTATION64 
    FOREIGN KEY (NOTATION_ID)
    REFERENCES COM_OBJECT_NOTATION(NOTATION_ID)
go


/* 
 * TABLE: COM_OBJECT_NOTATION 
 */

ALTER TABLE COM_OBJECT_NOTATION ADD CONSTRAINT RefCOM_MEMBER28 
    FOREIGN KEY (MEMBER_ID)
    REFERENCES COM_MEMBER(MEMBER_ID)
go

ALTER TABLE COM_OBJECT_NOTATION ADD CONSTRAINT RefMDR_MEMBER29 
    FOREIGN KEY (NOTATION_TYPE)
    REFERENCES MDR_MEMBER(METADATA_KEY)
go


/* 
 * TABLE: COM_RELATIONSHIP 
 */

ALTER TABLE COM_RELATIONSHIP ADD CONSTRAINT RefCOM_MEMBER18 
    FOREIGN KEY (RELATED_FROM_MEMBER)
    REFERENCES COM_MEMBER(MEMBER_ID)
go

ALTER TABLE COM_RELATIONSHIP ADD CONSTRAINT RefMDR_MEMBER19 
    FOREIGN KEY (RELATIONSHIP_TYPE)
    REFERENCES MDR_MEMBER(METADATA_KEY)
go

ALTER TABLE COM_RELATIONSHIP ADD CONSTRAINT RefCOM_MEMBER20 
    FOREIGN KEY (RELATED_TO_MEMBER)
    REFERENCES COM_MEMBER(MEMBER_ID)
go


/* 
 * TABLE: COM_ROLE 
 */

ALTER TABLE COM_ROLE ADD CONSTRAINT RefCOM_MEMBER21 
    FOREIGN KEY (MEMBER_ID)
    REFERENCES COM_MEMBER(MEMBER_ID)
go

ALTER TABLE COM_ROLE ADD CONSTRAINT RefMDR_MEMBER22 
    FOREIGN KEY (ROLE_TYPE)
    REFERENCES MDR_MEMBER(METADATA_KEY)
go


/* 
 * TABLE: COM_STRUCTURE 
 */

ALTER TABLE COM_STRUCTURE ADD CONSTRAINT RefCOM_LOCATION23 
    FOREIGN KEY (LOCATION_ID)
    REFERENCES COM_LOCATION(LOCATION_ID)
go

ALTER TABLE COM_STRUCTURE ADD CONSTRAINT RefCOM_MEMBER24 
    FOREIGN KEY (MEMBER_ID)
    REFERENCES COM_MEMBER(MEMBER_ID)
go

ALTER TABLE COM_STRUCTURE ADD CONSTRAINT RefMDR_MEMBER25 
    FOREIGN KEY (STRUCTURE_TYPE)
    REFERENCES MDR_MEMBER(METADATA_KEY)
go


/* 
 * TABLE: DEV_CALANDAR 
 */

ALTER TABLE DEV_CALANDAR ADD CONSTRAINT RefOPS_DATE_DIMENSION85 
    FOREIGN KEY (UTS_ID)
    REFERENCES OPS_DATE_DIMENSION(UTS_ID)
go


/* 
 * TABLE: DEV_PROJECT 
 */

ALTER TABLE DEV_PROJECT ADD CONSTRAINT RefMDR_DEVOPS36 
    FOREIGN KEY (PROJECT_TYPE)
    REFERENCES MDR_DEVOPS(METADATA_KEY)
go


/* 
 * TABLE: DEV_PROJECT_DOCUMENT 
 */

ALTER TABLE DEV_PROJECT_DOCUMENT ADD CONSTRAINT RefCMS_CONTAINER97 
    FOREIGN KEY (CONTAINER_ID)
    REFERENCES CMS_CONTAINER(CONTAINER_ID)
go

ALTER TABLE DEV_PROJECT_DOCUMENT ADD CONSTRAINT RefDEV_OBJECT_NOTATION98 
    FOREIGN KEY (NOTATION_ID)
    REFERENCES DEV_OBJECT_NOTATION(NOTATION_ID)
go


/* 
 * TABLE: DEV_PROJECT_TODO 
 */

ALTER TABLE DEV_PROJECT_TODO ADD CONSTRAINT RefDEV_PROJECT37 
    FOREIGN KEY (PROJECT_ID)
    REFERENCES DEV_PROJECT(PROJECT_ID)
go

ALTER TABLE DEV_PROJECT_TODO ADD CONSTRAINT RefMDR_DEVOPS38 
    FOREIGN KEY (TASK_TYPE)
    REFERENCES MDR_DEVOPS(METADATA_KEY)
go


/* 
 * TABLE: EAV_ACTIVITY_FEED 
 */

ALTER TABLE EAV_ACTIVITY_FEED ADD CONSTRAINT RefMDR_CORE_MODEL62 
    FOREIGN KEY (FEED_TYPE)
    REFERENCES MDR_CORE_MODEL(METADATA_KEY)
go


/* 
 * TABLE: EAV_ACTIVITY_LOG 
 */

ALTER TABLE EAV_ACTIVITY_LOG ADD CONSTRAINT RefMDR_CORE_MODEL42 
    FOREIGN KEY (LOG_TYPE)
    REFERENCES MDR_CORE_MODEL(METADATA_KEY)
go


/* 
 * TABLE: EAV_MEMBER 
 */

ALTER TABLE EAV_MEMBER ADD CONSTRAINT RefMDR_MEMBER43 
    FOREIGN KEY (EAV_MEMBER_TYPE)
    REFERENCES MDR_MEMBER(METADATA_KEY)
go

ALTER TABLE EAV_MEMBER ADD CONSTRAINT RefCOM_MEMBER44 
    FOREIGN KEY (MEMBER_ID)
    REFERENCES COM_MEMBER(MEMBER_ID)
go


/* 
 * TABLE: EAV_MEMBER_ATTRIBUTE 
 */

ALTER TABLE EAV_MEMBER_ATTRIBUTE ADD CONSTRAINT RefEAV_MEMBER45 
    FOREIGN KEY (ATTRIBUTE_ID)
    REFERENCES EAV_MEMBER(ATTRIBUTE_ID)
go


/* 
 * TABLE: EAV_OBJECT_NOTATION 
 */

ALTER TABLE EAV_OBJECT_NOTATION ADD CONSTRAINT RefMDR_CORE_MODEL41 
    FOREIGN KEY (NOTATION_TYPE)
    REFERENCES MDR_CORE_MODEL(METADATA_KEY)
go


/* 
 * TABLE: MDR_CONTENT 
 */

ALTER TABLE MDR_CONTENT ADD CONSTRAINT RefMDR_CONTENT11 
    FOREIGN KEY (PARENT_KEY)
    REFERENCES MDR_CONTENT(METADATA_KEY)
go

ALTER TABLE MDR_CONTENT ADD CONSTRAINT RefMDR_PROTOTYPE12 
    FOREIGN KEY (PROTOTYPE_KEY)
    REFERENCES MDR_PROTOTYPE(PROTOTYPE_KEY)
go


/* 
 * TABLE: MDR_CORE_MODEL 
 */

ALTER TABLE MDR_CORE_MODEL ADD CONSTRAINT RefMDR_CORE_MODEL5 
    FOREIGN KEY (PARENT_KEY)
    REFERENCES MDR_CORE_MODEL(METADATA_KEY)
go

ALTER TABLE MDR_CORE_MODEL ADD CONSTRAINT RefMDR_PROTOTYPE6 
    FOREIGN KEY (PROTOTYPE_KEY)
    REFERENCES MDR_PROTOTYPE(PROTOTYPE_KEY)
go


/* 
 * TABLE: MDR_DEVOPS 
 */

ALTER TABLE MDR_DEVOPS ADD CONSTRAINT RefMDR_DEVOPS9 
    FOREIGN KEY (PARENT_KEY)
    REFERENCES MDR_DEVOPS(METADATA_KEY)
go

ALTER TABLE MDR_DEVOPS ADD CONSTRAINT RefMDR_PROTOTYPE10 
    FOREIGN KEY (PROTOTYPE_KEY)
    REFERENCES MDR_PROTOTYPE(PROTOTYPE_KEY)
go


/* 
 * TABLE: MDR_MEMBER 
 */

ALTER TABLE MDR_MEMBER ADD CONSTRAINT RefMDR_MEMBER7 
    FOREIGN KEY (PARENT_KEY)
    REFERENCES MDR_MEMBER(METADATA_KEY)
go

ALTER TABLE MDR_MEMBER ADD CONSTRAINT RefMDR_PROTOTYPE8 
    FOREIGN KEY (PROTOTYPE_KEY)
    REFERENCES MDR_PROTOTYPE(PROTOTYPE_KEY)
go


/* 
 * TABLE: MDR_MEMBER_TAG 
 */

ALTER TABLE MDR_MEMBER_TAG ADD CONSTRAINT RefMDR_MEMBER68 
    FOREIGN KEY (MEMBER_TYPE)
    REFERENCES MDR_MEMBER(METADATA_KEY)
go

ALTER TABLE MDR_MEMBER_TAG ADD CONSTRAINT RefMDR_MEMBER69 
    FOREIGN KEY (MEMBER_CLASS)
    REFERENCES MDR_MEMBER(METADATA_KEY)
go

ALTER TABLE MDR_MEMBER_TAG ADD CONSTRAINT RefCOM_MEMBER67 
    FOREIGN KEY (MEMBER_ID)
    REFERENCES COM_MEMBER(MEMBER_ID)
go


/* 
 * TABLE: MDR_PROTOTYPE 
 */

ALTER TABLE MDR_PROTOTYPE ADD CONSTRAINT RefMDR_PROTOTYPE4 
    FOREIGN KEY (PARENT_KEY)
    REFERENCES MDR_PROTOTYPE(PROTOTYPE_KEY)
go


/* 
 * TABLE: MDR_TAXONOMY 
 */

ALTER TABLE MDR_TAXONOMY ADD CONSTRAINT RefMDR_TAXONOMY60 
    FOREIGN KEY (PARENT_KEY)
    REFERENCES MDR_TAXONOMY(METADATA_KEY)
go

ALTER TABLE MDR_TAXONOMY ADD CONSTRAINT RefMDR_PROTOTYPE61 
    FOREIGN KEY (PROTOTYPE_KEY)
    REFERENCES MDR_PROTOTYPE(PROTOTYPE_KEY)
go


/* 
 * TABLE: MDR_TAXONOMY_DATA 
 */

ALTER TABLE MDR_TAXONOMY_DATA ADD CONSTRAINT RefMDR_TAXONOMY_DATA71 
    FOREIGN KEY (SUPER_KEY)
    REFERENCES MDR_TAXONOMY_DATA(TAX_KEY)
go


/* 
 * TABLE: MDR_TAXONOMY_OBJECT 
 */

ALTER TABLE MDR_TAXONOMY_OBJECT ADD CONSTRAINT RefMDR_TAXONOMY_OBJECT70 
    FOREIGN KEY (SUPER_KEY)
    REFERENCES MDR_TAXONOMY_OBJECT(TAX_KEY)
go


/* 
 * TABLE: MSG_ENVELOP 
 */

ALTER TABLE MSG_ENVELOP ADD CONSTRAINT RefMDR_CORE_MODEL32 
    FOREIGN KEY (ENVELOPE_TYPE)
    REFERENCES MDR_CORE_MODEL(METADATA_KEY)
go


/* 
 * TABLE: MSG_MAIL_LOG 
 */

ALTER TABLE MSG_MAIL_LOG ADD CONSTRAINT RefMSG_ENVELOP33 
    FOREIGN KEY (ENVELOPE_ID)
    REFERENCES MSG_ENVELOP(ENVELOPE_ID)
go

ALTER TABLE MSG_MAIL_LOG ADD CONSTRAINT RefMDR_CORE_MODEL34 
    FOREIGN KEY (MAIL_LOG_TYPE)
    REFERENCES MDR_CORE_MODEL(METADATA_KEY)
go


/* 
 * TABLE: OPS_CALANDAR 
 */

ALTER TABLE OPS_CALANDAR ADD CONSTRAINT RefMDR_DEVOPS35 
    FOREIGN KEY (CALENDAR_TYPE)
    REFERENCES MDR_DEVOPS(METADATA_KEY)
go

ALTER TABLE OPS_CALANDAR ADD CONSTRAINT RefOPS_DATE_DIMENSION126 
    FOREIGN KEY (UTS_ID)
    REFERENCES OPS_DATE_DIMENSION(UTS_ID)
go


/* 
 * TABLE: OPS_DOCUMENT 
 */

ALTER TABLE OPS_DOCUMENT ADD CONSTRAINT RefOPS_OBJECT_NOTATION124 
    FOREIGN KEY (NOTATION_ID)
    REFERENCES OPS_OBJECT_NOTATION(NOTATION_ID)
go

ALTER TABLE OPS_DOCUMENT ADD CONSTRAINT RefCOM_MEMBER127 
    FOREIGN KEY (OWNER_ID)
    REFERENCES COM_MEMBER(MEMBER_ID)
go


/* 
 * TABLE: OPS_OBJECT_NOTATION 
 */

ALTER TABLE OPS_OBJECT_NOTATION ADD CONSTRAINT RefCOM_MEMBER125 
    FOREIGN KEY (OWNER_ID)
    REFERENCES COM_MEMBER(MEMBER_ID)
go


