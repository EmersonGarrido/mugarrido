.class public Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# instance fields
.field private accessToken:Ljava/lang/String;

.field private ik:Ljava/lang/String;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;Landroid/app/Activity;Lcom/huanju/wanka/paysdk/ProductInfo;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 2

    invoke-static {}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->getInstance()Lcom/huanju/wanka/paysdk/PaySdkProxy;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$3;

    invoke-direct {v1, p0, p4}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$3;-><init>(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->pay(Landroid/app/Activity;Lcom/huanju/wanka/paysdk/ProductInfo;Ljava/lang/String;Lcom/huanju/wanka/paysdk/IPayCallbackListener;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/kunlun/platform/android/KunlunEntity;->getThirdPartyData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "access_token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "access_token"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->accessToken:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->ik:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->ik:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->accessToken:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mha"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->getInstance()Lcom/huanju/wanka/paysdk/PaySdkProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->login(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mha"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->getInstance()Lcom/huanju/wanka/paysdk/PaySdkProxy;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$4;

    invoke-direct {v1, p2}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$4;-><init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->exit(Landroid/app/Activity;Lcom/huanju/wanka/paysdk/IExitCallbackListener;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mha"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->getInstance()Lcom/huanju/wanka/paysdk/PaySdkProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->onCreate(Landroid/app/Activity;)V

    invoke-static {}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->getInstance()Lcom/huanju/wanka/paysdk/PaySdkProxy;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1;-><init>(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;)V

    invoke-virtual {v0, p1, v1}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->setUserListener(Landroid/app/Activity;Lcom/huanju/wanka/paysdk/ILoginCallbackListener;)V

    const/4 v0, 0x0

    const-string v1, "init finish"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4mha"

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

    invoke-static {}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->getInstance()Lcom/huanju/wanka/paysdk/PaySdkProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mha"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mha"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->getInstance()Lcom/huanju/wanka/paysdk/PaySdkProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mha"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->getInstance()Lcom/huanju/wanka/paysdk/PaySdkProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mha"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->getInstance()Lcom/huanju/wanka/paysdk/PaySdkProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->onRestart(Landroid/app/Activity;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mha"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->getInstance()Lcom/huanju/wanka/paysdk/PaySdkProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mha"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->getInstance()Lcom/huanju/wanka/paysdk/PaySdkProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->onStart(Landroid/app/Activity;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4mha"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->getInstance()Lcom/huanju/wanka/paysdk/PaySdkProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->onStop(Landroid/app/Activity;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 7

    const-string v0, "KunlunProxyStubImpl4mha"

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

    const-string v6, "mha"

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p1

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$2;-><init>(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;Ljava/lang/String;ILandroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "KunlunProxyStubImpl4mha"

    const-string v1, "relogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->getInstance()Lcom/huanju/wanka/paysdk/PaySdkProxy;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->logout(Landroid/app/Activity;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "logout"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->getInstance()Lcom/huanju/wanka/paysdk/PaySdkProxy;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/huanju/wanka/paysdk/PaySdkProxy;->loginSwitch(Landroid/app/Activity;Ljava/lang/Object;)V

    return-void
.end method
