.class public Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field public appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 4

    new-instance v1, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;

    invoke-direct {v1}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;-><init>()V

    invoke-virtual {v1, p2}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->setCpOrderId(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->setCpUserInfo(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;->setMiBi(I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "roleId"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "serverName"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v2

    new-instance v3, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$3;

    invoke-direct {v3, p0, p2, p5, p1}, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$3;-><init>(Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Landroid/app/Activity;)V

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miUniPayOnline(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/entry/MiBuyInfoOnline;Landroid/os/Bundle;Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;)I

    return-void
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xiaomi"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$1;-><init>(Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->miLogin(Landroid/app/Activity;Lcom/xiaomi/gamecenter/sdk/OnLoginProcessListener;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xiaomi"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 4

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4xiaomi"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.xiaomi.isLandScape"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v0, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-direct {v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.xiaomi.appId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAppId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.xiaomi.appKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAppKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    sget-object v2, Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;->online:Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;

    invoke-virtual {v0, v2}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setAppType(Lcom/xiaomi/gamecenter/sdk/entry/MiAppType;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;->horizontal:Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    :goto_0
    invoke-virtual {v2, v0}, Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;->setOrientation(Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->appInfo:Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;

    invoke-static {v0, v2}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->Init(Landroid/content/Context;Lcom/xiaomi/gamecenter/sdk/entry/MiAppInfo;)V

    invoke-static {}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->getInstance()Lcom/xiaomi/gamecenter/sdk/MiCommplatform;

    move-result-object v2

    if-eqz v1, :cond_1

    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;->horizontal:Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    :goto_1
    invoke-virtual {v2, v0}, Lcom/xiaomi/gamecenter/sdk/MiCommplatform;->update_screen_orientation(Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;)V

    invoke-static {p1}, Lcom/xiaomi/market/sdk/XiaomiUpdateAgent;->update(Landroid/content/Context;)V

    const/4 v0, 0x0

    const-string v1, "finish"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;->vertical:Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;->vertical:Lcom/xiaomi/gamecenter/sdk/entry/ScreenOrientation;

    goto :goto_1
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4xiaomi"

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

    const-string v0, "KunlunProxyStubImpl4xiaomi"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xiaomi"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xiaomi"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xiaomi"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xiaomi"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xiaomi"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const-string v0, "KunlunProxyStubImpl4xiaomi"

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

    const-string v6, "xiaomi"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$2;-><init>(Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;)V

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xiaomi"

    const-string v1, "relogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method

.method public submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->mBundle:Landroid/os/Bundle;

    :cond_0
    const-string v0, "serverName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->mBundle:Landroid/os/Bundle;

    const-string v1, "serverName"

    const-string v2, "serverName"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "roleId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->mBundle:Landroid/os/Bundle;

    const-string v1, "roleId"

    const-string v2, "roleId"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "roleName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->mBundle:Landroid/os/Bundle;

    const-string v1, "roleName"

    const-string v2, "roleName"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "roleLevel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->mBundle:Landroid/os/Bundle;

    const-string v1, "lv"

    const-string v2, "roleLevel"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "balance"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->mBundle:Landroid/os/Bundle;

    const-string v1, "balance"

    const-string v2, "balance"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v0, "partyName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->mBundle:Landroid/os/Bundle;

    const-string v1, "partyName"

    const-string v2, "partyName"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v0, "vipLevel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->mBundle:Landroid/os/Bundle;

    const-string v1, "vip"

    const-string v2, "vipLevel"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunlunProxy;->setRoleInfo(Landroid/os/Bundle;)V

    return-void
.end method
