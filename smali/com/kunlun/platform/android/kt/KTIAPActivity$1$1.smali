.class final Lcom/kunlun/platform/android/kt/KTIAPActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$PurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/kt/KTIAPActivity$1;->OnResultPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic me:Lcom/kunlun/platform/android/kt/KTIAPActivity$1;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/kt/KTIAPActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity$1$1;->me:Lcom/kunlun/platform/android/kt/KTIAPActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    const-string v0, "kunlunKTIAPActivity"

    const-string v1, ":kTPurchasePlatForm:Kunlun KT Pay Success."

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity$1$1;->me:Lcom/kunlun/platform/android/kt/KTIAPActivity$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/kt/KTIAPActivity$1;->a(Lcom/kunlun/platform/android/kt/KTIAPActivity$1;)Lcom/kunlun/platform/android/kt/KTIAPActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/kt/KTIAPActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Pay Success."

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity$1$1;->me:Lcom/kunlun/platform/android/kt/KTIAPActivity$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/kt/KTIAPActivity$1;->a(Lcom/kunlun/platform/android/kt/KTIAPActivity$1;)Lcom/kunlun/platform/android/kt/KTIAPActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/kt/KTIAPActivity;->finish()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KT OnResultPurchase:["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "kunlunKTIAPActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":kTPurchasePlatForm:Kunlun KT Pay error."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity$1$1;->me:Lcom/kunlun/platform/android/kt/KTIAPActivity$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/kt/KTIAPActivity$1;->a(Lcom/kunlun/platform/android/kt/KTIAPActivity$1;)Lcom/kunlun/platform/android/kt/KTIAPActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/kt/KTIAPActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
