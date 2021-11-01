.class public Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;
.super Lcom/kunlun/platform/android/KunlunSmsProxy;
.source "SourceFile"


# instance fields
.field private dv:Lmm/purchasesdk/Purchase;

.field private dw:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunSmsProxy;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;)Lcom/kunlun/platform/android/Kunlun$initCallback;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->dw:Lcom/kunlun/platform/android/Kunlun$initCallback;

    return-object v0
.end method

.method private a(Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)Lmm/purchasesdk/OnPurchaseListener;
    .locals 1

    new-instance v0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$2;

    invoke-direct {v0, p0, p1}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$2;-><init>(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 8

    const/4 v7, 0x1

    const-string v0, "KunlunSmsProxy4mobile"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mmPay:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    :try_start_0
    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->dv:Lmm/purchasesdk/Purchase;

    const/4 v5, 0x1

    invoke-direct {p0, p6}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->a(Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)Lmm/purchasesdk/OnPurchaseListener;

    move-result-object v6

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v6}, Lmm/purchasesdk/Purchase;->order(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;ZLmm/purchasesdk/OnPurchaseListener;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz p6, :cond_0

    const-string v0, "Pay failed"

    invoke-interface {p6, v7, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->dw:Lcom/kunlun/platform/android/Kunlun$initCallback;

    return-void
.end method


# virtual methods
.method protected danjiPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 7

    new-instance v0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$3;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$3;-><init>(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;ILandroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 6

    const/4 v5, 0x1

    const-string v0, "KunlunSmsProxy4mobile"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->dw:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const-string v0, "kunlun_mm_appid"

    invoke-static {p1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->getResourcesString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kunlun_mm_appkey"

    invoke-static {p1, v1}, Lcom/kunlun/platform/android/KunlunUtil;->getResourcesString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KunlunSmsProxy4mobile"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":appkey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lmm/purchasesdk/Purchase;->getInstance()Lmm/purchasesdk/Purchase;

    move-result-object v2

    iput-object v2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->dv:Lmm/purchasesdk/Purchase;

    :try_start_0
    iget-object v2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->dv:Lmm/purchasesdk/Purchase;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lmm/purchasesdk/Purchase;->setAppInfo(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->dv:Lmm/purchasesdk/Purchase;

    const/16 v1, 0x1388

    const/16 v2, 0x1388

    invoke-virtual {v0, v1, v2}, Lmm/purchasesdk/Purchase;->setTimeout(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    const-string v0, ""

    const-string v1, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->dv:Lmm/purchasesdk/Purchase;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->a(Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)Lmm/purchasesdk/OnPurchaseListener;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lmm/purchasesdk/Purchase;->init(Landroid/content/Context;Lmm/purchasesdk/OnPurchaseListener;)V

    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$1;

    invoke-direct {v1, p0}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$1;-><init>(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    iput-boolean v5, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->hasInit:Z

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected netPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 8

    const-string v0, ""

    const-string v1, "\u8bf7\u7a0d\u540e\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "mmbilling"

    new-instance v0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$4;-><init>(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "KunlunSmsProxy4mobile"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/chinaMobile/MobileAgent;->onPause(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KunlunSmsProxy4mobile"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MobileAgent.onPause error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "KunlunSmsProxy4mobile"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/chinaMobile/MobileAgent;->onResume(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "KunlunSmsProxy4mobile"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MobileAgent.onResume error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
