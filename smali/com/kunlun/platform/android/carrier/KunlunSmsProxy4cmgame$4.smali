.class final Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$GetOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;->netPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bN:Ljava/lang/String;

.field private final synthetic bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

.field private synthetic ds:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;->ds:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;

    iput-object p2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iput-object p4, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;->bN:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;)Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;->ds:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame;

    return-object v0
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
    .locals 9

    const/4 v8, 0x1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunDataEntity;->getData()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "is_repeated"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iget-object v7, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;->val$activity:Landroid/app/Activity;

    new-instance v0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4$1;

    iget-object v2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;->bN:Ljava/lang/String;

    iget-object v6, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4$1;-><init>(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;Landroid/app/Activity;ZLjava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    invoke-virtual {v7, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;->val$activity:Landroid/app/Activity;

    const-string v1, "\u751f\u6210\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const-string v1, "\u751f\u6210\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-interface {v0, v8, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4cmgame$4;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-interface {v0, p1, p2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
