.class final Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/naver/android/appstore/iap/NIAPHelper$ConsumeListener;


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

    iput-object p1, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;)Lcom/kunlun/platform/android/naver/NaverIAPActivity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    return-object v0
.end method


# virtual methods
.method public final onFail(Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V
    .locals 2

    sget-object v0, Lcom/naver/android/appstore/iap/NIAPHelperErrorType;->PRODUCT_NOT_OWNED:Lcom/naver/android/appstore/iap/NIAPHelperErrorType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    const-string v1, "You don\'t have product."

    invoke-static {v0, v1, p1}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;Ljava/lang/String;Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    const-string v1, "consumeAsync failed,please try again later."

    invoke-static {v0, v1, p1}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;Ljava/lang/String;Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V

    goto :goto_0
.end method

.method public final onSuccess(Lcom/naver/android/appstore/iap/Purchase;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "channel"

    const-string v2, "naver"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "result"

    invoke-virtual {p1}, Lcom/naver/android/appstore/iap/Purchase;->getOriginalPurchaseAsJsonText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "signature"

    invoke-virtual {p1}, Lcom/naver/android/appstore/iap/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "order_id"

    invoke-virtual {p1}, Lcom/naver/android/appstore/iap/Purchase;->getDeveloperPayload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pay_partners_order_id"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getPartenersOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->getInstance(Landroid/content/Context;)Lcom/kunlun/platform/android/KunlunOrderListUtil;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4$1;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4$1;-><init>(Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;)V

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->platFormPurchase(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    return-void
.end method
