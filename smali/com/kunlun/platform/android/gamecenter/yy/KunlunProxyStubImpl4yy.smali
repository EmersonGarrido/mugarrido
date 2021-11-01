.class public Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private appid:Ljava/lang/String;

.field private ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

.field private gX:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private roleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 3

    new-instance v0, Lcom/yy/gamesdk/PayInfo;

    invoke-direct {v0}, Lcom/yy/gamesdk/PayInfo;-><init>()V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yy/gamesdk/PayInfo;->setServerId(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yy/gamesdk/PayInfo;->setProductId(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yy/gamesdk/PayInfo;->setProductCount(I)V

    invoke-virtual {v0, p2}, Lcom/yy/gamesdk/PayInfo;->setProductName(Ljava/lang/String;)V

    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yy/gamesdk/PayInfo;->setAmount(Ljava/lang/Float;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yy/gamesdk/PayInfo;->setRoleId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yy/gamesdk/PayInfo;->setRoleName(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "___"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->appid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yy/gamesdk/PayInfo;->setExtData(Ljava/lang/String;)V

    invoke-static {}, Lcom/yy/gamesdk/YYGame;->getInstance()Lcom/yy/gamesdk/YYGame;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/yy/gamesdk/YYGame;->pay(Landroid/app/Activity;Lcom/yy/gamesdk/PayInfo;)V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->appid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;)Lcom/kunlun/platform/android/Kunlun$ExitCallback;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->gX:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4yy"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {}, Lcom/yy/gamesdk/YYGame;->getInstance()Lcom/yy/gamesdk/YYGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yy/gamesdk/YYGame;->login(Landroid/app/Activity;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4yy"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->gX:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-static {}, Lcom/yy/gamesdk/YYGame;->getInstance()Lcom/yy/gamesdk/YYGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yy/gamesdk/YYGame;->exitGame(Landroid/app/Activity;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4yy"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/yy/gamesdk/YYGame;->getInstance()Lcom/yy/gamesdk/YYGame;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$1;-><init>(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;Lcom/kunlun/platform/android/Kunlun$initCallback;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/yy/gamesdk/YYGame;->addYYRefreshListener(Lcom/yy/gamesdk/common/RefreshEventManager$YYRefreshEventListener;)V

    new-instance v0, Lcom/yy/gamesdk/AppInfo;

    invoke-direct {v0}, Lcom/yy/gamesdk/AppInfo;-><init>()V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.yy.appid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->appid:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->appid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yy/gamesdk/AppInfo;->setAppId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.debugMode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yy/gamesdk/AppInfo;->setDebug(Z)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.yy.ScreenOrientation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yy/gamesdk/AppInfo;->setScreenOrientation(I)V

    invoke-static {}, Lcom/yy/gamesdk/YYGame;->getInstance()Lcom/yy/gamesdk/YYGame;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/yy/gamesdk/YYGame;->init(Landroid/app/Activity;Lcom/yy/gamesdk/AppInfo;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4yy"

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

    const-string v0, "KunlunProxyStubImpl4yy"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4yy"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4yy"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/yy/gamesdk/YYGame;->getInstance()Lcom/yy/gamesdk/YYGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yy/gamesdk/YYGame;->hideFloatMenu(Landroid/app/Activity;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4yy"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4yy"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/yy/gamesdk/YYGame;->getInstance()Lcom/yy/gamesdk/YYGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yy/gamesdk/YYGame;->showFloatMenu(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4yy"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const-string v0, "KunlunProxyStubImpl4yy"

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

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v0, ""

    const-string v1, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "yy"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy$2;-><init>(Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;)V

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4yy"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/yy/gamesdk/YYGame;->getInstance()Lcom/yy/gamesdk/YYGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yy/gamesdk/YYGame;->logout(Landroid/app/Activity;)V

    return-void
.end method

.method public setKunlunServerId(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/yy/gamesdk/YYGame;->getInstance()Lcom/yy/gamesdk/YYGame;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Lcom/yy/gamesdk/YYGame;->enterGameServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, "roleIsNewCreate"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "roleIsNewCreate"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    const-string v2, "roleName"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "roleName"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->roleName:Ljava/lang/String;

    :cond_1
    const-string v2, "roleLevel"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "roleLevel"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.debugMode"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "KunlunProxyStubImpl4yy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isNewCreate = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",roleName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->roleName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",roleLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/yy/gamesdk/YYGame;->getInstance()Lcom/yy/gamesdk/YYGame;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yy/gamesdk/YYGame;->OnCreateNewRole(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    invoke-static {}, Lcom/yy/gamesdk/YYGame;->getInstance()Lcom/yy/gamesdk/YYGame;

    move-result-object v0

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/yy/KunlunProxyStubImpl4yy;->roleName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/yy/gamesdk/YYGame;->OnRoleLevelChanged(Ljava/lang/String;I)V

    goto :goto_0
.end method
