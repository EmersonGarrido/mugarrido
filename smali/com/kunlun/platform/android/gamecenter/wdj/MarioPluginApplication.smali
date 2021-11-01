.class public Lcom/kunlun/platform/android/gamecenter/wdj/MarioPluginApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static kv:Lcom/wandoujia/mariosdk/plugin/api/api/WandouGamesApi;


# instance fields
.field private SECURITY_KEY:Ljava/lang/String;

.field private ky:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getWandouGamesApi()Lcom/wandoujia/mariosdk/plugin/api/api/WandouGamesApi;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/wdj/MarioPluginApplication;->kv:Lcom/wandoujia/mariosdk/plugin/api/api/WandouGamesApi;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3

    const-string v0, "Kunlun.wdj.appkey_id"

    invoke-static {p1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->getMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/MarioPluginApplication;->ky:J

    const-string v0, "Kunlun.wdj.secretkey"

    invoke-static {p1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->getMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/MarioPluginApplication;->SECURITY_KEY:Ljava/lang/String;

    iget-wide v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/MarioPluginApplication;->ky:J

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/wdj/MarioPluginApplication;->SECURITY_KEY:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/wandoujia/mariosdk/plugin/api/api/WandouGamesApi;->initPlugin(Landroid/content/Context;JLjava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 4

    new-instance v0, Lcom/wandoujia/mariosdk/plugin/api/api/WandouGamesApi$Builder;

    iget-wide v2, p0, Lcom/kunlun/platform/android/gamecenter/wdj/MarioPluginApplication;->ky:J

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/wdj/MarioPluginApplication;->SECURITY_KEY:Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3, v1}, Lcom/wandoujia/mariosdk/plugin/api/api/WandouGamesApi$Builder;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/wandoujia/mariosdk/plugin/api/api/WandouGamesApi$Builder;->create()Lcom/wandoujia/mariosdk/plugin/api/api/WandouGamesApi;

    move-result-object v0

    sput-object v0, Lcom/kunlun/platform/android/gamecenter/wdj/MarioPluginApplication;->kv:Lcom/wandoujia/mariosdk/plugin/api/api/WandouGamesApi;

    const-string v0, "Kunlun.wdj.logEnabled"

    invoke-static {p0, v0}, Lcom/kunlun/platform/android/KunlunUtil;->getMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/kunlun/platform/android/gamecenter/wdj/MarioPluginApplication;->kv:Lcom/wandoujia/mariosdk/plugin/api/api/WandouGamesApi;

    invoke-virtual {v1, v0}, Lcom/wandoujia/mariosdk/plugin/api/api/WandouGamesApi;->setLogEnabled(Z)V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method
