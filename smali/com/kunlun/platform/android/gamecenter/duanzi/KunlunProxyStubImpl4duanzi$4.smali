.class final Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/sdk/pay/SSPayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fZ:Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$4;->fZ:Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$4;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPayResult(ILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "duanzi onPayment error"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$4;->fZ:Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;->c(Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$4;->fZ:Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;->c(Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$4;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "duanzi onPaymentCompleted"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "duanzi onPayment cancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duanzi/KunlunProxyStubImpl4duanzi$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "duanzi onPayment error"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
