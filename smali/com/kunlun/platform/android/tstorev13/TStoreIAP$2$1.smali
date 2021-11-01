.class final Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$PurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;->onResponse(Lcom/skplanet/dodo/IapResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2$1;->p:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    const-string v0, "com.kunlun.platform.android.tstorev13.TStoreIAP"

    const-string v1, ":tStorePurchasePlatFormV13 T-STORE Pay Success."

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2$1;->p:Landroid/content/Context;

    const-string v1, "\ucda9\uc804 \uc131\uacf5"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    const-string v0, "Tstore tStorePurchasePlatFormV13 onComplete"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2$1;->p:Landroid/content/Context;

    const-string v1, "\uacb0\uc81c \uc131\uacf5, \ub9cc\uc57d \uac8c\uc784 \uba38\ub2c8\ub97c \uc218\ub839\ubc1b\uc9c0 \ubabb\ud558\uc168\ub2e4\uba74 \uace0\uac1d\uc13c\ud130\uc640 \uc5f0\ub77d\ud558\uc138\uc694."

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "com.kunlun.platform.android.tstorev13.TStoreIAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":doSaveUnFinishedTStroePurchaseV13 T-STORE Pay error."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
