.class public Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private appid:Ljava/lang/String;

.field private appkey:Ljava/lang/String;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->appid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 3

    new-instance v0, Lcom/flamingo/sdk/access/GPSDKGamePayment;

    invoke-direct {v0}, Lcom/flamingo/sdk/access/GPSDKGamePayment;-><init>()V

    iput-object p2, v0, Lcom/flamingo/sdk/access/GPSDKGamePayment;->mItemName:Ljava/lang/String;

    iput-object p2, v0, Lcom/flamingo/sdk/access/GPSDKGamePayment;->mPaymentDes:Ljava/lang/String;

    int-to-float v1, p3

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/flamingo/sdk/access/GPSDKGamePayment;->mItemPrice:F

    iput-object p0, v0, Lcom/flamingo/sdk/access/GPSDKGamePayment;->mCurrentActivity:Landroid/app/Activity;

    iput-object p1, v0, Lcom/flamingo/sdk/access/GPSDKGamePayment;->mSerialNumber:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/flamingo/sdk/access/GPSDKGamePayment;->mItemId:Ljava/lang/String;

    iput-object p1, v0, Lcom/flamingo/sdk/access/GPSDKGamePayment;->mReserved:Ljava/lang/String;

    invoke-static {}, Lcom/flamingo/sdk/access/GPApiFactory;->getGPApi()Lcom/flamingo/sdk/access/IGPApi;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;

    invoke-direct {v2, p4, p0}, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$4;-><init>(Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Landroid/app/Activity;)V

    invoke-interface {v1, v0, v2}, Lcom/flamingo/sdk/access/IGPApi;->buy(Lcom/flamingo/sdk/access/GPSDKGamePayment;Lcom/flamingo/sdk/access/IGPPayObsv;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->b(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private b(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 4

    invoke-static {}, Lcom/flamingo/sdk/access/GPApiFactory;->getGPApi()Lcom/flamingo/sdk/access/IGPApi;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->appid:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->appkey:Ljava/lang/String;

    new-instance v3, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$1;-><init>(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;Lcom/kunlun/platform/android/Kunlun$initCallback;Landroid/app/Activity;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/flamingo/sdk/access/IGPApi;->initSdk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/flamingo/sdk/access/IGPSDKInitObsv;)V

    return-void
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4guopan"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/flamingo/sdk/access/GPApiFactory;->getGPApi()Lcom/flamingo/sdk/access/IGPApi;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$2;

    invoke-direct {v1, p0, p2}, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$2;-><init>(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-interface {v0, p1, v1}, Lcom/flamingo/sdk/access/IGPApi;->login(Landroid/app/Activity;Lcom/flamingo/sdk/access/IGPUserObsv;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4guopan"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flamingo/sdk/access/GPApiFactory;->getGPApi()Lcom/flamingo/sdk/access/IGPApi;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$5;

    invoke-direct {v1, p2}, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$5;-><init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-interface {v0, v1}, Lcom/flamingo/sdk/access/IGPApi;->exit(Lcom/flamingo/sdk/access/IGPExitObsv;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 4

    const-string v0, "KunlunProxyStubImpl4guopan"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-static {}, Lcom/flamingo/sdk/access/GPApiFactory;->getGPApi()Lcom/flamingo/sdk/access/IGPApi;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.guopan.logOpen"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/flamingo/sdk/access/IGPApi;->setLogOpen(Z)V

    invoke-static {}, Lcom/flamingo/sdk/access/GPApiFactory;->getGPApi()Lcom/flamingo/sdk/access/IGPApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/flamingo/sdk/access/IGPApi;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KunlunProxyStubImpl4guopan"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SDK version:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.guopan.appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->appid:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.guopan.appkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->appkey:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->b(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4guopan"

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

    const-string v0, "KunlunProxyStubImpl4guopan"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4guopan"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4guopan"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4guopan"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4guopan"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4guopan"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const-string v0, "KunlunProxyStubImpl4guopan"

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

    const-string v6, "guopan"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan$3;-><init>(Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;I)V

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4guopan"

    const-string v1, "relogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/flamingo/sdk/access/GPApiFactory;->getGPApi()Lcom/flamingo/sdk/access/IGPApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/flamingo/sdk/access/IGPApi;->logout()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/guopan/KunlunProxyStubImpl4guopan;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
