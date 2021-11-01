.class public Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private appid:Ljava/lang/String;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

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

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->appid:Ljava/lang/String;

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

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;

    invoke-direct {v2, p0, p5, p1, p4}, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;-><init>(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {p1, v0, v1, v2}, Lcom/lenovo/lsf/gamesdk/LenovoGameApi;->doPay(Landroid/app/Activity;Ljava/lang/String;Lcom/lenovo/lsf/gamesdk/LenovoGameApi$GamePayRequest;Lcom/lenovo/lsf/gamesdk/LenovoGameApi$IPayResult;)V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->appid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4lenovo"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1;-><init>(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {p1, v0}, Lcom/lenovo/lsf/gamesdk/LenovoGameApi;->doAutoLogin(Landroid/app/Activity;Lcom/lenovo/lsf/gamesdk/LenovoGameApi$IAuthResult;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4lenovo"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$4;

    invoke-direct {v0, p2}, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$4;-><init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-static {p1, v0}, Lcom/lenovo/lsf/gamesdk/LenovoGameApi;->doQuit(Landroid/app/Activity;Lcom/lenovo/lsf/gamesdk/LenovoGameApi$IQuitCallback;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4lenovo"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "lenovo.open.appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "lenovo.open.appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->appid:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->appid:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/lenovo/lsf/gamesdk/LenovoGameApi;->doInit(Landroid/app/Activity;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "finish"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.lenovo.appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4lenovo"

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

    const-string v0, "KunlunProxyStubImpl4lenovo"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4lenovo"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4lenovo"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4lenovo"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4lenovo"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4lenovo"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const-string v0, "KunlunProxyStubImpl4lenovo"

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

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$2;-><init>(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;I)V

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4lenovo"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
