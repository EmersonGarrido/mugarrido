.class public Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private consumerKey:Ljava/lang/String;

.field private fg:Lcom/changba/SSOClient;

.field private fh:Ljava/lang/String;

.field private fi:Ljava/lang/String;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private payId:Ljava/lang/String;

.field private scope:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "msg.sendusernotice,msg.sendsysnotice"

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->scope:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 6

    new-instance v4, Lcom/changba/entity/PayConfig;

    invoke-direct {v4}, Lcom/changba/entity/PayConfig;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->payId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/changba/entity/PayConfig;->payId:Ljava/lang/String;

    invoke-static {p2}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v4, Lcom/changba/entity/PayConfig;->waresId:I

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->fh:Ljava/lang/String;

    iput-object v0, v4, Lcom/changba/entity/PayConfig;->payVKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->fi:Ljava/lang/String;

    iput-object v0, v4, Lcom/changba/entity/PayConfig;->payPKey:Ljava/lang/String;

    iput-object p3, v4, Lcom/changba/entity/PayConfig;->cporderid:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->fg:Lcom/changba/SSOClient;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->userId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->payId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$3;

    invoke-direct {v5, p0, p1, p4, p3}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$3;-><init>(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)V

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/changba/SSOClient;->pay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/changba/entity/PayConfig;Lcom/changba/callback/PaymentListener;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "itemName is not a num"

    invoke-static {p1, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->userId:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Lcom/changba/SSOClient;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->fg:Lcom/changba/SSOClient;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->consumerKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4changba"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->fg:Lcom/changba/SSOClient;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;-><init>(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)V

    invoke-interface {v0, v1}, Lcom/changba/SSOClient;->authorize(Lcom/changba/callback/AuthorizeListener;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4changba"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4changba"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.changba.consumerKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->consumerKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.changba.consumerSecret"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.changba.payId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->payId:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.changba.APPV_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->fh:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.changba.PLATP_KEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->fi:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.changba.redirectUri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.changba.isLandscape"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    move v6, v7

    :cond_0
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->consumerKey:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->payId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->scope:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Lcom/changba/SSOClientImpl;->getInstance(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/changba/SSOClientImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->fg:Lcom/changba/SSOClient;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->fg:Lcom/changba/SSOClient;

    if-eqz v0, :cond_1

    const-string v0, "finish"

    invoke-interface {p2, v7, v0}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    const-string v1, "init error"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4changba"

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

    const-string v0, "KunlunProxyStubImpl4changba"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4changba"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4changba"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4changba"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4changba"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4changba"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->fg:Lcom/changba/SSOClient;

    invoke-interface {v0}, Lcom/changba/SSOClient;->destoryAccessToken()V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4changba"

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

    const-string v7, "changba"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$2;-><init>(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;II)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4changba"

    const-string v1, "reLogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->fg:Lcom/changba/SSOClient;

    invoke-interface {v0}, Lcom/changba/SSOClient;->destoryAccessToken()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
