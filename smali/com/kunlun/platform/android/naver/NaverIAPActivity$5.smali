.class final Lcom/kunlun/platform/android/naver/NaverIAPActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/naver/android/appstore/iap/NIAPHelper$OnInitializeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/naver/NaverIAPActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$5;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail(Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$5;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->d(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)V

    sget-object v0, Lcom/naver/android/appstore/iap/NIAPHelperErrorType;->NEED_INSTALL_OR_UPDATE_APPSTORE:Lcom/naver/android/appstore/iap/NIAPHelperErrorType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$5;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->e(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$5;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Lcom/naver/android/appstore/iap/NIAPHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$5;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v1}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->c(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/common/KunlunActivityUtil;->removeActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/naver/android/appstore/iap/NIAPHelper;->updateOrInstallAppstore(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$5;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->c(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const-string v0, "NaverIAPActivity initialize onFail:NEED_INSTALL_OR_UPDATE_APPSTORE"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$5;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    const-string v1, "NIAPHelper initialize failed.\nPlease try again later."

    invoke-static {v0, v1, p1}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;Ljava/lang/String;Lcom/naver/android/appstore/iap/NIAPHelperErrorType;)V

    goto :goto_0
.end method

.method public final onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$5;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Lcom/naver/android/appstore/iap/NIAPHelper;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "NaverIAPActivity terminated during callback listener"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$5;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Lcom/naver/android/appstore/iap/NIAPHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$5;->mm:Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    iget-object v1, v1, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->mh:Lcom/naver/android/appstore/iap/NIAPHelper$GetPurchasesListener;

    invoke-virtual {v0, v1}, Lcom/naver/android/appstore/iap/NIAPHelper;->getPurchasesAsync(Lcom/naver/android/appstore/iap/NIAPHelper$GetPurchasesListener;)V

    const-string v0, "kunlunNaverIAPActivity"

    const-string v1, "initialize finished."

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
