.class public Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private dw:Lcom/kunlun/platform/android/Kunlun$initCallback;

.field private eE:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

.field private ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

.field private gb:Lcom/duowan/sdk/DuowanApi;

.field private gc:Lcom/duowan/sdk/listener/PlatformListener;

.field private gd:Lcom/duowan/sdk/listener/GameListener;

.field private ge:Lcom/duowan/sdk/RoleInfo;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;-><init>(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->gc:Lcom/duowan/sdk/listener/PlatformListener;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$initCallback;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->dw:Lcom/kunlun/platform/android/Kunlun$initCallback;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;Landroid/app/Activity;Ljava/lang/String;FILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 2

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->mActivity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    new-instance v0, Lcom/duowan/sdk/OrderInfo;

    invoke-direct {v0, p4, p3, p2, p5}, Lcom/duowan/sdk/OrderInfo;-><init>(IFLjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->gb:Lcom/duowan/sdk/DuowanApi;

    invoke-virtual {v1, p1, v0}, Lcom/duowan/sdk/DuowanApi;->onlinePay(Landroid/content/Context;Lcom/duowan/sdk/OrderInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;Lcom/duowan/sdk/RoleInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->ge:Lcom/duowan/sdk/RoleInfo;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/duowan/sdk/DuowanApi;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->gb:Lcom/duowan/sdk/DuowanApi;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$ExitCallback;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->eE:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    return-object v0
.end method

.method static synthetic g(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    return-object v0
.end method

.method static synthetic h(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/duowan/sdk/RoleInfo;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->ge:Lcom/duowan/sdk/RoleInfo;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->gb:Lcom/duowan/sdk/DuowanApi;

    invoke-virtual {v0, p1}, Lcom/duowan/sdk/DuowanApi;->openLogin(Landroid/content/Context;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->gb:Lcom/duowan/sdk/DuowanApi;

    invoke-virtual {v0, p1}, Lcom/duowan/sdk/DuowanApi;->openExitDialog(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->eE:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->dw:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-static {}, Lcom/duowan/sdk/DuowanApi;->getInstance()Lcom/duowan/sdk/DuowanApi;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->gb:Lcom/duowan/sdk/DuowanApi;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->gb:Lcom/duowan/sdk/DuowanApi;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->gc:Lcom/duowan/sdk/listener/PlatformListener;

    invoke-virtual {v0, v1}, Lcom/duowan/sdk/DuowanApi;->setPlatformListener(Lcom/duowan/sdk/listener/PlatformListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->gb:Lcom/duowan/sdk/DuowanApi;

    invoke-virtual {v0, p1}, Lcom/duowan/sdk/DuowanApi;->openSplashScreen(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->gb:Lcom/duowan/sdk/DuowanApi;

    invoke-virtual {v0, p1}, Lcom/duowan/sdk/DuowanApi;->setLauncherActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4duowan"

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

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/duowan/sdk/DuowanApi;->getInstance()Lcom/duowan/sdk/DuowanApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duowan/sdk/DuowanApi;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/duowan/sdk/DuowanApi;->getInstance()Lcom/duowan/sdk/DuowanApi;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/duowan/sdk/DuowanApi;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4duowan"

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

    const-string v7, "duowan"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$2;-><init>(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;IILjava/lang/String;)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "reLogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->gb:Lcom/duowan/sdk/DuowanApi;

    invoke-virtual {v0, p1}, Lcom/duowan/sdk/DuowanApi;->logout(Landroid/content/Context;)V

    return-void
.end method

.method public submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;

    invoke-direct {v0, p0, p2}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$3;-><init>(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->gd:Lcom/duowan/sdk/listener/GameListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->gb:Lcom/duowan/sdk/DuowanApi;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->gd:Lcom/duowan/sdk/listener/GameListener;

    invoke-virtual {v0, v1}, Lcom/duowan/sdk/DuowanApi;->setGameListener(Lcom/duowan/sdk/listener/GameListener;)V

    return-void
.end method
