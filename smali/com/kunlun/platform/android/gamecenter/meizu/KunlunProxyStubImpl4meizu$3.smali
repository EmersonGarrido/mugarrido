.class final Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/gamecenter/sdk/MzPayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ii:Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$3;->ii:Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$3;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPayResult(ILcom/meizu/gamecenter/sdk/MzBuyInfo;Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, "KunlunProxyStubImpl4meizu"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u5931\u8d25 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "meizu pay error"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$3;->ii:Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->a(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$3;->ii:Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->a(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$3;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "meizu onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "KunlunProxyStubImpl4meizu"

    const-string v1, "\u53d6\u6d88\u5145\u503c"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "meizu pay cancel"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
