.class final Lcom/kunlun/platform/android/naver/NaverIAPActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/naver/android/appstore/iap/NIAPHelper$RequestPaymentListener;


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

    iput-object p1, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$3;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 2

    const-string v0, "NaverIAPActivity terminated during callback listener"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$3;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->c(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\uad6c\ub9e4\uac00 \ucde8\uc18c\ub418\uc5c8\uc2b5\ub2c8\ub2e4."

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$3;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->c(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onFail(Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V
    .locals 2

    sget-object v0, Lcom/naver/android/appstore/iap/NIAPHelperErrorType;->SIGNATURE_VERIFICATION_ERROR:Lcom/naver/android/appstore/iap/NIAPHelperErrorType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$3;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    const-string v1, "Purchase signature verification has been failed"

    invoke-static {v0, v1, p1}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;Ljava/lang/String;Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/naver/android/appstore/iap/NIAPHelperErrorType;->PURCHASE_PROCESS_NOT_WORKED:Lcom/naver/android/appstore/iap/NIAPHelperErrorType;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$3;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    const-string v1, "There is some problem on NAVER APPSTORE."

    invoke-static {v0, v1, p1}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;Ljava/lang/String;Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/naver/android/appstore/iap/NIAPHelperErrorType;->NETWORK_ERROR:Lcom/naver/android/appstore/iap/NIAPHelperErrorType;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$3;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    const-string v1, "There is some network problem on purchasing. Please retry."

    invoke-static {v0, v1, p1}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;Ljava/lang/String;Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/naver/android/appstore/iap/NIAPHelperErrorType;->PRODUCT_ALREADY_OWNED:Lcom/naver/android/appstore/iap/NIAPHelperErrorType;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$3;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    const-string v1, "You already owned same product."

    invoke-static {v0, v1, p1}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;Ljava/lang/String;Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$3;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    const-string v1, "requestPayment fail"

    invoke-static {v0, v1, p1}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;Ljava/lang/String;Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V

    goto :goto_0
.end method

.method public final onSuccess(Lcom/naver/android/appstore/iap/Purchase;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$3;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Lcom/naver/android/appstore/iap/NIAPHelper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NaverIAPActivity terminated during callback listener"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$3;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Lcom/naver/android/appstore/iap/NIAPHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$3;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    iget-object v1, v1, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->ml:Lcom/naver/android/appstore/iap/NIAPHelper$ConsumeListener;

    invoke-virtual {v0, p1, v1}, Lcom/naver/android/appstore/iap/NIAPHelper;->consumeAsync(Lcom/naver/android/appstore/iap/Purchase;Lcom/naver/android/appstore/iap/NIAPHelper$ConsumeListener;)V

    goto :goto_0
.end method
