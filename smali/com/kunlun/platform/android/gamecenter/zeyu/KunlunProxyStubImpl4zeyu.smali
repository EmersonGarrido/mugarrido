.class public Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private kY:Ljava/lang/Integer;

.field private kZ:Ljava/lang/Integer;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private la:Lcom/zeyu/sdk/ui/view/ToolBar;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;Landroid/app/Activity;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;

    invoke-direct {v0, p0, p1}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$4;-><init>(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 9

    invoke-static {p1}, Lcom/zeyu/sdk/ZeyuSDK;->getInstance(Landroid/content/Context;)Lcom/zeyu/sdk/ZeyuSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->kZ:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "___"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->kY:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v6, 0x0

    new-instance v8, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$6;

    invoke-direct {v8, p6}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$6;-><init>(Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    move v4, p3

    move v5, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v8}, Lcom/zeyu/sdk/ZeyuSDK;->fixedPurchase(ILjava/lang/String;IIIILjava/lang/String;Lcom/zeyu/sdk/ZeyuSDKPurchaseListener;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;Lcom/zeyu/sdk/object/ZeyuUserInfo;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zeyu/sdk/object/ZeyuUserInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zeyu/sdk/object/ZeyuUserInfo;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zeyu"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->mActivity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$3;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$3;-><init>(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;Lcom/zeyu/sdk/ui/view/ToolBar;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->la:Lcom/zeyu/sdk/ui/view/ToolBar;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;)Lcom/zeyu/sdk/ui/view/ToolBar;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->la:Lcom/zeyu/sdk/ui/view/ToolBar;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4zeyu"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {p1}, Lcom/zeyu/sdk/ZeyuSDK;->getInstance(Landroid/content/Context;)Lcom/zeyu/sdk/ZeyuSDK;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$2;

    invoke-direct {v1, p0, p2}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$2;-><init>(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0, v1}, Lcom/zeyu/sdk/ZeyuSDK;->login(Lcom/zeyu/sdk/ZeyuSDKLoginListener;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4zeyu"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kunlun/platform/widget/KunlunDialog;

    invoke-direct {v0, p1}, Lcom/kunlun/platform/widget/KunlunDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "\u60a8\u786e\u5b9a\u8981\u9000\u51fa\u6e38\u620f\u5417\uff1f"

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/widget/KunlunDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$7;

    invoke-direct {v2, p1, p2}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$7;-><init>(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunDialog;->show()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4zeyu"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/zeyu/sdk/ZeyuSDK;->getInstance(Landroid/content/Context;)Lcom/zeyu/sdk/ZeyuSDK;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$1;

    invoke-direct {v1, p2}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$1;-><init>(Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-virtual {v0, v1}, Lcom/zeyu/sdk/ZeyuSDK;->init(Lcom/zeyu/sdk/ZeyuSDKInitListener;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4zeyu"

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

    const-string v0, "KunlunProxyStubImpl4zeyu"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4zeyu"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->la:Lcom/zeyu/sdk/ui/view/ToolBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->la:Lcom/zeyu/sdk/ui/view/ToolBar;

    invoke-virtual {v0}, Lcom/zeyu/sdk/ui/view/ToolBar;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->la:Lcom/zeyu/sdk/ui/view/ToolBar;

    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4zeyu"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4zeyu"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4zeyu"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4zeyu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4zeyu"

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

    const-string v7, "zeyu"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu$5;-><init>(Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;IILjava/lang/String;)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4zeyu"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "onForceReLogin"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method

.method public setKunlunServerId(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/zeyu/sdk/ZeyuSDK;->getInstance(Landroid/content/Context;)Lcom/zeyu/sdk/ZeyuSDK;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zeyu/sdk/ZeyuSDK;->reportServerLogin(I)V

    return-void
.end method

.method public submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "roleId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "roleId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->kY:Ljava/lang/Integer;

    :cond_0
    const-string v0, "serverId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "serverId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zeyu/KunlunProxyStubImpl4zeyu;->kZ:Ljava/lang/Integer;

    :cond_1
    return-void
.end method
