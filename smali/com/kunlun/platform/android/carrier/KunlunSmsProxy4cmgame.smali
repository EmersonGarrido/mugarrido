.class public Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;
.super Lcom/kunlun/platform/android/KunlunSmsProxy;
.source "SourceFile"


# instance fields
.field private dr:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunSmsProxy;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;->dr:Z

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 6

    const/4 v1, 0x1

    new-instance v5, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$3;

    invoke-direct {v5, p4}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$3;-><init>(Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/api/GameInterface;->doBilling(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/api/GameInterface$IPayCallback;)V

    return-void
.end method


# virtual methods
.method protected danjiPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 6

    new-instance v0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$2;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$2;-><init>(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;ILandroid/app/Activity;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 1

    iget-boolean v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;->dr:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$1;

    invoke-direct {v0, p2}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$1;-><init>(Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-static {p1, v0}, Lcn/cmgame/billing/api/GameInterface;->exit(Landroid/content/Context;Lcn/cmgame/billing/api/GameInterface$GameExitCallback;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    goto :goto_0
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 6

    const/4 v4, 0x0

    const-string v0, "KunlunSmsProxy4cmgame"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "\u8bf7\u7a0d\u540e\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kunlun_cmgame_gameName"

    invoke-static {p1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->getResourcesString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "kunlun_cmgame_provider"

    invoke-static {p1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->getResourcesString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "kunlun_cmgame_serviceTel"

    invoke-static {p1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->getResourcesString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    invoke-static {p1}, Lcn/cmgame/billing/api/GameInterface;->initializeApp(Landroid/app/Activity;)V

    :goto_0
    const-string v0, "cn.cmgame.billing.api.GameOpenActivity"

    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->getMainClass(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;->dr:Z

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;->hasInit:Z

    const/4 v0, 0x0

    const-string v1, "finish"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void

    :cond_0
    move-object v0, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcn/cmgame/billing/api/GameInterface;->initializeApp(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/cmgame/billing/api/GameInterface$ILoginCallback;)V

    goto :goto_0
.end method

.method protected netPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 3

    const-string v0, ""

    const-string v1, "\u8bf7\u7a0d\u540e\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "itemName\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "price\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->setPayOrderExt(Ljava/util/List;)V

    const-string v0, "cmgame"

    new-instance v1, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;

    invoke-direct {v1, p0, p1, p5, p3}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;-><init>(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcn/cmgame/billing/api/GameInterface;->exitApp()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
