.class public Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private appid:Ljava/lang/String;

.field private ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

.field private gA:Lcom/haima/loginplugin/callback/OnLoginListener;

.field private gB:Lcom/haima/loginplugin/callback/OnLoginCancelListener;

.field private gC:Lcom/haima/loginplugin/callback/OnRegistCancelListener;

.field private gD:Lcom/haima/payPlugin/callback/OnPayCancelListener;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;-><init>(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->gA:Lcom/haima/loginplugin/callback/OnLoginListener;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$2;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$2;-><init>(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->gB:Lcom/haima/loginplugin/callback/OnLoginCancelListener;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$3;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$3;-><init>(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->gC:Lcom/haima/loginplugin/callback/OnRegistCancelListener;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$4;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$4;-><init>(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->gD:Lcom/haima/payPlugin/callback/OnPayCancelListener;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->appid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;Ljava/lang/String;Ljava/lang/String;FLjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 3

    new-instance v0, Lcom/haima/payPlugin/infos/ZHPayOrderInfo;

    invoke-direct {v0}, Lcom/haima/payPlugin/infos/ZHPayOrderInfo;-><init>()V

    iput-object p1, v0, Lcom/haima/payPlugin/infos/ZHPayOrderInfo;->goodName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.gameName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/haima/payPlugin/infos/ZHPayOrderInfo;->gameName:Ljava/lang/String;

    iput p3, v0, Lcom/haima/payPlugin/infos/ZHPayOrderInfo;->goodPrice:F

    iput-object p2, v0, Lcom/haima/payPlugin/infos/ZHPayOrderInfo;->orderNo:Ljava/lang/String;

    iput-object p4, v0, Lcom/haima/payPlugin/infos/ZHPayOrderInfo;->userParam:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$7;

    invoke-direct {v2, p0, p2, p5}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$7;-><init>(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-static {v0, v1, v2}, Lcom/haima/plugin/haima/HMPay;->pay(Lcom/haima/payPlugin/infos/ZHPayOrderInfo;Landroid/app/Activity;Lcom/haima/payPlugin/callback/OnPayListener;)V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4hm"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/haima/plugin/haima/HMPay;->isLogined()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->gA:Lcom/haima/loginplugin/callback/OnLoginListener;

    invoke-static {p1, v0}, Lcom/haima/plugin/haima/HMPay;->login(Landroid/content/Context;Lcom/haima/loginplugin/callback/OnLoginListener;)V

    :cond_0
    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4hm"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 6

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4hm"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.isLandscape"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "Kunlun.debugMode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "HMKey"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->appid:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->appid:Ljava/lang/String;

    new-instance v3, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$5;

    invoke-direct {v3}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$5;-><init>()V

    const/4 v5, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/haima/plugin/haima/HMPay;->init(Landroid/app/Activity;ZLjava/lang/String;Lcom/haima/loginplugin/callback/OnCheckUpdateListener;ZI)Z

    invoke-static {v4}, Lcom/haima/plugin/haima/HMPay;->setLogEnable(Z)V

    const/4 v0, 0x0

    const-string v1, "success"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->gC:Lcom/haima/loginplugin/callback/OnRegistCancelListener;

    invoke-static {v0}, Lcom/haima/plugin/haima/HMPay;->setRegistCancelListener(Lcom/haima/loginplugin/callback/OnRegistCancelListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->gB:Lcom/haima/loginplugin/callback/OnLoginCancelListener;

    invoke-static {v0}, Lcom/haima/plugin/haima/HMPay;->setLoginCancelListener(Lcom/haima/loginplugin/callback/OnLoginCancelListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->gD:Lcom/haima/payPlugin/callback/OnPayCancelListener;

    invoke-static {v0}, Lcom/haima/plugin/haima/HMPay;->setPayCancelListener(Lcom/haima/payPlugin/callback/OnPayCancelListener;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4hm"

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

    const-string v0, "KunlunProxyStubImpl4hm"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4hm"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->gA:Lcom/haima/loginplugin/callback/OnLoginListener;

    invoke-static {v0}, Lcom/haima/plugin/haima/HMPay;->removeLoginListener(Lcom/haima/loginplugin/callback/OnLoginListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->gB:Lcom/haima/loginplugin/callback/OnLoginCancelListener;

    invoke-static {v0}, Lcom/haima/plugin/haima/HMPay;->removeLoginCancelListener(Lcom/haima/loginplugin/callback/OnLoginCancelListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->gC:Lcom/haima/loginplugin/callback/OnRegistCancelListener;

    invoke-static {v0}, Lcom/haima/plugin/haima/HMPay;->removeRegistCancelListener(Lcom/haima/loginplugin/callback/OnRegistCancelListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->gD:Lcom/haima/payPlugin/callback/OnPayCancelListener;

    invoke-static {v0}, Lcom/haima/plugin/haima/HMPay;->removePayCancelListener(Lcom/haima/payPlugin/callback/OnPayCancelListener;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4hm"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/haima/plugin/haima/HMPay;->onPause()V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4hm"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4hm"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/haima/plugin/haima/HMPay;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4hm"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4hm"

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

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->mActivity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static {p1, p5, p6}, Lcom/kunlun/platform/android/Kunlun;->prepareSingleChannelPurchase(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    const-string v0, ""

    const-string v1, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "haimawan"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$6;-><init>(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4hm"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {}, Lcom/haima/plugin/haima/HMPay;->logOut()Z

    invoke-static {p1}, Lcom/haima/plugin/haima/HMPay;->switchAccount(Landroid/content/Context;)V

    return-void
.end method
