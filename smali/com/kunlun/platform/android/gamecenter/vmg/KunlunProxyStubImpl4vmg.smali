.class public Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;
.super Lcom/kunlun/platform/android/KunlunProxyStubImpl;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private clientId:Ljava/lang/String;

.field private ko:Ljava/lang/String;

.field private kp:Lvn/com/vnptepay/openID/Vnptepay;

.field private kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

.field private kq:Z

.field private kr:Ljava/lang/Runnable;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunProxyStubImpl;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kq:Z

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lvn/com/vnptepay/openID/Vnptepay;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kp:Lvn/com/vnptepay/openID/Vnptepay;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kq:Z

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kq:Z

    return v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/widget/KunlunProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kr:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4vmg"

    const-string v1, "doLogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kp:Lvn/com/vnptepay/openID/Vnptepay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->clientId:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->ko:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;-><init>(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kp:Lvn/com/vnptepay/openID/Vnptepay;

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kr:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$2;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$2;-><init>(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kr:Ljava/lang/Runnable;

    :cond_1
    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kr:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$3;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->mActivity:Landroid/app/Activity;

    const-string v2, "Please wait..."

    invoke-direct {v0, p0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$3;-><init>(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$4;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$4;-><init>(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)V

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->show()V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4vmg"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4vmg"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.vmg.clientId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->clientId:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.vmg.secretKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->ko:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kp:Lvn/com/vnptepay/openID/Vnptepay;

    invoke-super {p0, p1, p2}, Lcom/kunlun/platform/android/KunlunProxyStubImpl;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    return-void
.end method

.method public logout(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->clientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->ko:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.vmg.clientId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->clientId:Ljava/lang/String;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.vmg.secretKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->ko:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->ko:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->clientId:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lvn/com/vnptepay/openIDlibs/Logout;->startLogout(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4vmg"

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

    const-string v0, "KunlunProxyStubImpl4vmg"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4vmg"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4vmg"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4vmg"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4vmg"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4vmg"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    invoke-super/range {p0 .. p6}, Lcom/kunlun/platform/android/KunlunProxyStubImpl;->purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4vmg"

    const-string v1, "reLogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kp:Lvn/com/vnptepay/openID/Vnptepay;

    invoke-virtual {v0, p1}, Lvn/com/vnptepay/openID/Vnptepay;->logout(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "logout"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "reLogin"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    :cond_1
    return-void
.end method
