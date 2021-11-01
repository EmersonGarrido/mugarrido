.class public Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private gp:Lcn/ewan/supersdk/open/SuperLogin;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;IILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 3

    new-instance v0, Lcn/ewan/supersdk/open/PayInfo;

    invoke-direct {v0}, Lcn/ewan/supersdk/open/PayInfo;-><init>()V

    int-to-float v1, p5

    invoke-virtual {v0, v1}, Lcn/ewan/supersdk/open/PayInfo;->setPrice(F)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/ewan/supersdk/open/PayInfo;->setServerId(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcn/ewan/supersdk/open/PayInfo;->setProductName(Ljava/lang/String;)V

    mul-int v1, p5, p2

    invoke-virtual {v0, v1}, Lcn/ewan/supersdk/open/PayInfo;->setProductNumber(I)V

    invoke-virtual {v0, p4}, Lcn/ewan/supersdk/open/PayInfo;->setCutsomInfo(Ljava/lang/String;)V

    invoke-static {}, Lcn/ewan/supersdk/open/SuperPlatform;->getInstance()Lcn/ewan/supersdk/open/SuperPlatform;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$5;

    invoke-direct {v2, p0, p7, p4}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$5;-><init>(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0, v2}, Lcn/ewan/supersdk/open/SuperPlatform;->pay(Landroid/app/Activity;Lcn/ewan/supersdk/open/PayInfo;Lcn/ewan/supersdk/open/SuperPayListener;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;Lcn/ewan/supersdk/open/SuperLogin;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->gp:Lcn/ewan/supersdk/open/SuperLogin;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;)V
    .locals 0

    invoke-direct {p0}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->bM()V

    return-void
.end method

.method private bM()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.ewan.appId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.ewan.debugModel"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.ewan.debugModel"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "debugModel\":\"true"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->gp:Lcn/ewan/supersdk/open/SuperLogin;

    invoke-virtual {v2}, Lcn/ewan/supersdk/open/SuperLogin;->getOpenid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->gp:Lcn/ewan/supersdk/open/SuperLogin;

    invoke-virtual {v2}, Lcn/ewan/supersdk/open/SuperLogin;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ewan"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$3;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$3;-><init>(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4ewan"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->gp:Lcn/ewan/supersdk/open/SuperLogin;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->bM()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcn/ewan/supersdk/open/SuperPlatform;->getInstance()Lcn/ewan/supersdk/open/SuperPlatform;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$2;

    invoke-direct {v1, p0, p2}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$2;-><init>(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0, p1, v1}, Lcn/ewan/supersdk/open/SuperPlatform;->login(Landroid/app/Activity;Lcn/ewan/supersdk/open/SuperLoginListener;)V

    goto :goto_0
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4ewan"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/ewan/supersdk/open/SuperPlatform;->getInstance()Lcn/ewan/supersdk/open/SuperPlatform;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$6;

    invoke-direct {v1, p0, p2, p1}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$6;-><init>(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;Lcom/kunlun/platform/android/Kunlun$ExitCallback;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1}, Lcn/ewan/supersdk/open/SuperPlatform;->logout(Landroid/app/Activity;Lcn/ewan/supersdk/open/SuperLogoutListener;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 5

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->mActivity:Landroid/app/Activity;

    const-string v0, "KunlunProxyStubImpl4ewan"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/ewan/supersdk/open/SuperPlatform;->getInstance()Lcn/ewan/supersdk/open/SuperPlatform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/ewan/supersdk/open/SuperPlatform;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.ewan.appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.ewan.signkey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.ewan.debugModel"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Kunlun.ewan.packetid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/ewan/supersdk/open/InitInfo;

    invoke-direct {v4}, Lcn/ewan/supersdk/open/InitInfo;-><init>()V

    invoke-virtual {v4, v0}, Lcn/ewan/supersdk/open/InitInfo;->setAppId(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcn/ewan/supersdk/open/InitInfo;->setSignKey(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcn/ewan/supersdk/open/InitInfo;->setPacketid(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcn/ewan/supersdk/open/InitInfo;->setDebugMode(I)V

    invoke-static {}, Lcn/ewan/supersdk/open/SuperPlatform;->getInstance()Lcn/ewan/supersdk/open/SuperPlatform;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$1;

    invoke-direct {v1, p0, p2}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$1;-><init>(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-virtual {v0, p1, v4, v1}, Lcn/ewan/supersdk/open/SuperPlatform;->init(Landroid/app/Activity;Lcn/ewan/supersdk/open/InitInfo;Lcn/ewan/supersdk/open/SuperInitListener;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4ewan"

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

    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4ewan"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4ewan"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/ewan/supersdk/open/SuperPlatform;->getInstance()Lcn/ewan/supersdk/open/SuperPlatform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/ewan/supersdk/open/SuperPlatform;->onDestroy(Landroid/content/Context;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4ewan"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/ewan/supersdk/open/SuperPlatform;->getInstance()Lcn/ewan/supersdk/open/SuperPlatform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/ewan/supersdk/open/SuperPlatform;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4ewan"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/ewan/supersdk/open/SuperPlatform;->getInstance()Lcn/ewan/supersdk/open/SuperPlatform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/ewan/supersdk/open/SuperPlatform;->onRestart(Landroid/content/Context;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4ewan"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/ewan/supersdk/open/SuperPlatform;->getInstance()Lcn/ewan/supersdk/open/SuperPlatform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/ewan/supersdk/open/SuperPlatform;->onResume(Landroid/content/Context;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4ewan"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/ewan/supersdk/open/SuperPlatform;->getInstance()Lcn/ewan/supersdk/open/SuperPlatform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/ewan/supersdk/open/SuperPlatform;->onStop(Landroid/content/Context;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4ewan"

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

    const-string v7, "ewan"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$4;-><init>(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;IILjava/lang/String;)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4ewan"

    const-string v1, "relogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcn/ewan/supersdk/open/SuperPlatform;->getInstance()Lcn/ewan/supersdk/open/SuperPlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcn/ewan/supersdk/open/SuperPlatform;->isHasSwitchAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/ewan/supersdk/open/SuperPlatform;->getInstance()Lcn/ewan/supersdk/open/SuperPlatform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/ewan/supersdk/open/SuperPlatform;->switchAccount(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 10

    const-string v1, ""

    const-string v4, ""

    const-string v5, ""

    const-string v0, ""

    const-string v3, ""

    const-string v2, ""

    const-string v7, ""

    :try_start_0
    const-string v6, "roleState"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v1, "roleState"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    :goto_0
    const-string v1, "roleId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "roleId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-string v1, "roleName"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "roleName"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    const-string v1, "roleLevel"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "roleLevel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    :goto_1
    const-string v0, "serverId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "serverId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v0, "serverName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "serverName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    const-string v0, "extensionField"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "extensionField"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_4
    const/4 v1, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_5

    sget-object v0, Lcn/ewan/supersdk/open/SuperCollectRoleData;->loginRole:Lcn/ewan/supersdk/open/SuperCollectRoleData;

    invoke-static {v0}, Lcn/ewan/supersdk/open/SuperCollectRoleData;->getCollectRoleDataType(Lcn/ewan/supersdk/open/SuperCollectRoleData;)I

    move-result v1

    :cond_5
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v8, 0x2

    if-ne v0, v8, :cond_6

    sget-object v0, Lcn/ewan/supersdk/open/SuperCollectRoleData;->createRole:Lcn/ewan/supersdk/open/SuperCollectRoleData;

    invoke-static {v0}, Lcn/ewan/supersdk/open/SuperCollectRoleData;->getCollectRoleDataType(Lcn/ewan/supersdk/open/SuperCollectRoleData;)I

    move-result v1

    :cond_6
    new-instance v0, Lcn/ewan/supersdk/open/CollectInfo;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v7}, Lcn/ewan/supersdk/open/CollectInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcn/ewan/supersdk/open/SuperPlatform;->getInstance()Lcn/ewan/supersdk/open/SuperPlatform;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcn/ewan/supersdk/open/SuperPlatform;->collectData(Landroid/app/Activity;Lcn/ewan/supersdk/open/CollectInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_7
    move-object v6, v0

    goto :goto_1

    :cond_8
    move-object v8, v1

    goto/16 :goto_0
.end method
