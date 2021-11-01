.class public Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private appid:Ljava/lang/String;

.field private et:Z

.field private eu:Z

.field private ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->et:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->eu:Z

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->appid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    div-int/lit8 v1, p2, 0x64

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "anfan/payinterface.php"

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    move-object v3, p4

    move-object v4, p3

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/anfeng/pay/AnFanPayMainFx;->toAnFanPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->eu:Z

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan$3;

    invoke-direct {v0, p0, p1}, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan$3;-><init>(Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/anfeng/pay/AnFanPayService;->setOnPaySuc(Lcom/anfeng/pay/AnFanPayService$OnPaySuc;)V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4anfan"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/anfeng/pay/AnFanPayMainFx;->anfanLogin(Landroid/app/Activity;)V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan$1;-><init>(Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v0}, Lcom/anfeng/pay/AnFanLogin;->setOnLoginSuc(Lcom/anfeng/pay/AnFanLogin$OnLoginSuc;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4anfan"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4anfan"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.anfan.paivate_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ANFAN_VID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->appid:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.isShowWindow"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.isShowWindow"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->et:Z

    :cond_0
    invoke-static {}, Lcom/anfeng/pay/AnFanUserInfo;->getInstance()Lcom/anfeng/pay/AnFanUserInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anfeng/pay/AnFanUserInfo;->setPrivateKey(Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "finish"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4anfan"

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

    const-string v0, "KunlunProxyStubImpl4anfan"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4anfan"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4anfan"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4anfan"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "KunlunProxyStubImpl4anfan"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->et:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/anfeng/pay/AnFanPayMainFx;->startWindow(Landroid/app/Activity;)V

    :cond_0
    const-string v0, "KunlunProxyStubImpl4anfan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResume isPayFinish:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->eu:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->eu:Z

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->eu:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "anfan payment onfinish"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4anfan"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->et:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/anfeng/pay/AnFanPayMainFx;->stopWindow(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4anfan"

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

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static {p1, p5, p6}, Lcom/kunlun/platform/android/Kunlun;->prepareSingleChannelPurchase(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    const-string v0, ""

    const-string v1, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "anfan"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan$2;-><init>(Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;I)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4anfan"

    const-string v1, "reLogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/anfeng/pay/AnFanPayMainFx;->anfanChange(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/anfan/KunlunProxyStubImpl4anfan;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
