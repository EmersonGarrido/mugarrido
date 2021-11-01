.class public Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private app_id:Ljava/lang/String;

.field private app_key:Ljava/lang/String;

.field private bW:Ljava/lang/String;

.field private eY:Lcom/bsgamesdk/android/BSGameSdk;

.field private eZ:Ljava/lang/String;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mHandler:Landroid/os/Handler;

.field private merchant_id:Ljava/lang/String;

.field private roleId:Ljava/lang/String;

.field private roleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$1;

    invoke-direct {v0}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$1;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 14

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUname()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->eY:Lcom/bsgamesdk/android/BSGameSdk;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->roleName:Ljava/lang/String;

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->eZ:Ljava/lang/String;

    const-string v12, "extension_info"

    new-instance v13, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {v13, p0, v0, p1, v1}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;-><init>(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;Ljava/lang/String;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    move/from16 v7, p3

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p2

    move-object/from16 v11, p2

    invoke-virtual/range {v2 .. v13}, Lcom/bsgamesdk/android/BSGameSdk;->pay(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;)V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->merchant_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->eZ:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mzw"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->eY:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$3;-><init>(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/BSGameSdk;->login(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mzw"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 7

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4mzw"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.bili.merchantId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->merchant_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.bili.appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->app_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.bili.serverId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->eZ:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.bili.appKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->app_key:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.debugMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->merchant_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->app_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->eZ:Ljava/lang/String;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->app_key:Ljava/lang/String;

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->mHandler:Landroid/os/Handler;

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/bsgamesdk/android/BSGameSdk;->initialize(ZLandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Lcom/bsgamesdk/android/BSGameSdk;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->eY:Lcom/bsgamesdk/android/BSGameSdk;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->eY:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$2;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$2;-><init>(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;)V

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/BSGameSdk;->setAccountListener(Lcom/bsgamesdk/android/callbacklistener/AccountCallBackListener;)V

    const/4 v0, 0x0

    const-string v1, "\u521d\u59cb\u5316\u5b8c\u6210"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4mzw"

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

    const-string v0, "KunlunProxyStubImpl4mzw"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mzw"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mzw"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mzw"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mzw"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mzw"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4mzw"

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

    const-string v7, "bili"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$5;-><init>(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;II)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mzw"

    const-string v1, "relogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->eY:Lcom/bsgamesdk/android/BSGameSdk;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$4;-><init>(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0, v1}, Lcom/bsgamesdk/android/BSGameSdk;->logout(Lcom/bsgamesdk/android/callbacklistener/CallbackListener;)V

    return-void
.end method

.method public submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "roleId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->roleId:Ljava/lang/String;

    const-string v0, "serverName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->bW:Ljava/lang/String;

    const-string v0, "roleName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->roleName:Ljava/lang/String;

    const-string v0, "serverId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->eZ:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->eY:Lcom/bsgamesdk/android/BSGameSdk;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->eZ:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->bW:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->roleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bsgamesdk/android/BSGameSdk;->notifyZone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
