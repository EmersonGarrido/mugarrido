.class public Lcom/kunlun/platform/android/gamecenter/sogou/GameApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private jA:Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

.field private jB:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/kunlun/platform/android/gamecenter/sogou/GameApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kunlun/platform/android/gamecenter/sogou/GameApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    invoke-static {}, Lcom/sogou/gamecenter/sdk/SogouGamePlatform;->getInstance()Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/GameApplication;->jA:Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/GameApplication;->jB:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/sogou/GameApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/kunlun/platform/android/gamecenter/sogou/GameApplication;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v1, "Kunlun.debugMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/GameApplication;->jB:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/GameApplication;->jB:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/kunlun/platform/android/gamecenter/sogou/GameApplication;->TAG:Ljava/lang/String;

    const-string v2, "GameApplication"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Lcom/sogou/gamecenter/sdk/bean/SogouGameConfig;

    invoke-direct {v1}, Lcom/sogou/gamecenter/sdk/bean/SogouGameConfig;-><init>()V

    const-string v2, "Kunlun.sogou.developMode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/sogou/gamecenter/sdk/bean/SogouGameConfig;->devMode:Z

    const-string v2, "Kunlun.sogou.gid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/sogou/gamecenter/sdk/bean/SogouGameConfig;->gid:I

    const-string v2, "Kunlun.sogou.appKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sogou/gamecenter/sdk/bean/SogouGameConfig;->appKey:Ljava/lang/String;

    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunUtil;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sogou/gamecenter/sdk/bean/SogouGameConfig;->gameName:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/GameApplication;->jA:Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    invoke-virtual {v0, p0, v1}, Lcom/sogou/gamecenter/sdk/SogouGamePlatform;->prepare(Landroid/content/Context;Lcom/sogou/gamecenter/sdk/bean/SogouGameConfig;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onTerminate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/GameApplication;->jB:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/sogou/GameApplication;->TAG:Ljava/lang/String;

    const-string v1, "onTerminate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/GameApplication;->jA:Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    invoke-virtual {v0}, Lcom/sogou/gamecenter/sdk/SogouGamePlatform;->onTerminate()V

    return-void
.end method
