.class public Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private fF:I

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;)I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->fF:I

    return v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;Landroid/app/Activity;Ljava/lang/String;FLcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 3

    new-instance v0, Lcom/weedong/gamesdk/bean/PayInfo;

    invoke-direct {v0}, Lcom/weedong/gamesdk/bean/PayInfo;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "___"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->fF:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/weedong/gamesdk/bean/PayInfo;->setCpOrderId(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/weedong/gamesdk/bean/PayInfo;->setCpServerId(Ljava/lang/String;)V

    float-to-int v1, p3

    invoke-virtual {v0, v1}, Lcom/weedong/gamesdk/bean/PayInfo;->setAmount(I)V

    invoke-static {}, Lcom/weedong/gamesdk/base/WdGameSDK;->getInstance()Lcom/weedong/gamesdk/base/WdGameSDK;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;

    invoke-direct {v2, p0, p2, p4, p1}, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;-><init>(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Landroid/app/Activity;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/weedong/gamesdk/base/WdGameSDK;->payment(Landroid/app/Activity;Lcom/weedong/gamesdk/bean/PayInfo;Lcom/weedong/gamesdk/listener/WdPayListener;)V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meitu"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {}, Lcom/weedong/gamesdk/base/WdGameSDK;->getInstance()Lcom/weedong/gamesdk/base/WdGameSDK;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$1;-><init>(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;)V

    invoke-virtual {v0, p1, v1}, Lcom/weedong/gamesdk/base/WdGameSDK;->login(Landroid/app/Activity;Lcom/weedong/gamesdk/listener/WdLoginListener;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meitu"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/weedong/gamesdk/base/WdGameSDK;->getInstance()Lcom/weedong/gamesdk/base/WdGameSDK;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$5;

    invoke-direct {v1, p2}, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$5;-><init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/weedong/gamesdk/base/WdGameSDK;->exit(Landroid/app/Activity;Lcom/weedong/gamesdk/listener/WdExitListener;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4meitu"

    const-string v2, "init"

    invoke-static {v0, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "WeeDong_APP_ID"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->fF:I

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "Kunlun.meitu.appkey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "Kunlun.meitu.isLandscape"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v3, "KunlunProxyStubImpl4meitu"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "appkey: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \nappid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->fF:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->fF:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3, v2, v0}, Lcom/weedong/gamesdk/base/WdGameSDK;->initialize(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {}, Lcom/weedong/gamesdk/base/WdGameSDK;->getInstance()Lcom/weedong/gamesdk/base/WdGameSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/weedong/gamesdk/base/WdGameSDK;->createGameBar(Landroid/app/Activity;)V

    const-string v0, "success"

    invoke-interface {p2, v1, v0}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4meitu"

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

    const-string v0, "KunlunProxyStubImpl4meitu"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meitu"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/weedong/gamesdk/base/WdGameSDK;->getInstance()Lcom/weedong/gamesdk/base/WdGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/weedong/gamesdk/base/WdGameSDK;->destroyGameBar()V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meitu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/weedong/gamesdk/base/WdGameSDK;->getInstance()Lcom/weedong/gamesdk/base/WdGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/weedong/gamesdk/base/WdGameSDK;->hideGameBar()V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meitu"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meitu"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/weedong/gamesdk/base/WdGameSDK;->getInstance()Lcom/weedong/gamesdk/base/WdGameSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/weedong/gamesdk/base/WdGameSDK;->showGameBar()V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meitu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const-string v0, "KunlunProxyStubImpl4meitu"

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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "itemName\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "price\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->setPayOrderExt(Ljava/util/List;)V

    const-string v6, "meitu"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$3;-><init>(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;)V

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meitu"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "logout success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/weedong/gamesdk/base/WdGameSDK;->getInstance()Lcom/weedong/gamesdk/base/WdGameSDK;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$2;

    invoke-direct {v1, p1}, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1}, Lcom/weedong/gamesdk/base/WdGameSDK;->switchAccount(Landroid/app/Activity;Lcom/weedong/gamesdk/listener/WdSwitchListener;)V

    return-void
.end method
