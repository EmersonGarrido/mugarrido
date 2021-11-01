.class final Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->GooglePay(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$act:Landroid/app/Activity;

.field final synthetic val$args:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;->val$act:Landroid/app/Activity;

    iput-object p2, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;->val$args:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 290
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v5

    new-instance v6, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6$1;

    invoke-direct {v6, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6$1;-><init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;)V

    invoke-virtual {v5, v6}, Lcom/kunlun/platform/android/KunlunProxy;->setPurchaseSuccessListener(Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    .line 333
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v5, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;->val$args:Ljava/lang/String;

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 334
    .local v3, "jsStr":Lorg/json/JSONObject;
    const-string v5, "goodId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 335
    .local v2, "goodId":Ljava/lang/String;
    const-string v5, "orderId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 336
    .local v4, "orderId":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ExchangeRate"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "exchangeRate":Ljava/lang/String;
    sget-object v5, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->ERRo:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    sget-object v5, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->ERRo:Ljava/lang/String;

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget-object v5, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->ERRo:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v5, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;->val$act:Landroid/app/Activity;

    new-instance v6, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6$2;

    invoke-direct {v6, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6$2;-><init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;)V

    invoke-static {v5, v4, v6}, Lcom/kunlun/platform/android/Kunlun;->prepareSingleChannelPurchase(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    .line 349
    iget-object v5, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;->val$act:Landroid/app/Activity;

    invoke-static {v5, v2}, Lcom/kunlun/platform/android/Kunlun;->googlePlayPurchase(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v1    # "exchangeRate":Ljava/lang/String;
    .end local v2    # "goodId":Ljava/lang/String;
    .end local v3    # "jsStr":Lorg/json/JSONObject;
    .end local v4    # "orderId":Ljava/lang/String;
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
