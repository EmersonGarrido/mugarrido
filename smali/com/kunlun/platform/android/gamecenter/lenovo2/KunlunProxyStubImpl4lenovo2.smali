.class public Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private appid:Ljava/lang/String;

.field private eB:Z

.field private ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

.field private hA:Z

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->hA:Z

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->eB:Z

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->eB:Z

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.lenovo.appKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/lenovo/lsf/gamesdk/LenovoGameApi$GamePayRequest;

    invoke-direct {v1}, Lcom/lenovo/lsf/gamesdk/LenovoGameApi$GamePayRequest;-><init>()V

    const-string v2, "notifyurl"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/gamesdk/LenovoGameApi$GamePayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "appid"

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->appid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/gamesdk/LenovoGameApi$GamePayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "waresid"

    invoke-virtual {v1, v2, p2}, Lcom/lenovo/lsf/gamesdk/LenovoGameApi$GamePayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "exorderno"

    invoke-virtual {v1, v2, p4}, Lcom/lenovo/lsf/gamesdk/LenovoGameApi$GamePayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "price"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/gamesdk/LenovoGameApi$GamePayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "cpprivateinfo"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lsf/gamesdk/LenovoGameApi$GamePayRequest;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->hA:Z

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$4;

    invoke-direct {v2, p0, p1, p5, p4}, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$4;-><init>(Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lcom/lenovo/lsf/gamesdk/LenovoGameApi;->doPay(Landroid/app/Activity;Ljava/lang/String;Lcom/lenovo/lsf/gamesdk/LenovoGameApi$GamePayRequest;Lcom/lenovo/lsf/gamesdk/LenovoGameApi$IPayResult;)V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->appid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->hA:Z

    return-void
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4lenovo2"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->eB:Z

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$1;-><init>(Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {p1, v0}, Lcom/lenovo/lsf/gamesdk/LenovoGameApi;->getStData(Landroid/content/Context;Lcom/lenovo/lsf/gamesdk/LenovoGameApi$IAuthResult;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4lenovo2"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$5;

    invoke-direct {v0, p2}, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$5;-><init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-static {p1, v0}, Lcom/lenovo/lsf/gamesdk/LenovoGameApi;->doQuit(Landroid/app/Activity;Lcom/lenovo/lsf/gamesdk/LenovoGameApi$IQuitCallback;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4lenovo2"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "lenovo.open.appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->appid:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->appid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/lenovo/lsf/gamesdk/LenovoGameApi;->doSingleInit(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "finish"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4lenovo2"

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

    const-string v0, "KunlunProxyStubImpl4lenovo2"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4lenovo2"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4lenovo2"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4lenovo2"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "KunlunProxyStubImpl4lenovo2"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->hA:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "lenovo2 onPaymentCompleted"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    iput-boolean v4, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->hA:Z

    :cond_0
    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->eB:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x66

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    iput-boolean v4, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->eB:Z

    :cond_1
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4lenovo2"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$2;-><init>(Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "KunlunProxyStubImpl4lenovo2"

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

    const-string v6, "lenovo"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2$3;-><init>(Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;I)V

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    goto :goto_0
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4lenovo2"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/lenovo2/KunlunProxyStubImpl4lenovo2;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
