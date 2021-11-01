.class final Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$5;
.super Lcom/pps/sdk/platform/PPSPlatformListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic iU:Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$5;->iU:Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$5;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/pps/sdk/platform/PPSPlatformListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final leavePlatform()V
    .locals 3

    invoke-super {p0}, Lcom/pps/sdk/platform/PPSPlatformListener;->leavePlatform()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x2

    const-string v2, "pps onPaymentCancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final paymentResult(I)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/pps/sdk/platform/PPSPlatformListener;->paymentResult(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$5;->iU:Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;->a(Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$5;->iU:Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;->a(Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$5;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "pps onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/pps/KunlunProxyStubImpl4pps$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "pps onPaymentFailure"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
