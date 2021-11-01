.class public Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private fN:Ljava/lang/String;

.field private ht:Lcom/kugou/game/sdk/ui/widget/ToolBar;

.field private hu:Lcom/kugou/game/sdk/api/common/OnPlatformEventListener;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private roleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->roleName:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->fN:Ljava/lang/String;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;-><init>(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->hu:Lcom/kugou/game/sdk/api/common/OnPlatformEventListener;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;Landroid/app/Activity;ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v1, "roleName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    new-instance v1, Lcom/kugou/game/sdk/api/common/KGPayInfo;

    invoke-direct {v1}, Lcom/kugou/game/sdk/api/common/KGPayInfo;-><init>()V

    invoke-virtual {v1, v0}, Lcom/kugou/game/sdk/api/common/KGPayInfo;->setRoleName(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/kugou/game/sdk/api/common/KGPayInfo;->setOrderId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->bP()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/kugou/game/sdk/api/common/KGPayInfo;->setServerId(I)V

    invoke-virtual {v1, p3}, Lcom/kugou/game/sdk/api/common/KGPayInfo;->setExtension1(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getProductId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/kugou/game/sdk/api/common/KGPayInfo;->setExtension2(Ljava/lang/String;)V

    invoke-static {p1, v1, p2}, Lcom/kugou/game/sdk/api/online/KGPlatform;->enterRechargeCenter(Landroid/app/Activity;Lcom/kugou/game/sdk/api/common/KGPayInfo;I)V

    return-void

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 5

    invoke-static {}, Lcom/kugou/game/sdk/api/online/KGPlatform;->getCurrentUser()Lcom/kugou/game/sdk/api/common/User;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, -0x64

    const-string v1, "\u767b\u5f55\u5931\u8d25"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appid\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Kunlun.kugou.AppId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uname\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kugou/game/sdk/api/common/User;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "time\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kugou/game/sdk/api/common/User;->getUnixTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "token\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kugou/game/sdk/api/common/User;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kugou"

    const-string v2, ""

    const-string v3, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v2, v3}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v2

    new-instance v3, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$2;

    invoke-direct {v3, p0, p2}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$2;-><init>(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;Lcom/kugou/game/sdk/ui/widget/ToolBar;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->ht:Lcom/kugou/game/sdk/ui/widget/ToolBar;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method private bP()I
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.kugou.serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.kugou.serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic bQ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic bR()Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic bS()V
    .locals 0

    return-void
.end method

.method static synthetic bT()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Lcom/kugou/game/sdk/ui/widget/ToolBar;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->ht:Lcom/kugou/game/sdk/ui/widget/ToolBar;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4kugou"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {p1}, Lcom/kugou/game/sdk/api/online/KGPlatform;->enterGame(Landroid/app/Activity;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4kugou"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->roleName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->fN:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$4;

    invoke-direct {v2, p2}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$4;-><init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-static {p1, v0, v1, v2}, Lcom/kugou/game/sdk/api/online/KGPlatform;->exitGame(Landroid/app/Activity;Ljava/lang/String;ILcom/kugou/game/sdk/api/common/OnExitListener;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 12

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4kugou"

    const-string v3, "init"

    invoke-static {v0, v3}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "Kunlun.kugou.MerchantId"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Kunlun.kugou.AppId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v4}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "Kunlun.kugou.AppKey"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "Kunlun.kugou.GameId"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v6}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "Kunlun.kugou.code"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v7}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "Kunlun.kugou.isPortrait"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iget-object v8, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v8}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "Kunlun.debugMode"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-static {v8}, Lcom/kugou/game/sdk/api/online/KGPlatform;->setDebugMode(Z)V

    new-instance v8, Lcom/kugou/game/sdk/api/online/OnlineConfig;

    invoke-direct {v8}, Lcom/kugou/game/sdk/api/online/OnlineConfig;-><init>()V

    invoke-virtual {v8, v0}, Lcom/kugou/game/sdk/api/online/OnlineConfig;->setMerchantId(I)V

    int-to-long v10, v3

    invoke-virtual {v8, v10, v11}, Lcom/kugou/game/sdk/api/online/OnlineConfig;->setAppId(J)V

    invoke-virtual {v8, v4}, Lcom/kugou/game/sdk/api/online/OnlineConfig;->setAppKey(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Lcom/kugou/game/sdk/api/online/OnlineConfig;->setGameId(I)V

    invoke-virtual {v8, v1}, Lcom/kugou/game/sdk/api/online/OnlineConfig;->setChannelId(I)V

    invoke-virtual {v8, v6}, Lcom/kugou/game/sdk/api/online/OnlineConfig;->setCode(Ljava/lang/String;)V

    if-eqz v7, :cond_1

    invoke-virtual {v8, v2}, Lcom/kugou/game/sdk/api/online/OnlineConfig;->setActivityOrientation(I)V

    :goto_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "Kunlun.kugou.notFullScreen"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v8, v0}, Lcom/kugou/game/sdk/api/online/OnlineConfig;->setFullScreen(Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "Kunlun.kugou.notNeedRestartWhenAccountChanged"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v8, v0}, Lcom/kugou/game/sdk/api/online/OnlineConfig;->setNeedRestartWhenAccountChanged(Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "Kunlun.kugou.hidePayModule"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/kugou/game/sdk/api/online/OnlineConfig;->setNeedHidePayModule(Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "Kunlun.kugou.hideGameCenter"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/kugou/game/sdk/api/online/OnlineConfig;->setNeedHideGameCenter(Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "Kunlun.kugou.notPushMessage"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v8, v0}, Lcom/kugou/game/sdk/api/online/OnlineConfig;->setPushMessage(Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "Kunlun.kugou.notSupportForceUpdate"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v8, v2}, Lcom/kugou/game/sdk/api/online/OnlineConfig;->setSupportForceUpdate(Z)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->hu:Lcom/kugou/game/sdk/api/common/OnPlatformEventListener;

    invoke-static {v0, v8, v2}, Lcom/kugou/game/sdk/api/online/KGPlatform;->init(Landroid/content/Context;Lcom/kugou/game/sdk/api/common/BaseSDKConfig;Lcom/kugou/game/sdk/api/common/OnPlatformEventListener;)V

    const-string v0, "finish"

    invoke-interface {p2, v1, v0}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v8, v1}, Lcom/kugou/game/sdk/api/online/OnlineConfig;->setActivityOrientation(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4kugou"

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

    const-string v0, "KunlunProxyStubImpl4kugou"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4kugou"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->ht:Lcom/kugou/game/sdk/ui/widget/ToolBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->ht:Lcom/kugou/game/sdk/ui/widget/ToolBar;

    invoke-virtual {v0}, Lcom/kugou/game/sdk/ui/widget/ToolBar;->hide()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->ht:Lcom/kugou/game/sdk/ui/widget/ToolBar;

    invoke-virtual {v0}, Lcom/kugou/game/sdk/ui/widget/ToolBar;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->ht:Lcom/kugou/game/sdk/ui/widget/ToolBar;

    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4kugou"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->ht:Lcom/kugou/game/sdk/ui/widget/ToolBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->ht:Lcom/kugou/game/sdk/ui/widget/ToolBar;

    invoke-virtual {v0}, Lcom/kugou/game/sdk/ui/widget/ToolBar;->hide()V

    :cond_0
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4kugou"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4kugou"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->ht:Lcom/kugou/game/sdk/ui/widget/ToolBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->ht:Lcom/kugou/game/sdk/ui/widget/ToolBar;

    invoke-virtual {v0}, Lcom/kugou/game/sdk/ui/widget/ToolBar;->show()V

    :cond_0
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4kugou"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4kugou"

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

    const-string v7, "kugou"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$3;-><init>(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;II)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4kugou"

    const-string v1, "reLogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kugou/game/sdk/api/online/KGPlatform;->enterUserCenter(Landroid/app/Activity;)V

    return-void
.end method

.method public submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "roleName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "roleName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->roleName:Ljava/lang/String;

    :cond_0
    const-string v0, "roleLevel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "roleLevel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->fN:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->roleName:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->fN:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->bP()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kugou/game/sdk/api/online/KGPlatform;->sendEnterGameStatics(Ljava/lang/String;II)V

    return-void
.end method
