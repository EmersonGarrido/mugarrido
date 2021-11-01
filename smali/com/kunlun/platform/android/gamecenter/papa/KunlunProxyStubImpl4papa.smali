.class public Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private gameName:Ljava/lang/String;

.field iO:I

.field private iP:Lcom/papa91/pay/callback/PPLoginCallBack;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mcontext:Landroid/content/Context;

.field private roleId:Ljava/lang/String;

.field private roleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->roleName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->roleId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->gameName:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;-><init>(Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->iP:Lcom/papa91/pay/callback/PPLoginCallBack;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 6

    new-instance v0, Lcom/papa91/pay/pa/business/PaayArg;

    invoke-direct {v0}, Lcom/papa91/pay/pa/business/PaayArg;-><init>()V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->gameName:Ljava/lang/String;

    iput-object v1, v0, Lcom/papa91/pay/pa/business/PaayArg;->APP_NAME:Ljava/lang/String;

    iput-object p4, v0, Lcom/papa91/pay/pa/business/PaayArg;->APP_ORDER_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->roleId:Ljava/lang/String;

    iput-object v1, v0, Lcom/papa91/pay/pa/business/PaayArg;->APP_USER_ID:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->roleName:Ljava/lang/String;

    iput-object v1, v0, Lcom/papa91/pay/pa/business/PaayArg;->APP_USER_NAME:Ljava/lang/String;

    int-to-double v2, p3

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/papa91/pay/pa/business/PaayArg;->MONEY_AMOUNT:Ljava/lang/String;

    const-string v1, "http://pay.kunlun.com/proxy/papa/payinterface.php"

    iput-object v1, v0, Lcom/papa91/pay/pa/business/PaayArg;->NOTIFY_URI:Ljava/lang/String;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getProductId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/papa91/pay/pa/business/PaayArg;->PRODUCT_ID:Ljava/lang/String;

    iput-object p2, v0, Lcom/papa91/pay/pa/business/PaayArg;->PRODUCT_NAME:Ljava/lang/String;

    iget v1, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->iO:I

    iput v1, v0, Lcom/papa91/pay/pa/business/PaayArg;->PA_OPEN_UID:I

    iput-object p4, v0, Lcom/papa91/pay/pa/business/PaayArg;->APP_EXT1:Ljava/lang/String;

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;

    invoke-direct {v1, p0, p1, p5, p4}, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;-><init>(Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/papa91/pay/pa/business/PPayCenter;->pay(Lcom/papa91/pay/pa/business/PaayArg;Lcom/papa91/pay/callback/PPayCallback;)V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->mcontext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->mcontext:Landroid/content/Context;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->iP:Lcom/papa91/pay/callback/PPLoginCallBack;

    invoke-static {p1, v0}, Lcom/papa91/pay/pa/business/PPayCenter;->login(Landroid/content/Context;Lcom/papa91/pay/callback/PPLoginCallBack;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->iO:I

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$4;

    invoke-direct {v1, p2}, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$4;-><init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-static {p1, v0, v1}, Lcom/papa91/pay/pa/business/PPayCenter;->loginOut(Landroid/app/Activity;ILcom/papa91/pay/callback/PpaLogoutCallback;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/papa91/pay/pa/business/PPayCenter;->init(Landroid/content/Context;)V

    const/4 v0, 0x0

    const-string v1, "init onSuccess"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4youku"

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

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/papa91/pay/pa/business/PPayCenter;->destroy()V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 8

    const-string v0, "KunlunProxyStubImpl4youku"

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

    const-string v7, "papa"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p6

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$2;-><init>(Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;II)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "relogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "relogin"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->iP:Lcom/papa91/pay/callback/PPLoginCallBack;

    invoke-static {v0}, Lcom/papa91/pay/pa/business/PPayCenter;->changeAccount(Lcom/papa91/pay/callback/PPLoginCallBack;)V

    return-void
.end method

.method public submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "roleName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->roleName:Ljava/lang/String;

    const-string v0, "roleId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->roleId:Ljava/lang/String;

    const-string v0, "gameName"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->gameName:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->roleName:Ljava/lang/String;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/papa91/pay/pa/business/PPayCenter;->createRole(Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->roleName:Ljava/lang/String;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/papa91/pay/pa/business/PPayCenter;->enterGame(Ljava/lang/String;II)V

    return-void
.end method
