.class public Lcom/bluepay/core/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field public static final A:Ljava/lang/String; = "present_again"

.field public static final B:Ljava/lang/String; = "push_apk"

.field public static final C:Ljava/lang/String; = "apps_record"

.field public static final D:Ljava/lang/String; = "app_name"

.field public static final E:Ljava/lang/String; = "version_name"

.field public static final F:Ljava/lang/String; = "version_code"

.field public static final G:Ljava/lang/String; = "opens"

.field public static final a:Ljava/lang/String; = "AdminStatus"

.field public static final b:Ljava/lang/String; = "AdType"

.field public static final c:Ljava/lang/String; = "ApkLink"

.field public static final d:Ljava/lang/String; = "ApkSize"

.field public static final e:Ljava/lang/String; = "apk_path"

.field public static final f:Ljava/lang/String; = "Content"

.field public static final g:Ljava/lang/String; = "file_path"

.field public static final h:Ljava/lang/String; = "HistoryId"

.field public static final i:Ljava/lang/String; = "history_id"

.field public static final j:Ljava/lang/String; = "ImageLink"

.field public static final k:Ljava/lang/String; = "insert_time"

.field public static final l:Ljava/lang/String; = "InstallType"

.field public static final m:Ljava/lang/String; = "_id"

.field public static final n:Ljava/lang/String; = "packagelabel"

.field public static final o:Ljava/lang/String; = "packagename"

.field public static final p:Ljava/lang/String; = "packagesignature"

.field public static final q:Ljava/lang/String; = "packageversion"

.field public static final r:Ljava/lang/String; = "PolicyId"

.field public static final s:Ljava/lang/String; = "p_policy"

.field public static final t:Ljava/lang/String; = "ShowType"

.field public static final u:Ljava/lang/String; = "statics_type"

.field public static final v:Ljava/lang/String; = "Title"

.field public static final w:Ljava/lang/String; = "apk_statics"

.field public static final x:Ljava/lang/String; = "apk_wall"

.field public static final y:Ljava/lang/String; = "download_ad"

.field public static final z:Ljava/lang/String; = "interstitial_ad"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "bluepay.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string v0, "create table if not exists download_ad (_id integer primary key autoincrement, packagename text, apk_path text, ApkLink text, HistoryId integer, ApkSize integer, PolicyId long, AdminStatus integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists interstitial_ad (_id integer primary key autoincrement, AdType integer, Title text, Content text, ApkLink text, ImageLink text, HistoryId integer, ApkSize integer, ShowType integer, InstallType integer, PolicyId long, AdminStatus integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists push_apk (_id integer primary key autoincrement, packagename text, packageversion integer, packagelabel text, history_id Long, p_policy Long);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists apk_wall (_id integer primary key autoincrement, file_path text);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists apk_statics (_id integer primary key autoincrement, statics_type text, packagename text, history_id integer, p_policy Long);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists present_again (_id integer primary key autoincrement, insert_time long, packagename text, apk_path text, ApkLink text, HistoryId integer, ApkSize integer, PolicyId long, AdminStatus integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists apps_record (_id integer primary key autoincrement, packagename text, app_name text, version_name text, version_code integer, opens integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table if not exists transRecord (_id integer primary key autoincrement, transactionId varchar(20), productId varchar(8), promotinId varchar(4), imsi varchar(15), imei varchar(15), timestamp varchar(14), sdkVersion varchar(9), romVersion integer, payType integer, uploadflag varchar(1));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string v0, "drop table if exists  download_ad"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "drop table if exists  interstitial_ad"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "drop table if exists  push_apk"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "drop table if exists  apk_wall"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "drop table if exists  apk_statics"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "drop table if exists  present_again"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "drop table if exists  apps_record"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "drop table if exists  transRecord"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bluepay/core/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bluepay/core/a/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-direct {p0, p1}, Lcom/bluepay/core/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
