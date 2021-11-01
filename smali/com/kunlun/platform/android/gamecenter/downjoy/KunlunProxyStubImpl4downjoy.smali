.class public Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private fR:Lcom/downjoy/Downjoy;

.field private fS:Z

.field private fT:J

.field private fU:Ljava/lang/String;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fT:J

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fS:Z

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;J)V
    .locals 1

    iput-wide p1, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fT:J

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;Landroid/app/Activity;FLjava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 9

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    iget-object v7, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fU:Ljava/lang/String;

    new-instance v8, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$6;

    invoke-direct {v8, p0, p1, p4, p5}, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$6;-><init>(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;Landroid/app/Activity;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v8}, Lcom/downjoy/Downjoy;->openPaymentDialog(Landroid/app/Activity;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/downjoy/CallbackListener;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fU:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fS:Z

    return v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 6

    const-wide/16 v4, 0xbb8

    const-string v0, "KunlunProxyStubImpl4downjoy"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-wide v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fT:J

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$3;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$3;-><init>(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;)V

    iget-wide v2, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fT:J

    add-long/2addr v2, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string v0, "KunlunProxyStubImpl4downjoy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "openLoginDialog:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$4;-><init>(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/downjoy/Downjoy;->openLoginDialog(Landroid/app/Activity;Lcom/downjoy/CallbackListener;)V

    goto :goto_0
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4downjoy"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$7;

    invoke-direct {v1, p2}, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$7;-><init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/downjoy/Downjoy;->openExitDialog(Landroid/app/Activity;Lcom/downjoy/CallbackListener;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 6

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4downjoy"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.downjoy.merchantId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "Kunlun.downjoy.appId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "Kunlun.downjoy.appKey"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "Kunlun.downjoy.serverSeqNum"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$1;

    invoke-direct {v5, p2}, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$1;-><init>(Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/downjoy/Downjoy;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/downjoy/InitListener;)Lcom/downjoy/Downjoy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "notShowDownjoyIcon"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    invoke-virtual {v1, v0}, Lcom/downjoy/Downjoy;->showDownjoyIconAfterLogined(Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/downjoy/Downjoy;->setInitLocation(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$2;-><init>(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;)V

    invoke-virtual {v0, v1}, Lcom/downjoy/Downjoy;->setLogoutListener(Lcom/downjoy/LogoutListener;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4downjoy"

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

    const-string v0, "KunlunProxyStubImpl4downjoy"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4downjoy"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    invoke-virtual {v0}, Lcom/downjoy/Downjoy;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4downjoy"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    invoke-virtual {v0}, Lcom/downjoy/Downjoy;->pause()V

    :cond_0
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4downjoy"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4downjoy"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    invoke-virtual {v0, p1}, Lcom/downjoy/Downjoy;->resume(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4downjoy"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const-string v0, "KunlunProxyStubImpl4downjoy"

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

    const-string v6, "downjoy"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy$5;-><init>(Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;)V

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4downjoy"

    const-string v1, "reLogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fS:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/downjoy/KunlunProxyStubImpl4downjoy;->fR:Lcom/downjoy/Downjoy;

    invoke-virtual {v0, p1}, Lcom/downjoy/Downjoy;->logout(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
