.class final Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iapppay/interfaces/callback/IPayResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$5;->fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$5;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPayResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$5;->fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->c(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$5;->fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->c(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$5;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "coolpad onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "coolpad onPayment Error"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
