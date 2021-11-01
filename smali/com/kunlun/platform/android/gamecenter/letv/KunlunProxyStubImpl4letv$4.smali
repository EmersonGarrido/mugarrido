.class final Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/letv/letvsdk/LetvSDK$PayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$4;->hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$4;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPayResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$4;->hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->f(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$4;->hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->f(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$4;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "letv onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v0, "failed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "letv onPayment Failed"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
