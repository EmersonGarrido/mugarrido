.class public Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private appid:Ljava/lang/String;

.field private appkey:Ljava/lang/String;

.field private ih:Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->appid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->appkey:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->uid:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    invoke-direct {v2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;-><init>()V

    invoke-virtual {v2, p4}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setBuyCount(I)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setCpUserInfo(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setOrderAmount(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setOrderId(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setPerPrice(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setProductBody(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setProductId(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setProductSubject(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setProductUnit(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "app_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "Kunlun.meizu.appid"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v5, "&buy_amount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, "&cp_order_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "&create_time="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&pay_type=0"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&product_body="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&product_id=1"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&product_per_price="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "&product_subject="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&product_unit="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&total_price="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "&uid="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->uid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "&user_info="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "Kunlun.meizu.appsecret"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v3, "KunlunProxyStubImpl4meizu"

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/kunlun/platform/android/KunlunUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setSign(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v2

    const-string v3, "MD5"

    invoke-virtual {v2, v3}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setSignType(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setCreateTime(J)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.meizu.appid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setAppid(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setUserUid(Ljava/lang/String;)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/gamecenter/sdk/MzBuyInfo;->setPayType(I)Lcom/meizu/gamecenter/sdk/MzBuyInfo;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$3;

    invoke-direct {v1, p0, p3, p5}, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$3;-><init>(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-static {p1, v0, v1}, Lcom/meizu/gamecenter/sdk/MzGameCenterPlatform;->payOnline(Landroid/app/Activity;Lcom/meizu/gamecenter/sdk/MzBuyInfo;Lcom/meizu/gamecenter/sdk/MzPayListener;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->uid:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->uid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meizu"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1;-><init>(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {p1, v0}, Lcom/meizu/gamecenter/sdk/MzGameCenterPlatform;->login(Landroid/app/Activity;Lcom/meizu/gamecenter/sdk/MzLoginListener;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meizu"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4meizu"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->ih:Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.meizu.appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->appid:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.meizu.appkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->appkey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->appid:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->appkey:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/meizu/gamecenter/sdk/MzGameCenterPlatform;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->ih:Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;->onActivityCreate()V

    const/4 v0, 0x0

    const-string v1, "init finish"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4meizu"

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

    const-string v0, "KunlunProxyStubImpl4meizu"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meizu"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/meizu/gamecenter/sdk/MzGameCenterPlatform;->logout(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->ih:Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;->onActivityDestroy()V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meizu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->ih:Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;->onActivityPause()V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meizu"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meizu"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->ih:Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;

    invoke-virtual {v0}, Lcom/meizu/gamecenter/sdk/MzGameBarPlatform;->onActivityResume()V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meizu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const-string v0, "KunlunProxyStubImpl4meizu"

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

    const-string v6, "meizu"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$2;-><init>(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;)V

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4meizu"

    const-string v1, "relogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "logout"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
