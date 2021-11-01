.class Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6$1;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$PurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;


# direct methods
.method constructor <init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;)V
    .locals 0
    .param p1, "this$0"    # Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;

    .prologue
    .line 291
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6$1;->this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;)V
    .locals 8
    .param p1, "retCode"    # I
    .param p2, "retMsg"    # Ljava/lang/String;

    .prologue
    .line 295
    if-nez p1, :cond_0

    .line 299
    :try_start_0
    invoke-static {p2}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 300
    .local v1, "msg":Lorg/json/JSONObject;
    const-string v5, "data"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 301
    .local v0, "data":Lorg/json/JSONObject;
    const-string v5, "pay_amount"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, "pay_amount":Ljava/lang/String;
    const-string v5, "pay_coins"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "pay_coins":Ljava/lang/String;
    iget-object v5, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6$1;->this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;

    iget-object v5, v5, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;->val$act:Landroid/app/Activity;

    invoke-static {v5, v4}, Lmu/origin/ro/ggplay/qjmu/ADManager;->AFPay(Landroid/app/Activity;Ljava/lang/String;)V

    .line 312
    sget-object v5, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->ERRo:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pay_coins == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 315
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "action_type"

    const-string v6, "purchase"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    const-string v5, "value"

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x40400000    # 3.0f

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v5, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6$1;->this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;

    iget-object v5, v5, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;->val$act:Landroid/app/Activity;

    const-string v6, "962307603"

    invoke-static {v5, v6, v2}, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->reportWithConversionId(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "msg":Lorg/json/JSONObject;
    .end local v2    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "pay_amount":Ljava/lang/String;
    .end local v4    # "pay_coins":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 323
    :catch_0
    move-exception v5

    goto :goto_0
.end method
