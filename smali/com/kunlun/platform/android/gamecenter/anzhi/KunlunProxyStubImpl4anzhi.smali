.class public Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private eA:Ljava/lang/String;

.field private eB:Z

.field private eC:Lcom/anzhi/usercenter/sdk/inter/KeybackCall;

.field private eD:Lcom/anzhi/usercenter/sdk/inter/AnzhiCallback;

.field private eE:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

.field private ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

.field private ey:Z

.field private ez:Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private orderId:Ljava/lang/String;

.field private which:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->which:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->orderId:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ey:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->eA:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->eB:Z

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$1;-><init>(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->eC:Lcom/anzhi/usercenter/sdk/inter/KeybackCall;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$2;-><init>(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->eD:Lcom/anzhi/usercenter/sdk/inter/AnzhiCallback;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;Landroid/app/Activity;FLjava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 6

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->mActivity:Landroid/app/Activity;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ey:Z

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->which:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->which:I

    invoke-static {}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->getInstance()Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

    move-result-object v0

    iget v2, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->which:I

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->pay(Landroid/content/Context;IFLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->eA:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->orderId:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ey:Z

    return v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ey:Z

    return-void
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->eB:Z

    return-void
.end method

.method static synthetic f(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic h(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ez:Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

    return-object v0
.end method

.method static synthetic j(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/Kunlun$ExitCallback;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->eE:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4anzhi"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->eB:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ez:Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->login(Landroid/content/Context;Z)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4anzhi"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->eE:Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    invoke-static {}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->getInstance()Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->azoutGame(Z)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 4

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4anzhi"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/anzhi/usercenter/sdk/item/CPInfo;

    invoke-direct {v0}, Lcom/anzhi/usercenter/sdk/item/CPInfo;-><init>()V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.anzhi.appKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/item/CPInfo;->setAppKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.anzhi.secret"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/item/CPInfo;->setSecret(Ljava/lang/String;)V

    const-string v1, "AnZhi"

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/item/CPInfo;->setChannel(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/item/CPInfo;->setGameName(Ljava/lang/String;)V

    invoke-static {}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->getInstance()Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ez:Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ez:Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$3;

    invoke-direct {v2, p1, p2}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$3;-><init>(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    new-instance v3, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$4;

    invoke-direct {v3, p0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$4;-><init>(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)V

    invoke-virtual {v1, p1, v0, v2, v3}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->azinitSDK(Landroid/app/Activity;Lcom/anzhi/usercenter/sdk/item/CPInfo;Lcom/anzhi/usercenter/sdk/inter/InitSDKCallback;Lcom/anzhi/usercenter/sdk/inter/AzOutGameInter;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ez:Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.anzhi.OpendTestLog"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->setOpendTestLog(Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ez:Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->eC:Lcom/anzhi/usercenter/sdk/inter/KeybackCall;

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->setKeybackCall(Lcom/anzhi/usercenter/sdk/inter/KeybackCall;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ez:Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->eD:Lcom/anzhi/usercenter/sdk/inter/AnzhiCallback;

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->setCallback(Lcom/anzhi/usercenter/sdk/inter/AnzhiCallback;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ez:Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.anzhi.ActivityOrientation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->setActivityOrientation(I)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4anzhi"

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

    const-string v0, "KunlunProxyStubImpl4anzhi"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4anzhi"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ez:Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->removeFloaticon(Landroid/content/Context;)V

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4anzhi"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4anzhi"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "KunlunProxyStubImpl4anzhi"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ey:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ey:Z

    const-string v0, "KunlunProxyStubImpl4anzhi"

    const-string v1, "anzhi onPaymentCompleted"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ev:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "anzhi onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->eB:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->eB:Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x64

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_1
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4anzhi"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const-string v0, "KunlunProxyStubImpl4anzhi"

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

    const-string v6, "anzhi"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$5;-><init>(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;)V

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4anzhi"

    const-string v1, "logout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->getInstance()Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->logout(Landroid/content/Context;)V

    return-void
.end method

.method public submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4anzhi"

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/anzhi/usercenter/sdk/item/UserGameInfo;

    invoke-direct {v0}, Lcom/anzhi/usercenter/sdk/item/UserGameInfo;-><init>()V

    const-string v1, "gameName"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "gameName"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/item/UserGameInfo;->setAppName(Ljava/lang/String;)V

    :goto_0
    const-string v1, "roleLevel"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "roleLevel"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/item/UserGameInfo;->setGameLevel(Ljava/lang/String;)V

    :cond_0
    const-string v1, "roleId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "roleId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/item/UserGameInfo;->setUserRole(Ljava/lang/String;)V

    :cond_1
    const-string v1, "remark"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "remark"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/item/UserGameInfo;->setMemo(Ljava/lang/String;)V

    :cond_2
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/item/UserGameInfo;->setGameArea(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->eA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/item/UserGameInfo;->setUid(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->ez:Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;

    invoke-virtual {v1, p1, v0}, Lcom/anzhi/usercenter/sdk/AnzhiUserCenter;->submitGameInfo(Landroid/content/Context;Lcom/anzhi/usercenter/sdk/item/UserGameInfo;)V

    :goto_1
    return-void

    :cond_3
    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anzhi/usercenter/sdk/item/UserGameInfo;->setAppName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
