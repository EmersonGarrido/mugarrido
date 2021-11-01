.class final Lcom/kunlun/platform/android/google/GooglePlaySdk$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/google/GooglePlaySdk;->purchase(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/kunlun/platform/android/google/Purchase;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

.field private final synthetic lx:Ljava/lang/String;

.field private final synthetic ly:I

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/google/GooglePlaySdk;Ljava/lang/String;ILandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    iput-object p2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;->lx:Ljava/lang/String;

    iput p3, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;->ly:I

    iput-object p4, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onFinished(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const v6, 0x15b38

    const/4 v5, 0x3

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "goodsId\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;->lx:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "support\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eq p1, v5, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "V\":\"3"

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;->ly:I

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "age\":\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;->ly:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v2}, Lcom/kunlun/platform/android/Kunlun;->setPayOrderExt(Ljava/util/List;)V

    const-string v1, "googleplay"

    invoke-static {v1}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunDataEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunDataEntity;->getRetCode()I

    move-result v2

    if-ne v2, v6, :cond_2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunDataEntity;->getRetMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunDataEntity;->getRetCode()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunDataEntity;->getRetMsg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunDataEntity;->getRetCode()I

    move-result v2

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunDataEntity;->getRetMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eq p1, v5, :cond_4

    iget-object v2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    invoke-static {v2}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->b(Lcom/kunlun/platform/android/google/GooglePlaySdk;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_0
    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunDataEntity;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "order_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    invoke-static {v1}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->b(Lcom/kunlun/platform/android/google/GooglePlaySdk;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;->lx:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_4

    const-string v2, "BUY_INTENT"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/PendingIntent;

    move-object v2, v0

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const v3, 0xdbf34

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    new-instance v2, Lcom/kunlun/platform/android/google/GooglePlaySdk$7$1;

    invoke-direct {v2}, Lcom/kunlun/platform/android/google/GooglePlaySdk$7$1;-><init>()V

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Lcom/kunlun/platform/android/google/GooglePlaySdk;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "kunlun.GooglePlaySdk"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x6

    :cond_4
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLang()Ljava/lang/String;

    move-result-object v1

    const-string v2, "jp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ja"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const-string v1, "\u30c1\u30e3\u30fc\u30b8\u30a8\u30e9\u30fc\uff1a"

    :goto_1
    iget-object v2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$7;->val$activity:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->bX()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->bX()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-static {p1, v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v1, ""

    goto :goto_1
.end method
