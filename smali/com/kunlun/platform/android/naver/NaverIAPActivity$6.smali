.class final Lcom/kunlun/platform/android/naver/NaverIAPActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$GetOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/naver/NaverIAPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$6;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
    .locals 6

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$6;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Lcom/naver/android/appstore/iap/NIAPHelper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NaverIAPActivity terminated during callback listener"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunDataEntity;->getData()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$6;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->c(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "goodsId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "kunlunNaverIAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "niapHelper.requestPayment:|productCode:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "|orderId:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$6;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Lcom/naver/android/appstore/iap/NIAPHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$6;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v1}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->c(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Landroid/app/Activity;

    move-result-object v1

    const/16 v4, 0x64

    iget-object v5, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$6;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    iget-object v5, v5, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mk:Lcom/naver/android/appstore/iap/NIAPHelper$RequestPaymentListener;

    invoke-virtual/range {v0 .. v5}, Lcom/naver/android/appstore/iap/NIAPHelper;->requestPayment(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/naver/android/appstore/iap/NIAPHelper$RequestPaymentListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$6;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->c(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Generate order failed,please try again later."

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "naverPurchase create order error"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$6;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->c(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$6;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->c(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generate order failed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",please try again later."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "naverPurchase create order error"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$6;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->c(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method
