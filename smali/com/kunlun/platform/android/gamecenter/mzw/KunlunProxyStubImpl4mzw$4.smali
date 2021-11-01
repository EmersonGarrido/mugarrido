.class final Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/muzhiwan/sdk/core/callback/MzwPayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic iJ:Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$4;->iJ:Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$4;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ILcom/muzhiwan/sdk/service/MzwOrder;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "KunlunProxyStubImpl4mzw"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doPay onResult code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":order:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$4;->iJ:Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;->a(Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$4;->iJ:Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;->a(Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$4;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "mzw onPaymentCompleted"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "mzw onPayment cancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x2

    const-string v2, "mzw onPayment Faild"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
