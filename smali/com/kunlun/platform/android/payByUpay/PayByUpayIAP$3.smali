.class final Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/upay/billing/sdk/UpayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$3;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPaymentResult(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "PayByUpayIAP"

    const-string v1, "paymentResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc8

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "upay onPaymentCompleted"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x6e

    if-ne p3, v0, :cond_1

    const/4 v0, -0x1

    const-string v1, "upay onPayment cancel"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    const-string v1, "upay onPayment error"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final onTradeProgress(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 3

    const-string v0, "PayByUpayIAP"

    const-string v1, "tradeProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "PayByUpayIAP"

    const-string v1, "tradeProgress"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc8

    if-ne p6, v0, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$3;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
