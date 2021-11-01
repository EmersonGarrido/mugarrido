.class public Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

.field private gW:Z

.field private gX:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private orderId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->gW:Z

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Lcom/kunlun/platform/android/Kunlun$ExitCallback;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->gX:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->orderId:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->gW:Z

    return-void
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4jinshan"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {}, Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;->getInstance()Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;->login(Landroid/content/Context;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4jinshan"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->gX:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-static {}, Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;->getInstance()Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;->quit(Landroid/content/Context;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4jinshan"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;->getInstance()Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;-><init>(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)V

    invoke-virtual {v0, p1, v1}, Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;->init(Landroid/content/Context;Lcom/ijinshan/ksmglogin/inteface/IKSGameSdkCallback;)V

    const/4 v0, 0x0

    const-string v1, "init finish"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4jinshan"

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

    const-string v0, "KunlunProxyStubImpl4jinshan"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4jinshan"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4jinshan"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4jinshan"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "KunlunProxyStubImpl4jinshan"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KunlunProxyStubImpl4jinshan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResume isPaying:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->gW:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->gW:Z

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->gW:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "jinshan payment onfinish"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4jinshan"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4jinshan"

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

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->mActivity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static {p1, p5, p6}, Lcom/kunlun/platform/android/Kunlun;->prepareSingleChannelPurchase(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    const-string v0, ""

    const-string v1, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "jinshan"

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2;

    invoke-direct {v1, p0, p1, p6, p3}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$2;-><init>(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;I)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4jinshan"

    const-string v1, "relogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {}, Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;->getInstance()Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ijinshan/ksmglogin/manager/KSGameSdkManager;->logout(Landroid/content/Context;)V

    return-void
.end method
