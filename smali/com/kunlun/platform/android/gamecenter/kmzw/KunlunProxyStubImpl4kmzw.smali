.class public Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private bW:Ljava/lang/String;

.field private dw:Lcom/kunlun/platform/android/Kunlun$initCallback;

.field private ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

.field private fN:Ljava/lang/String;

.field private gX:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

.field private hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

.field private hg:Ljava/lang/String;

.field private hh:Ljava/lang/String;

.field private hi:Lcom/hjr/sdkkit/framework/mw/openapi/callback/HJRSDKKitPlateformCallBack;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private roleId:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$1;-><init>(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hi:Lcom/hjr/sdkkit/framework/mw/openapi/callback/HJRSDKKitPlateformCallBack;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hg:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    new-instance v0, Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;

    invoke-direct {v0}, Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;-><init>()V

    const-string v1, "amount"

    invoke-virtual {v0, v1, p3}, Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;->putInt(Ljava/lang/String;I)V

    const-string v1, "product_num"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;->putInt(Ljava/lang/String;I)V

    const-string v1, "appOrderId"

    invoke-virtual {v0, v1, p2}, Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "productid"

    const/16 v2, 0x44d

    invoke-virtual {v0, v1, v2}, Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;->putInt(Ljava/lang/String;I)V

    const-string v1, "productName"

    invoke-virtual {v0, v1, p1}, Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serviceid"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "servicename"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->bW:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roleId"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roleName"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roleLevel"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->fN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appUserId"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appUserName"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hh:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "___"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "HJR_GAMEKEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    iget-object v1, v1, Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;->Business:Lcom/hjr/sdkkit/framework/mw/openapi/IHJRGWPlateformBusiness;

    invoke-interface {v1, v0}, Lcom/hjr/sdkkit/framework/mw/openapi/IHJRGWPlateformBusiness;->pay(Lcom/hjr/sdkkit/framework/mw/entity/ParamsContainer;)V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hh:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Lcom/kunlun/platform/android/Kunlun$initCallback;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->dw:Lcom/kunlun/platform/android/Kunlun$initCallback;

    return-object v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;)Lcom/kunlun/platform/android/Kunlun$ExitCallback;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->gX:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4kmzw"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    iget-object v0, v0, Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;->Business:Lcom/hjr/sdkkit/framework/mw/openapi/IHJRGWPlateformBusiness;

    invoke-interface {v0, p1}, Lcom/hjr/sdkkit/framework/mw/openapi/IHJRGWPlateformBusiness;->login(Landroid/app/Activity;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->gX:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    const-string v0, "KunlunProxyStubImpl4kmzw"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    iget-object v0, v0, Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;->Business:Lcom/hjr/sdkkit/framework/mw/openapi/IHJRGWPlateformBusiness;

    invoke-interface {v0, p1}, Lcom/hjr/sdkkit/framework/mw/openapi/IHJRGWPlateformBusiness;->exitGame(Landroid/app/Activity;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->dw:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const-string v0, "KunlunProxyStubImpl4kmzw"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hi:Lcom/hjr/sdkkit/framework/mw/openapi/callback/HJRSDKKitPlateformCallBack;

    invoke-static {v0}, Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;->initHJRPlateform(Lcom/hjr/sdkkit/framework/mw/openapi/callback/HJRSDKKitPlateformCallBack;)Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    iget-object v0, v0, Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;->Business:Lcom/hjr/sdkkit/framework/mw/openapi/IHJRGWPlateformBusiness;

    invoke-interface {v0, p1}, Lcom/hjr/sdkkit/framework/mw/openapi/IHJRGWPlateformBusiness;->init(Landroid/app/Activity;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4kmzw"

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

    const-string v0, "KunlunProxyStubImpl4kmzw"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4kmzw"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    iget-object v0, v0, Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;->LifeCycle:Lcom/hjr/sdkkit/framework/mw/openapi/IHJRPlateformLifeCycle;

    invoke-interface {v0}, Lcom/hjr/sdkkit/framework/mw/openapi/IHJRPlateformLifeCycle;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4kmzw"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    iget-object v0, v0, Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;->LifeCycle:Lcom/hjr/sdkkit/framework/mw/openapi/IHJRPlateformLifeCycle;

    invoke-interface {v0, p2}, Lcom/hjr/sdkkit/framework/mw/openapi/IHJRPlateformLifeCycle;->onNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4kmzw"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    iget-object v0, v0, Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;->LifeCycle:Lcom/hjr/sdkkit/framework/mw/openapi/IHJRPlateformLifeCycle;

    invoke-interface {v0}, Lcom/hjr/sdkkit/framework/mw/openapi/IHJRPlateformLifeCycle;->onPause()V

    :cond_0
    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4kmzw"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4kmzw"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    iget-object v0, v0, Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;->LifeCycle:Lcom/hjr/sdkkit/framework/mw/openapi/IHJRPlateformLifeCycle;

    invoke-interface {v0}, Lcom/hjr/sdkkit/framework/mw/openapi/IHJRPlateformLifeCycle;->onResume()V

    :cond_0
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4kmzw"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    iget-object v0, v0, Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;->LifeCycle:Lcom/hjr/sdkkit/framework/mw/openapi/IHJRPlateformLifeCycle;

    invoke-interface {v0}, Lcom/hjr/sdkkit/framework/mw/openapi/IHJRPlateformLifeCycle;->onStop()V

    :cond_0
    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const-string v0, "KunlunProxyStubImpl4kmzw"

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

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v6, "kmzw"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw$2;-><init>(Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;)V

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4kmzw"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->hf:Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;

    iget-object v0, v0, Lcom/hjr/sdkkit/framework/mw/openapi/HJRSDKKitPlateformCore;->Business:Lcom/hjr/sdkkit/framework/mw/openapi/IHJRGWPlateformBusiness;

    invoke-interface {v0}, Lcom/hjr/sdkkit/framework/mw/openapi/IHJRGWPlateformBusiness;->logout()V

    return-void
.end method

.method public submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    :try_start_0
    const-string v0, "roleId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "roleId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->roleId:Ljava/lang/String;

    :cond_0
    const-string v0, "roleName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "roleName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->roleName:Ljava/lang/String;

    :cond_1
    const-string v0, "roleLevel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "roleLevel"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->fN:Ljava/lang/String;

    :cond_2
    const-string v0, "serverId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "serverId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->serverId:Ljava/lang/String;

    :goto_0
    const-string v0, "serverName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "serverName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->bW:Ljava/lang/String;

    :goto_1
    return-void

    :cond_3
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->serverId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kmzw/KunlunProxyStubImpl4kmzw;->bW:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
