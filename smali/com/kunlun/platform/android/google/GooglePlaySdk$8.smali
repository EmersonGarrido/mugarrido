.class final Lcom/kunlun/platform/android/google/GooglePlaySdk$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/google/GooglePlaySdk;->getSkuDetails(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
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
.field private final synthetic lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

.field private synthetic lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

.field private final synthetic lz:Ljava/util/ArrayList;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/google/GooglePlaySdk;Ljava/util/ArrayList;Landroid/app/Activity;Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$8;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    iput-object p2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$8;->lz:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$8;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$8;->lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onFinished(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const/4 v2, 0x6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ITEM_ID_LIST"

    iget-object v4, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$8;->lz:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$8;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    invoke-static {v3}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->b(Lcom/kunlun/platform/android/google/GooglePlaySdk;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$8;->val$activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "inapp"

    invoke-interface {v3, v4, v5, v6, v1}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "RESPONSE_CODE"

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    :try_start_1
    const-string v2, "DETAILS_LIST"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DETAILS_LIST"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$8;->lv:Lcom/kunlun/platform/android/google/GooglePlaySdk;

    iget-object v2, p0, Lcom/kunlun/platform/android/google/GooglePlaySdk$8;->lt:Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;

    invoke-static {v2, v1, v0}, Lcom/kunlun/platform/android/google/GooglePlaySdk;->a(Lcom/kunlun/platform/android/google/GooglePlaySdk$FinishedListener;ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v1

    move-object v7, v1

    move v1, v2

    move-object v2, v7

    :goto_2
    const-string v3, "kunlun.GooglePlaySdk"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_1
    move v1, v2

    goto :goto_0
.end method
