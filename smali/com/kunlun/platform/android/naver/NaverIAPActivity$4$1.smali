.class final Lcom/kunlun/platform/android/naver/NaverIAPActivity$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$PurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;->onSuccess(Lcom/naver/android/appstore/iap/Purchase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic mn:Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4$1;->mn:Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4$1;->mn:Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;)Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->c(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Purchase success."

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    const-string v0, "NaverIAPActivity consumeListener platFormPurchase onComplete"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4$1;->mn:Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;)Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->c(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4$1;->mn:Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;->a(Lcom/kunlun/platform/android/naver/NaverIAPActivity$4;)Lcom/kunlun/platform/android/naver/NaverIAPActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/naver/NaverIAPActivity;->c(Lcom/kunlun/platform/android/naver/NaverIAPActivity;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
