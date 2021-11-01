.class public Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcn/xxwan/sdkall/frame/eneity/XXWanSDKPayInfo;

    invoke-direct {v0}, Lcn/xxwan/sdkall/frame/eneity/XXWanSDKPayInfo;-><init>()V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v2, "roleId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/xxwan/sdkall/frame/eneity/XXWanSDKPayInfo;->setRoleId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v2, "roleName"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/xxwan/sdkall/frame/eneity/XXWanSDKPayInfo;->setRoleName(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v2, "serverId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/xxwan/sdkall/frame/eneity/XXWanSDKPayInfo;->setServerId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcn/xxwan/sdkall/frame/eneity/XXWanSDKPayInfo;->setCallBackInfo(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcn/xxwan/sdkall/frame/eneity/XXWanSDKPayInfo;->setAmount(I)V

    invoke-virtual {v0, v3}, Lcn/xxwan/sdkall/frame/eneity/XXWanSDKPayInfo;->setFixed(Z)V

    new-array v1, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "xxwan/payinterface.php"

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/xxwan/sdkall/frame/eneity/XXWanSDKPayInfo;->setCallbackURL(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->getInstance(Landroid/app/Activity;)Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->showPayView(Landroid/app/Activity;Lcn/xxwan/sdkall/frame/eneity/XXWanSDKPayInfo;)V

    return-void
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4xxwan"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->getInstance(Landroid/app/Activity;)Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$2;-><init>(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;Lcom/kunlun/platform/android/Kunlun$LoginListener;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->setMloginListener(Lcn/xxwan/sdkall/frame/listener/OnXXwanAPiListener;)V

    new-instance v0, Lcn/xxwan/sdkall/frame/eneity/XXWanSDKLoginInfo;

    invoke-direct {v0}, Lcn/xxwan/sdkall/frame/eneity/XXWanSDKLoginInfo;-><init>()V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "XXWAN_GAME_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/xxwan/sdkall/frame/eneity/XXWanSDKLoginInfo;->setGameId(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.xxwan.serverId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/xxwan/sdkall/frame/eneity/XXWanSDKLoginInfo;->setServerId(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->getInstance(Landroid/app/Activity;)Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->showLoginView(Landroid/app/Activity;Lcn/xxwan/sdkall/frame/eneity/XXWanSDKLoginInfo;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xxwan"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->getInstance(Landroid/app/Activity;)Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$4;

    invoke-direct {v1, p2}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$4;-><init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-virtual {v0, v1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->setMexitListener(Lcn/xxwan/sdkall/frame/listener/OnXXwanAPiListener;)V

    invoke-static {p1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->getInstance(Landroid/app/Activity;)Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->showExitView(Landroid/app/Activity;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4xxwan"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.xxwan.platfromId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;-><init>(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-static {p1, v0, v1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->initSdk(Landroid/content/Context;ILcn/xxwan/sdkall/frame/listener/OnXXwanAPiListener;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4xxwan"

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

    const-string v0, "KunlunProxyStubImpl4xxwan"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xxwan"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->getInstance(Landroid/app/Activity;)Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->doDestoryOut(Landroid/app/Activity;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xxwan"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->getInstance(Landroid/app/Activity;)Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->handlerToolFloat(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xxwan"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xxwan"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->getInstance(Landroid/app/Activity;)Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcn/xxwan/sdkall/mx/XXwanSdkAllManager;->handlerToolFloat(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xxwan"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4xxwan"

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

    const-string v0, "xxwan"

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;

    invoke-direct {v1, p0, p1, p6, p3}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;-><init>(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;I)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xxwan"

    const-string v1, "relogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method
