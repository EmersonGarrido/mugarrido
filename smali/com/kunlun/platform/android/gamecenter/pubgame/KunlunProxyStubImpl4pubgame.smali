.class public Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;
    }
.end annotation


# instance fields
.field private dw:Lcom/kunlun/platform/android/Kunlun$initCallback;

.field private ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

.field private gH:Ljava/lang/String;

.field private ja:Ljava/lang/String;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private roleId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)Lcom/kunlun/platform/android/Kunlun$initCallback;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->dw:Lcom/kunlun/platform/android/Kunlun$initCallback;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->ja:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4pubgame"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v0, 0x64

    invoke-static {p1, v0}, Lcom/pubgame/sdk/base/dex/PubgameSDK;->login(Landroid/app/Activity;I)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4pubgame"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->dw:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const-string v0, "KunlunProxyStubImpl4pubgame"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pubgame.gameCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->gH:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.location"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Lcom/pubgame/sdk/base/dex/PubgameSDK;->init(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/pubgame/sdk/base/dex/PubgameSDK;->initPGTools(Landroid/app/Activity;)V

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;

    invoke-direct {v0, p0, v2}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;-><init>(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;B)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_2

    if-ne p3, v3, :cond_1

    const-string v0, "PlayerID"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoginToken"

    invoke-virtual {p4, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uid\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "token\":\""

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "gamecode\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->gH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pubgame"

    const-string v2, ""

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->getInstance()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunLang;->loading()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v2

    new-instance v3, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$2;

    invoke-direct {v3, p0}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$2;-><init>(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const-string v1, "\u53d6\u6d88\u767b\u5f55"

    const/4 v2, 0x0

    invoke-interface {v0, v3, v1, v2}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x65

    if-ne p2, v0, :cond_0

    if-ne p3, v3, :cond_3

    const-string v0, "OrderId"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-interface {v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "pubgame purchase finish"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4pubgame"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4pubgame"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4pubgame"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pubgame/sdk/base/dex/PubgameSDK;->hidePGTools(Landroid/app/Activity;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4pubgame"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4pubgame"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pubgame/sdk/base/dex/PubgameSDK;->showPGTools(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4pubgame"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pubgame/sdk/base/dex/PubgameSDK;->releasePGTools(Landroid/app/Activity;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4pubgame"

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

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->getInstance()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->loading()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p6, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pubgame/sdk/base/dex/PubgameSDK;->CPAComplete(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v0, "pubgame"

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1;

    invoke-direct {v1, p0, p1, p6, p2}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame$1;-><init>(Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    invoke-static {p1}, Lcom/pubgame/sdk/base/dex/PubgameSDK;->logoutForDirectLogin(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "reLogin"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method

.method public submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/pubgame/sdk/base/dex/PubgameSDK;->CPAComplete(Landroid/app/Activity;Ljava/lang/String;)V

    const-string v0, "level"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "level"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->ja:Ljava/lang/String;

    :goto_0
    const-string v0, "roleId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "roleId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->roleId:Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    const-string v0, "1"

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->ja:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pubgame/KunlunProxyStubImpl4pubgame;->roleId:Ljava/lang/String;

    goto :goto_1
.end method
