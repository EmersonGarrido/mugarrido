.class public Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private activity:Landroid/app/Activity;

.field private fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private jA:Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

.field private jC:Lcom/sogou/gamecenter/sdk/views/FloatMenu;

.field private jD:Z

.field private jE:Lcom/sogou/gamecenter/sdk/bean/UserInfo;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/sogou/gamecenter/sdk/SogouGamePlatform;->getInstance()Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jA:Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jD:Z

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;-><init>(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/sogou/gamecenter/sdk/SogouGamePlatform;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jA:Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jA:Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    invoke-virtual {v0, p1}, Lcom/sogou/gamecenter/sdk/SogouGamePlatform;->getUserInfo(Landroid/content/Context;)Lcom/sogou/gamecenter/sdk/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sogou/gamecenter/sdk/bean/UserInfo;->isExpressUser()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$8;

    invoke-direct {v0, p0, p1}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$8;-><init>(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;Landroid/app/Activity;ILjava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "currency"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.sogou.goldName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "rate"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "product_name"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "amount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_data"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appmodes"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jA:Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$7;

    invoke-direct {v2, p0, p6, p1, p5}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$7;-><init>(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v0, v2}, Lcom/sogou/gamecenter/sdk/SogouGamePlatform;->pay(Landroid/content/Context;Ljava/util/Map;Lcom/sogou/gamecenter/sdk/listener/PayCallbackListener;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;Lcom/sogou/gamecenter/sdk/bean/UserInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jE:Lcom/sogou/gamecenter/sdk/bean/UserInfo;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;Lcom/sogou/gamecenter/sdk/views/FloatMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jC:Lcom/sogou/gamecenter/sdk/views/FloatMenu;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jD:Z

    return v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jD:Z

    return-void
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/sogou/gamecenter/sdk/views/FloatMenu;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jC:Lcom/sogou/gamecenter/sdk/views/FloatMenu;

    return-object v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic g(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.sogou.gid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jE:Lcom/sogou/gamecenter/sdk/bean/UserInfo;

    invoke-virtual {v2}, Lcom/sogou/gamecenter/sdk/bean/UserInfo;->getUserId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jE:Lcom/sogou/gamecenter/sdk/bean/UserInfo;

    invoke-virtual {v2}, Lcom/sogou/gamecenter/sdk/bean/UserInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sogou"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$4;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$4;-><init>(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method

.method static synthetic h(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic i(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sogou"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jA:Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$3;

    invoke-direct {v1, p0, p2}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$3;-><init>(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/sogou/gamecenter/sdk/SogouGamePlatform;->login(Landroid/content/Context;Lcom/sogou/gamecenter/sdk/listener/LoginCallbackListener;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sogou"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jA:Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$9;

    invoke-direct {v1, p1, p2}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$9;-><init>(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-virtual {v0, v1}, Lcom/sogou/gamecenter/sdk/SogouGamePlatform;->exit(Lcom/sogou/gamecenter/sdk/listener/OnExitListener;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->activity:Landroid/app/Activity;

    const-string v0, "KunlunProxyStubImpl4sogou"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jA:Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$2;

    invoke-direct {v1, p2}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$2;-><init>(Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/sogou/gamecenter/sdk/SogouGamePlatform;->init(Landroid/content/Context;Lcom/sogou/gamecenter/sdk/listener/InitCallbackListener;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4sogou"

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

    const-string v0, "KunlunProxyStubImpl4sogou"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sogou"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jA:Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sogou/gamecenter/sdk/SogouGamePlatform;->addRefreshUserListener(Lcom/sogou/gamecenter/sdk/listener/RefreshUserListener;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sogou"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sogou"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sogou"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sogou"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4sogou"

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

    const-string v7, "sogou"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$6;-><init>(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;I)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4sogou"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "reLogin"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->jA:Lcom/sogou/gamecenter/sdk/SogouGamePlatform;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$5;-><init>(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;Lcom/kunlun/platform/android/Kunlun$LoginListener;Landroid/app/Activity;)V

    invoke-virtual {v0, p1, v1}, Lcom/sogou/gamecenter/sdk/SogouGamePlatform;->switchUser(Landroid/content/Context;Lcom/sogou/gamecenter/sdk/listener/SwitchUserListener;)V

    return-void
.end method
