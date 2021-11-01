.class public Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;
    }
.end annotation


# instance fields
.field private dw:Lcom/kunlun/platform/android/Kunlun$initCallback;

.field private ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

.field private ey:Z

.field private kB:Ljava/lang/String;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private orderId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->ey:Z

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/Kunlun$initCallback;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->dw:Lcom/kunlun/platform/android/Kunlun$initCallback;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->orderId:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->ey:Z

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    return-object v0
.end method

.method static synthetic g(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kB:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xunlei"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->getInstance()Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->login(Landroid/content/Context;)I

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xunlei"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 11

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4xunlei"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->dw:Lcom/kunlun/platform/android/Kunlun$initCallback;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.xunlei.gameID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.xunlei.gameName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.xunlei.channelID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.xunlei.appKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.xunlei.exchangeRate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-double v4, v0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.xunlei.exchangeUnit"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->getInstance()Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;

    move-result-object v1

    new-instance v9, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;

    const/4 v0, 0x0

    invoke-direct {v9, p0, v0}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$a;-><init>(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;B)V

    move-object v10, p1

    invoke-virtual/range {v1 .. v10}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->initMobileGame(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xunlei/niux/mobilegame/sdk/listener/NiuxMobileGameListener;Landroid/content/Context;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4xunlei"

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

    const-string v0, "KunlunProxyStubImpl4xunlei"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xunlei"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xunlei"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xunlei"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "KunlunProxyStubImpl4xunlei"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->ey:Z

    if-eqz v0, :cond_0

    const-string v0, "KunlunProxyStubImpl4xunlei"

    const-string v1, "\u5145\u503c\u8fd4\u56de"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->ey:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "\u5145\u503c\u5173\u95ed"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->getInstance()Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->createFloatView(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xunlei"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->getInstance()Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->destoryFloatView(Landroid/app/Activity;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 6

    const-string v0, "KunlunProxyStubImpl4xunlei"

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

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->getInstance()Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->getLoginUser()Lcom/xunlei/niux/mobilegame/sdk/vo/User;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xunlei/niux/mobilegame/sdk/vo/User;->getCustomerId()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v3, "roleid"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kB:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kB:Ljava/lang/String;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kB:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v3, "nickname"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->roleInfo:Landroid/os/Bundle;

    const-string v3, "level"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "user\":\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "roleInfo\":\""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->kB:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "___"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "___"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/kunlun/platform/android/Kunlun;->setPayOrderExt(Ljava/util/List;)V

    const-string v0, ""

    const-string v1, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "xunlei"

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;

    invoke-direct {v1, p0, p1, p6, p3}, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei$1;-><init>(Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;I)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void

    :cond_1
    const-string v0, ""

    goto/16 :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4xunlei"

    const-string v1, "relogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/xunlei/KunlunProxyStubImpl4xunlei;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->getInstance()Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xunlei/niux/mobilegame/sdk/platform/NiuxMobileGame;->changeUser(Landroid/content/Context;)I

    return-void
.end method
