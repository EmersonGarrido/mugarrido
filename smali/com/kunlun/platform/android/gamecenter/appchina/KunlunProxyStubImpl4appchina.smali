.class public Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private eI:Landroid/app/Activity;

.field private eJ:Lcom/yyh/sdk/CPInfo;

.field private eK:Ljava/lang/String;

.field private eL:Lcom/yyh/sdk/AccountCallback;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "v2"

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eK:Ljava/lang/String;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$1;-><init>(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eL:Lcom/yyh/sdk/AccountCallback;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const/4 v3, 0x1

    new-instance v0, Lcom/yyh/sdk/PayParam;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v4, ""

    new-array v2, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "appchina/payinterface.php"

    aput-object v6, v2, v5

    invoke-static {v2}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move v2, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/yyh/sdk/PayParam;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$5;

    invoke-direct {v1, p0, p4, p5}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$5;-><init>(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-static {p1, v0, v1}, Lcom/yyh/sdk/YYHSDKAPI;->stratPay(Landroid/app/Activity;Lcom/yyh/sdk/PayParam;Lcom/yyh/sdk/PayCallback;)V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eI:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic bK()V
    .locals 0

    return-void
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;)Lcom/yyh/sdk/CPInfo;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eJ:Lcom/yyh/sdk/CPInfo;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eK:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4appchina"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$3;

    invoke-direct {v0, p0, p2}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$3;-><init>(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {p1, v0}, Lcom/yyh/sdk/YYHSDKAPI;->login(Landroid/app/Activity;Lcom/yyh/sdk/LoginCallback;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4appchina"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4appchina"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eI:Landroid/app/Activity;

    new-instance v0, Lcom/yyh/sdk/CPInfo;

    invoke-direct {v0}, Lcom/yyh/sdk/CPInfo;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eJ:Lcom/yyh/sdk/CPInfo;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eJ:Lcom/yyh/sdk/CPInfo;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.appchina.loginId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/yyh/sdk/CPInfo;->loginId:I

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eJ:Lcom/yyh/sdk/CPInfo;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.appchina.loginKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yyh/sdk/CPInfo;->loginKey:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eJ:Lcom/yyh/sdk/CPInfo;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.appchina.appid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yyh/sdk/CPInfo;->appid:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eJ:Lcom/yyh/sdk/CPInfo;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.appchina.appkey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yyh/sdk/CPInfo;->appkey:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eJ:Lcom/yyh/sdk/CPInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/yyh/sdk/CPInfo;->orientation:I

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.appchina.isLandScape"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eJ:Lcom/yyh/sdk/CPInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/yyh/sdk/CPInfo;->orientation:I

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eJ:Lcom/yyh/sdk/CPInfo;

    iget v0, v0, Lcom/yyh/sdk/CPInfo;->orientation:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eJ:Lcom/yyh/sdk/CPInfo;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$2;

    invoke-direct {v1, p0, p2}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$2;-><init>(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->eL:Lcom/yyh/sdk/AccountCallback;

    invoke-static {p1, v0, v1, v2}, Lcom/yyh/sdk/YYHSDKAPI;->initSDKAPI(Landroid/app/Activity;Lcom/yyh/sdk/CPInfo;Lcom/yyh/sdk/InitCallback;Lcom/yyh/sdk/AccountCallback;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4appchina"

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

    const-string v0, "KunlunProxyStubImpl4appchina"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4appchina"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4appchina"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4appchina"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4appchina"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4appchina"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4appchina"

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

    const-string v7, "appchina"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$4;-><init>(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;II)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4appchina"

    const-string v1, "reLogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yyh/sdk/YYHSDKAPI;->openAccountCenter(Landroid/app/Activity;)V

    return-void
.end method
