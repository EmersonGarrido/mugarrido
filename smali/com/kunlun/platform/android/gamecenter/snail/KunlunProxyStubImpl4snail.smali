.class public Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field public appInfo:Lcom/snailgame/mobilesdk/entry/SnailAppInfo;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 5

    new-instance v0, Lcom/snailgame/mobilesdk/entry/SnailBuyInfo;

    invoke-direct {v0}, Lcom/snailgame/mobilesdk/entry/SnailBuyInfo;-><init>()V

    invoke-virtual {v0, p2}, Lcom/snailgame/mobilesdk/entry/SnailBuyInfo;->setSerial(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    div-int/2addr v1, p5

    mul-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snailgame/mobilesdk/entry/SnailBuyInfo;->setProductId(Ljava/lang/String;)V

    const-string v1, "KunlunProxyStubImpl4snail"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    div-int/2addr v3, p5

    mul-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "productid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/snailgame/mobilesdk/entry/SnailBuyInfo;->setProductName(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/snailgame/mobilesdk/entry/SnailBuyInfo;->setProductPrice(D)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "productId\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Kunlun.productId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snailgame/mobilesdk/entry/SnailBuyInfo;->setPayDescription(Ljava/lang/String;)V

    invoke-static {}, Lcom/snailgame/mobilesdk/SnailCommplatform;->getInstance()Lcom/snailgame/mobilesdk/SnailCommplatform;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$4;

    invoke-direct {v2, p0, p2, p1, p6}, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$4;-><init>(Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;Ljava/lang/String;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-virtual {v1, v0, p1, v2}, Lcom/snailgame/mobilesdk/SnailCommplatform;->snailUniPay(Lcom/snailgame/mobilesdk/entry/SnailBuyInfo;Landroid/content/Context;Lcom/snailgame/mobilesdk/OnPayProcessListener;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "KunlunProxyStubImpl4snail"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "pay failed payError is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4snail"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/snailgame/mobilesdk/SnailCommplatform;->getInstance()Lcom/snailgame/mobilesdk/SnailCommplatform;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$2;-><init>(Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/snailgame/mobilesdk/SnailCommplatform;->snailLogin(Landroid/content/Context;Lcom/snailgame/mobilesdk/OnLoginProcessListener;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4snail"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 4

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4snail"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.xiaomi.isLandScape"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Lcom/snailgame/mobilesdk/entry/SnailAppInfo;

    invoke-direct {v1}, Lcom/snailgame/mobilesdk/entry/SnailAppInfo;-><init>()V

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->appInfo:Lcom/snailgame/mobilesdk/entry/SnailAppInfo;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->appInfo:Lcom/snailgame/mobilesdk/entry/SnailAppInfo;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.snail.appId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/snailgame/mobilesdk/entry/SnailAppInfo;->setAppId(I)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->appInfo:Lcom/snailgame/mobilesdk/entry/SnailAppInfo;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.snail.appKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snailgame/mobilesdk/entry/SnailAppInfo;->setAppKey(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/snailgame/mobilesdk/SnailCommplatform;->getInstance()Lcom/snailgame/mobilesdk/SnailCommplatform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/snailgame/mobilesdk/SnailCommplatform;->snailSetScreenOrientation(I)V

    invoke-static {}, Lcom/snailgame/mobilesdk/SnailCommplatform;->getInstance()Lcom/snailgame/mobilesdk/SnailCommplatform;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->appInfo:Lcom/snailgame/mobilesdk/entry/SnailAppInfo;

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$1;

    invoke-direct {v2, p2}, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$1;-><init>(Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/snailgame/mobilesdk/SnailCommplatform;->snailInit(Landroid/app/Activity;Lcom/snailgame/mobilesdk/entry/SnailAppInfo;Lcom/snailgame/mobilesdk/OnInitCompleteListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4snail"

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

    const-string v0, "KunlunProxyStubImpl4snail"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    invoke-static {}, Lcom/snailgame/mobilesdk/SnailCommplatform;->getInstance()Lcom/snailgame/mobilesdk/SnailCommplatform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snailgame/mobilesdk/SnailCommplatform;->destoryFloatView(Landroid/app/Activity;)V

    const-string v0, "KunlunProxyStubImpl4snail"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4snail"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/snailgame/mobilesdk/SnailCommplatform;->getInstance()Lcom/snailgame/mobilesdk/SnailCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snailgame/mobilesdk/SnailCommplatform;->snailOnPause()V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4snail"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4snail"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/snailgame/mobilesdk/SnailCommplatform;->getInstance()Lcom/snailgame/mobilesdk/SnailCommplatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snailgame/mobilesdk/SnailCommplatform;->snailOnResume()V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4snail"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4snail"

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

    const-string v7, "snail"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$3;-><init>(Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;I)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4snail"

    const-string v1, "relogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/snailgame/mobilesdk/SnailCommplatform;->getInstance()Lcom/snailgame/mobilesdk/SnailCommplatform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/snailgame/mobilesdk/SnailCommplatform;->snailLogout(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
