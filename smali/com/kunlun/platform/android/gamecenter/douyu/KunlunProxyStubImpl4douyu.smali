.class public Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private fL:Ljava/lang/String;

.field private fM:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

.field private fN:Ljava/lang/String;

.field private fO:I

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private roleName:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->uid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->roleName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fN:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;Landroid/app/Activity;Ljava/lang/String;DILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 5

    iput-object p7, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fM:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    new-instance v0, Lcom/android/douyu/gamesdk/act/bean/OrderInformation;

    invoke-direct {v0}, Lcom/android/douyu/gamesdk/act/bean/OrderInformation;-><init>()V

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/douyu/gamesdk/act/bean/OrderInformation;->setPayMoney(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/douyu/gamesdk/act/bean/OrderInformation;->setRoleName(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/douyu/gamesdk/act/bean/OrderInformation;->setZoneId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/douyu/gamesdk/act/bean/OrderInformation;->setUid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/douyu/gamesdk/act/bean/OrderInformation;->setRoleLevel(Ljava/lang/String;)V

    int-to-double v2, p5

    mul-double/2addr v2, p3

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/douyu/gamesdk/act/bean/OrderInformation;->setGameGold(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/douyu/gamesdk/act/bean/OrderInformation;->setPaySubject(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/douyu/gamesdk/act/bean/OrderInformation;->setPayBody(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "___"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fO:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/douyu/gamesdk/act/bean/OrderInformation;->setCustomInfo(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/douyu/gamesdk/act/platform/DouyuPlatform;->showPayView(Landroid/app/Activity;Lcom/android/douyu/gamesdk/act/bean/OrderInformation;)V

    return-void
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4douyu"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {p1}, Lcom/android/douyu/gamesdk/act/platform/DouyuPlatform;->login(Landroid/app/Activity;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4douyu"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4douyu"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "\u6b63\u5728\u521d\u59cb\u5316\u8d44\u6e90"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.douyu.gameid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fO:I

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$1;

    invoke-direct {v0, p2}, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$1;-><init>(Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-static {p1, v0}, Lcom/android/douyu/gamesdk/act/platform/DouyuPlatform;->init(Landroid/content/Context;Lcom/android/douyu/gamesdk/act/callback/DYSDKInitCallBack;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/douyu/gamesdk/act/platform/DouyuPlatform;->setTestMode(Z)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v3, -0x68

    const-string v0, "KunlunProxyStubImpl4douyu"

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

    sget v0, Lcom/android/douyu/gamesdk/act/platform/DouyuPlatform;->PLAY_RESULT_CODE:I

    if-ne p3, v0, :cond_2

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/android/douyu/gamesdk/act/platform/DouyuPlatform;->PLAY_RESULT_STATUS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const-string v1, ""

    invoke-interface {v0, v5, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fM:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "douyu onPaymentCompleted"

    invoke-interface {v0, v5, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fM:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x2

    const-string v2, "douyu onPayment error"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fM:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "douyu onPayment cancle"

    invoke-interface {v0, v4, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fM:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "douyu onPayment cancle"

    invoke-interface {v0, v4, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "session"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fL:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fL:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sid\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "game_id\":\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fO:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "douyu"

    const-string v2, ""

    const-string v3, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v2, v3}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v2

    new-instance v3, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$3;

    invoke-direct {v3, p0}, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$3;-><init>(Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const-string v1, "login error"

    invoke-interface {v0, v3, v1, v6}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const-string v1, "login error"

    invoke-interface {v0, v3, v1, v6}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4douyu"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4douyu"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4douyu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4douyu"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4douyu"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4douyu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4douyu"

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

    const-string v7, "douyu"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu$2;-><init>(Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;I)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4douyu"

    const-string v1, "relogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/android/douyu/gamesdk/act/platform/DouyuPlatform;->login(Landroid/app/Activity;)V

    return-void
.end method

.method public submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6

    const/4 v3, 0x0

    new-instance v0, Lcom/android/douyu/gamesdk/act/bean/GameUser;

    invoke-direct {v0}, Lcom/android/douyu/gamesdk/act/bean/GameUser;-><init>()V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUname()Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->uid:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->uid:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->uid:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/douyu/gamesdk/act/bean/GameUser;->setUid(Ljava/lang/String;)V

    const-string v1, "roleName"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->roleName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/douyu/gamesdk/act/bean/GameUser;->setRoleName(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/douyu/gamesdk/act/bean/GameUser;->setZoneID(Ljava/lang/String;)V

    const-string v1, "roleLevel"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fN:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/douyu/KunlunProxyStubImpl4douyu;->fN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/douyu/gamesdk/act/bean/GameUser;->setRoleLevel(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/douyu/gamesdk/act/bean/GameUser;->setLoginTime(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/douyu/gamesdk/act/platform/DouyuPlatform;->startGame(Lcom/android/douyu/gamesdk/act/bean/GameUser;)V

    return-void
.end method
