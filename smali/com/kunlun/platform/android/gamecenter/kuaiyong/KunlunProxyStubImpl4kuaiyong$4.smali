.class final Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anguotech/sdk/interfaces/PayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hr:Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$4;->hr:Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$4;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "kuaiyong onPayment cancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final onFail(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x2

    const-string v2, "kuaiyong onPayment error"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$4;->hr:Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->a(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$4;->hr:Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->a(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$4;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "kuaiyong onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
