.class public Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private eP:Lcom/baidu/gamesdk/ActivityAnalytics;

.field private eQ:Lcom/baidu/gamesdk/ActivityAdPage;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;)V
    .locals 3

    new-instance v0, Lcom/baidu/gamesdk/ActivityAnalytics;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/baidu/gamesdk/ActivityAnalytics;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->eP:Lcom/baidu/gamesdk/ActivityAnalytics;

    new-instance v0, Lcom/baidu/gamesdk/ActivityAdPage;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mActivity:Landroid/app/Activity;

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$2;

    invoke-direct {v2}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$2;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/baidu/gamesdk/ActivityAdPage;-><init>(Landroid/app/Activity;Lcom/baidu/gamesdk/ActivityAdPage$Listener;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->eQ:Lcom/baidu/gamesdk/ActivityAdPage;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$3;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$3;-><init>(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;)V

    invoke-static {v0}, Lcom/baidu/gamesdk/BDGameSDK;->setSuspendWindowChangeAccountListener(Lcom/baidu/gamesdk/IResponse;)V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$4;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$4;-><init>(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;)V

    invoke-static {v0}, Lcom/baidu/gamesdk/BDGameSDK;->setSessionInvalidListener(Lcom/baidu/gamesdk/IResponse;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;I)V
    .locals 5

    const/16 v2, -0x65

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/baidu/gamesdk/BDGameSDK;->closeFloatView(Landroid/app/Activity;)V

    :cond_0
    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const-string v1, "\u767b\u5f55\u5931\u8d25"

    invoke-interface {v0, v2, v1, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const-string v1, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    invoke-interface {v0, v2, v1, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.baidu.appId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/gamesdk/BDGameSDK;->getLoginUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/gamesdk/BDGameSDK;->getLoginAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "platform\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "BDPlatformType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "version\":\"3.6.0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bdgamev3"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$6;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$6;-><init>(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x66

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x14 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 4

    new-instance v0, Lcom/baidu/platformsdk/PayOrderInfo;

    invoke-direct {v0}, Lcom/baidu/platformsdk/PayOrderInfo;-><init>()V

    invoke-virtual {v0, p5}, Lcom/baidu/platformsdk/PayOrderInfo;->setCooperatorOrderSerial(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/baidu/platformsdk/PayOrderInfo;->setProductName(Ljava/lang/String;)V

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Lcom/baidu/platformsdk/PayOrderInfo;->setTotalPriceCent(J)V

    invoke-virtual {v0, p4}, Lcom/baidu/platformsdk/PayOrderInfo;->setRatio(I)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/baidu/platformsdk/PayOrderInfo;->setExtInfo(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "bdgame/payinterfacev3.php"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$8;

    invoke-direct {v2, p0, p1, p6}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$8;-><init>(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-static {v0, v1, v2}, Lcom/baidu/gamesdk/BDGameSDK;->pay(Lcom/baidu/platformsdk/PayOrderInfo;Ljava/lang/String;Lcom/baidu/gamesdk/IResponse;)Z

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4baidu"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$5;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$5;-><init>(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;)V

    invoke-static {v0}, Lcom/baidu/gamesdk/BDGameSDK;->login(Lcom/baidu/gamesdk/IResponse;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4baidu"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$9;

    invoke-direct {v0, p2}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$9;-><init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-static {p1, v0}, Lcom/baidu/gamesdk/BDGameSDK;->gameExit(Landroid/content/Context;Lcom/baidu/gamesdk/OnGameExitListener;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 8

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4baidu"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.baidu.isLandScape"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "Kunlun.baidu.appId"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.baidu.appKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Kunlun.baidu.isDebug"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v4}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "Kunlun.baidu.isScreenRecord"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "Kunlun.baidu.oldAppid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "Kunlun.baidu.oldAppkey"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "Kunlun.baidu.oldAppid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "Kunlun.baidu.oldAppkey"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/gamesdk/BDGameSDK;->oldDKSdkSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/baidu/gamesdk/BDGameSDK;->closeFloatView(Landroid/app/Activity;)V

    new-instance v5, Lcom/baidu/gamesdk/BDGameSDKSetting;

    invoke-direct {v5}, Lcom/baidu/gamesdk/BDGameSDKSetting;-><init>()V

    invoke-virtual {v5, v0}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setAppID(I)V

    invoke-virtual {v5, v2}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setAppKey(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;->DEBUG:Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;

    :goto_0
    invoke-virtual {v5, v0}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setDomain(Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;)V

    if-eqz v1, :cond_2

    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->LANDSCAPE:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    :goto_1
    invoke-virtual {v5, v0}, Lcom/baidu/gamesdk/BDGameSDKSetting;->setOrientation(Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;)V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$1;

    invoke-direct {v0, p0, p1, v4, p2}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$1;-><init>(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;Landroid/app/Activity;ZLcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-static {p1, v5, v0}, Lcom/baidu/gamesdk/BDGameSDK;->init(Landroid/app/Activity;Lcom/baidu/gamesdk/BDGameSDKSetting;Lcom/baidu/gamesdk/IResponse;)V

    return-void

    :cond_1
    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;->RELEASE:Lcom/baidu/gamesdk/BDGameSDKSetting$Domain;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->PORTRAIT:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    goto :goto_1
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4baidu"

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

    const-string v0, "KunlunProxyStubImpl4baidu"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4baidu"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->eQ:Lcom/baidu/gamesdk/ActivityAdPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->eQ:Lcom/baidu/gamesdk/ActivityAdPage;

    invoke-virtual {v0}, Lcom/baidu/gamesdk/ActivityAdPage;->onDestroy()V

    :cond_0
    invoke-static {p1}, Lcom/baidu/gamesdk/BDGameSDK;->closeFloatView(Landroid/app/Activity;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4baidu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->eP:Lcom/baidu/gamesdk/ActivityAnalytics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->eP:Lcom/baidu/gamesdk/ActivityAnalytics;

    invoke-virtual {v0}, Lcom/baidu/gamesdk/ActivityAnalytics;->onPause()V

    :cond_0
    invoke-static {p1}, Lcom/baidu/gamesdk/BDGameSDK;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4baidu"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4baidu"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->eP:Lcom/baidu/gamesdk/ActivityAnalytics;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->eP:Lcom/baidu/gamesdk/ActivityAnalytics;

    invoke-virtual {v0}, Lcom/baidu/gamesdk/ActivityAnalytics;->onResume()V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->eQ:Lcom/baidu/gamesdk/ActivityAdPage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->eQ:Lcom/baidu/gamesdk/ActivityAdPage;

    invoke-virtual {v0}, Lcom/baidu/gamesdk/ActivityAdPage;->onResume()V

    :cond_1
    invoke-static {p1}, Lcom/baidu/gamesdk/BDGameSDK;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4baidu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->eQ:Lcom/baidu/gamesdk/ActivityAdPage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->eQ:Lcom/baidu/gamesdk/ActivityAdPage;

    invoke-virtual {v0}, Lcom/baidu/gamesdk/ActivityAdPage;->onStop()V

    :cond_0
    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4baidu"

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

    const-string v7, "bdgame"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$7;-><init>(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;II)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4baidu"

    const-string v1, "reLogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/baidu/gamesdk/BDGameSDK;->logout()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
