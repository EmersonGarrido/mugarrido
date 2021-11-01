.class public Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# static fields
.field private static fI:Ljava/lang/String;


# instance fields
.field private fF:I

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;)I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->fF:I

    return v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;Landroid/app/Activity;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 4

    invoke-static {}, Lcom/dh/paysdk/DHPaySDKHelper;->getInstance()Lcom/dh/paysdk/DHPaySDKHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.debugMode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dh/paysdk/DHPaySDKHelper;->setSDKTest(Z)V

    new-instance v0, Lcom/dh/paysdk/entities/CPayInfo;

    invoke-direct {v0}, Lcom/dh/paysdk/entities/CPayInfo;-><init>()V

    iget v1, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->fF:I

    invoke-virtual {v0, v1}, Lcom/dh/paysdk/entities/CPayInfo;->setAppId(I)V

    sget-object v1, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->fI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dh/paysdk/entities/CPayInfo;->setUid(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/dh/paysdk/entities/CPayInfo;->setAmount(I)V

    invoke-virtual {v0, p3}, Lcom/dh/paysdk/entities/CPayInfo;->setCpOrderId(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/dh/paysdk/DHPaySDKHelper;->getInstance()Lcom/dh/paysdk/DHPaySDKHelper;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$3;

    invoke-direct {v2, p0, p3, p4, p1}, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$3;-><init>(Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Landroid/app/Activity;)V

    invoke-virtual {v1, p1, v2, v0}, Lcom/dh/paysdk/DHPaySDKHelper;->Pay(Landroid/app/Activity;Lcom/dh/paysdk/listening/PayListening;Lcom/dh/paysdk/entities/CPayInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KunlunProxyStubImpl4dianhun2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dianhun onPayment:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dianhun onPayment:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v1, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic bO()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->fI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->fI:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4dianhun2"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/dh/loginsdk/DHLoginSDKHelper;->getInstance()Lcom/dh/loginsdk/DHLoginSDKHelper;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$1;-><init>(Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/dh/loginsdk/DHLoginSDKHelper;->OpenLogin(Landroid/app/Activity;Lcom/dh/loginsdk/listener/LoginListening;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4dianhun2"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 4

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4dianhun2"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.dianhun.appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->fF:I

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.dianhun.secretKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.dianhun.regCode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/dh/loginsdk/DHLoginSDKHelper;->getInstance()Lcom/dh/loginsdk/DHLoginSDKHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/dh/loginsdk/DHLoginSDKHelper;->getLoginSDKConfig()Lcom/dh/loginsdk/entities/LoginSDKConfig;

    move-result-object v2

    iget v3, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->fF:I

    invoke-virtual {v2, v3}, Lcom/dh/loginsdk/entities/LoginSDKConfig;->setAppId(I)V

    invoke-virtual {v2, v0}, Lcom/dh/loginsdk/entities/LoginSDKConfig;->setAppKey(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/dh/loginsdk/entities/LoginSDKConfig;->setRegCode(Ljava/lang/String;)V

    invoke-static {}, Lcom/dh/loginsdk/DHLoginSDKHelper;->getInstance()Lcom/dh/loginsdk/DHLoginSDKHelper;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/dh/loginsdk/DHLoginSDKHelper;->setLoginConfig(Landroid/content/Context;Lcom/dh/loginsdk/entities/LoginSDKConfig;)V

    const/4 v0, 0x0

    const-string v1, "success"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4dianhun2"

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

    const-string v0, "KunlunProxyStubImpl4dianhun2"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4dianhun2"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4dianhun2"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4dianhun2"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4dianhun2"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4dianhun2"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const-string v0, "KunlunProxyStubImpl4dianhun2"

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

    const-string v6, "dianhun"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$2;-><init>(Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;)V

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
