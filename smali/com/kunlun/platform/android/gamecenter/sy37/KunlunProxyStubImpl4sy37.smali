.class public Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private appKey:Ljava/lang/String;

.field private gid:Ljava/lang/String;

.field private gr:Landroid/os/Bundle;

.field private jI:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private pid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;Landroid/app/Activity;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 18

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "Kunlun.sy37CurrencyName"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "Kunlun.sy37CurrencyName"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->jI:Ljava/util/HashMap;

    const-string v6, "serverName"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->jI:Ljava/util/HashMap;

    const-string v6, "roleId"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->jI:Ljava/util/HashMap;

    const-string v6, "roleName"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->jI:Ljava/util/HashMap;

    const-string v6, "roleLevel"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move/from16 v0, p2

    int-to-float v15, v0

    new-instance v17, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$7;-><init>(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    move-object/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v11, p4

    move/from16 v16, p3

    invoke-virtual/range {v4 .. v17}, Lcom/sqwan/msdk/SQwanCore;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFILcom/sqwan/msdk/api/SQResultListener;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->gr:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->pid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "gid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->gid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->gr:Landroid/os/Bundle;

    const-string v3, "token"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sy37"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$3;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$3;-><init>(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->pid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->gid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sy37"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$4;

    invoke-direct {v1, p0, p2}, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$4;-><init>(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/sqwan/msdk/SQwanCore;->login(Landroid/content/Context;Lcom/sqwan/msdk/api/SQResultListener;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sy37"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$8;

    invoke-direct {v1, p2}, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$8;-><init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/sqwan/msdk/SQwanCore;->logout(Landroid/content/Context;Lcom/sqwan/msdk/api/SQResultListener;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4sy37"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->mActivity:Landroid/app/Activity;

    const-string v0, "appkey.properties"

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APPKEY"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->appKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->appKey:Ljava/lang/String;

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$1;

    invoke-direct {v2, p2, p1}, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$1;-><init>(Lcom/kunlun/platform/android/Kunlun$initCallback;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/sqwan/msdk/SQwanCore;->init(Landroid/content/Context;Ljava/lang/String;Lcom/sqwan/msdk/api/SQResultListener;)V

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$2;

    invoke-direct {v1, p0, p1}, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$2;-><init>(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/sqwan/msdk/SQwanCore;->setSwitchAccountListener(Lcom/sqwan/msdk/api/SQResultListener;)V

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sqwan/msdk/SQwanCore;->getAppConfig()Lcom/sqwan/msdk/api/SQAppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sqwan/msdk/api/SQAppConfig;->getGameid()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->gid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sqwan/msdk/api/SQAppConfig;->getPartner()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->pid:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sqwan/msdk/api/SQAppConfig;->getRefer()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4sy37"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult: requestCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",resultCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/sqwan/msdk/SQwanCore;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sy37"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sy37"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sqwan/msdk/SQwanCore;->onDestroy()V

    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sy37"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sqwan/msdk/SQwanCore;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sy37"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sqwan/msdk/SQwanCore;->onPause()V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sy37"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sy37"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sqwan/msdk/SQwanCore;->onResume()V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sy37"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sqwan/msdk/SQwanCore;->onStop()V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4sy37"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchase:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p5, p6}, Lcom/kunlun/platform/android/Kunlun;->prepareSingleChannelPurchase(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    const-string v0, ""

    const-string v1, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "sy37"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$6;-><init>(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;I)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sy37"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "reLogin"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37$5;-><init>(Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/sqwan/msdk/SQwanCore;->changeAccount(Landroid/content/Context;Lcom/sqwan/msdk/api/SQResultListener;)V

    return-void
.end method

.method public submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->jI:Ljava/util/HashMap;

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->jI:Ljava/util/HashMap;

    const-string v0, "serverId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->jI:Ljava/util/HashMap;

    const-string v1, "serverId"

    const-string v2, "serverId"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v0, "serverName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->jI:Ljava/util/HashMap;

    const-string v1, "serverName"

    const-string v2, "serverName"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v0, "roleId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->jI:Ljava/util/HashMap;

    const-string v1, "roleId"

    const-string v2, "roleId"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string v0, "roleName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->jI:Ljava/util/HashMap;

    const-string v1, "roleName"

    const-string v2, "roleName"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v0, "roleLevel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->jI:Ljava/util/HashMap;

    const-string v1, "roleLevel"

    const-string v2, "roleLevel"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const-string v0, "balance"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->jI:Ljava/util/HashMap;

    const-string v1, "balance"

    const-string v2, "balance"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v0, "partyName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->jI:Ljava/util/HashMap;

    const-string v1, "partyName"

    const-string v2, "partyName"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string v0, "vipLevel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->jI:Ljava/util/HashMap;

    const-string v1, "vipLevel"

    const-string v2, "vipLevel"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sy37/KunlunProxyStubImpl4sy37;->jI:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Lcom/sqwan/msdk/SQwanCore;->submitRoleInfo(Ljava/util/HashMap;)V

    :cond_8
    const/4 v0, 0x0

    const-string v1, "roleIsNewCreate"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v0, "roleIsNewCreate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_9
    if-eqz v0, :cond_a

    invoke-static {}, Lcom/sqwan/msdk/SQwanCore;->getInstance()Lcom/sqwan/msdk/SQwanCore;

    move-result-object v0

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sqwan/msdk/SQwanCore;->creatRole(Landroid/content/Context;Ljava/lang/String;)V

    :cond_a
    return-void
.end method
