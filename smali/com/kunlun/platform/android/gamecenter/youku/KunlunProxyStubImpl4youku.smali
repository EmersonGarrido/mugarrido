.class public Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private kL:Lcom/youku/gamesdk/data/Bean;

.field private kM:Z

.field private kN:Lcom/youku/gamesdk/act/YKCallBackWithContext;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private orderId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$1;-><init>(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->kN:Lcom/youku/gamesdk/act/YKCallBackWithContext;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 4

    new-instance v0, Lcom/youku/gamesdk/data/YKPayBean;

    invoke-direct {v0}, Lcom/youku/gamesdk/data/YKPayBean;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamesdk/data/YKPayBean;->setAmount(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "___"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamesdk/data/YKPayBean;->setAppOrderId(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "youku/payinterface.php"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamesdk/data/YKPayBean;->setNotifyUri(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    div-int v2, p3, p4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/youku/gamesdk/data/YKPayBean;->setProductId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/youku/gamesdk/data/YKPayBean;->setProductName(Ljava/lang/String;)V

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$5;

    invoke-direct {v1, p0, p1, p6, p5}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$5;-><init>(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)V

    invoke-static {p1, v0, v1}, Lcom/youku/gamesdk/act/YKPlatform;->doPay(Landroid/app/Activity;Lcom/youku/gamesdk/data/YKPayBean;Lcom/youku/gamesdk/act/YKCallBack;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;Lcom/youku/gamesdk/data/Bean;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->kL:Lcom/youku/gamesdk/data/Bean;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->orderId:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)Lcom/youku/gamesdk/data/Bean;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->kL:Lcom/youku/gamesdk/data/Bean;

    return-object v0
.end method

.method static synthetic bU()V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->kM:Z

    return v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)Lcom/youku/gamesdk/act/YKCallBackWithContext;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->kN:Lcom/youku/gamesdk/act/YKCallBackWithContext;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->orderId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->kL:Lcom/youku/gamesdk/data/Bean;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/youku/gamesdk/act/YKPlatform;->closeYKFloat(Landroid/content/Context;)V

    :cond_0
    new-instance v0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;-><init>(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;Lcom/kunlun/platform/android/Kunlun$LoginListener;Landroid/app/Activity;)V

    invoke-static {v0, p1}, Lcom/youku/gamesdk/act/YKPlatform;->autoLogin(Lcom/youku/gamesdk/act/YKCallBack;Landroid/content/Context;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$6;

    invoke-direct {v0, p0, p2}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$6;-><init>(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-static {p1, v0}, Lcom/youku/gamesdk/act/YKPlatform;->quit(Landroid/content/Context;Lcom/youku/gamesdk/act/YKCallBack;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.youku.isShowChangeAccountFloat"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.youku.isShowChangeAccountFloat"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->kM:Z

    :goto_0
    new-instance v0, Lcom/youku/gamesdk/act/YKInit;

    invoke-direct {v0, p1}, Lcom/youku/gamesdk/act/YKInit;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$2;

    invoke-direct {v1, p1, p2}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$2;-><init>(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-virtual {v0, v1}, Lcom/youku/gamesdk/act/YKInit;->init(Lcom/youku/gamesdk/act/YKCallBack;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->kM:Z

    goto :goto_0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4youku"

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

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4youku"

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

    const-string v7, "youku"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$4;-><init>(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;II)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "relogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/youku/gamesdk/act/YKPlatform;->logout(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "relogin"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
