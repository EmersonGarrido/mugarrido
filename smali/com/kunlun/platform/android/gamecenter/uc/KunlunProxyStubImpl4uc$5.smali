.class final Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/uc/gamesdk/UCCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/uc/gamesdk/UCCallbackListener",
        "<",
        "Lcn/uc/gamesdk/info/OrderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic jP:Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$5;->jP:Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$5;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic callback(ILjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/16 v0, -0x1f4

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$5;->jP:Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;->a(Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$5;->jP:Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;->a(Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$5;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "uc onPaymentClose"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x2

    const-string v2, "uc onPayment error"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
