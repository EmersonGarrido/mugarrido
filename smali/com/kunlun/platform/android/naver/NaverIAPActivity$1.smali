.class final Lcom/kunlun/platform/android/naver/NaverIAPActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/naver/android/appstore/iap/NIAPHelper$GetPurchasesListener;


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

    iput-object p1, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$1;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V
    .locals 2

    sget-object v0, Lcom/naver/android/appstore/iap/NIAPHelperErrorType;->SIGNATURE_VERIFICATION_ERROR:Lcom/naver/android/appstore/iap/NIAPHelperErrorType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$1;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    const-string v1, "Purchase signature verification has been failed."

    invoke-static {v0, v1, p1}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;Ljava/lang/String;Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/naver/android/appstore/iap/NIAPHelperErrorType;->USER_NOT_LOGGED_IN:Lcom/naver/android/appstore/iap/NIAPHelperErrorType;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$1;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    const-string v1, "Please login NAVER APPSTORE."

    invoke-static {v0, v1, p1}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;Ljava/lang/String;Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$1;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    const-string v1, "getPurchasesAsync failed,please try again later."

    invoke-static {v0, v1, p1}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;Ljava/lang/String;Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V

    goto :goto_0
.end method

.method public final onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/naver/android/appstore/iap/Purchase;",
            ">;)V"
        }
    .end annotation

    const-string v0, "kunlunNaverIAPActivity"

    const-string v1, "getPurchasesListener onSuccess."

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$1;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Lcom/naver/android/appstore/iap/NIAPHelper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NaverIAPActivity terminated during callback listener"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "kunlunNaverIAPActivity"

    const-string v1, "getPurchasesListener consumeListenerBackground finish."

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$1;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->b(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/naver/android/appstore/iap/Purchase;

    iget-object v2, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$1;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v2}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Lcom/naver/android/appstore/iap/NIAPHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$1;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    iget-object v3, v3, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mi:Lcom/naver/android/appstore/iap/NIAPHelper$ConsumeListener;

    invoke-virtual {v2, v0, v3}, Lcom/naver/android/appstore/iap/NIAPHelper;->consumeAsync(Lcom/naver/android/appstore/iap/Purchase;Lcom/naver/android/appstore/iap/NIAPHelper$ConsumeListener;)V

    goto :goto_1
.end method
