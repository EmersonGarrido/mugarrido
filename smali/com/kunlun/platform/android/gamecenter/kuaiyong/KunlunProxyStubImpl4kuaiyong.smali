.class public Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private appKey:Ljava/lang/String;

.field private hq:Z

.field private isLogin:Z

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->isLogin:Z

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->hq:Z

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;Ljava/lang/String;Ljava/lang/String;FLcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 4

    new-instance v0, Lcom/anguotech/sdk/bean/PayInfo;

    invoke-direct {v0}, Lcom/anguotech/sdk/bean/PayInfo;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "kuaiyong.payid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anguotech/sdk/bean/PayInfo;->setGame(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/anguotech/sdk/bean/PayInfo;->setDealSeq(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/anguotech/sdk/bean/PayInfo;->setFee(F)V

    invoke-virtual {v0, p1}, Lcom/anguotech/sdk/bean/PayInfo;->setSubject(Ljava/lang/String;)V

    invoke-static {}, Lcom/anguotech/sdk/manager/AnGuoManager;->Instance()Lcom/anguotech/sdk/manager/AnGuoManager;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$4;

    invoke-direct {v2, p0, p2, p4}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$4;-><init>(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/anguotech/sdk/manager/AnGuoManager;->Pay(Lcom/anguotech/sdk/bean/PayInfo;Lcom/anguotech/sdk/interfaces/PayCallBack;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->isLogin:Z

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->hq:Z

    return v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->hq:Z

    return-void
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xsdk"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->hq:Z

    invoke-static {}, Lcom/anguotech/sdk/manager/AnGuoManager;->Instance()Lcom/anguotech/sdk/manager/AnGuoManager;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;-><init>(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0, v1}, Lcom/anguotech/sdk/manager/AnGuoManager;->Login(Lcom/anguotech/sdk/interfaces/LoginCallBack;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xsdk"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4xsdk"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "kuaiyong.appkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->appKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->isLogin:Z

    invoke-static {}, Lcom/anguotech/sdk/manager/AnGuoManager;->Instance()Lcom/anguotech/sdk/manager/AnGuoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->appKey:Ljava/lang/String;

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$1;

    invoke-direct {v2, p2}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$1;-><init>(Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/anguotech/sdk/manager/AnGuoManager;->Init(Landroid/content/Context;Ljava/lang/String;Lcom/anguotech/sdk/interfaces/InitCallBack;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4xsdk"

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

    const-string v0, "KunlunProxyStubImpl4xsdk"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xsdk"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xsdk"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xsdk"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->isLogin:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/anguotech/sdk/manager/AnGuoManager;->Instance()Lcom/anguotech/sdk/manager/AnGuoManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/anguotech/sdk/manager/AnGuoManager;->isShowBobble(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xsdk"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xsdk"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/anguotech/sdk/manager/AnGuoManager;->Instance()Lcom/anguotech/sdk/manager/AnGuoManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/anguotech/sdk/manager/AnGuoManager;->isShowBobble(Landroid/app/Activity;Z)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const-string v0, "KunlunProxyStubImpl4xsdk"

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

    const-string v6, "kuaiyong"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$3;-><init>(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;)V

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xsdk"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->hq:Z

    invoke-static {}, Lcom/anguotech/sdk/manager/AnGuoManager;->Instance()Lcom/anguotech/sdk/manager/AnGuoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anguotech/sdk/manager/AnGuoManager;->Logout()V

    return-void
.end method
