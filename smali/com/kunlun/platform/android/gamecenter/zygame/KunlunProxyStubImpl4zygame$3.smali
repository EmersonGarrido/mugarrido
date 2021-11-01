.class final Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zhuoyou/pay/sdk/listener/ZYRechargeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic lj:Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame$3;->lj:Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fail(Lcom/zhuoyou/pay/sdk/entity/PayParams;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x2

    const-string v2, "\u5145\u503c\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final success(Lcom/zhuoyou/pay/sdk/entity/PayParams;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame$3;->lj:Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame;->a(Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame$3;->lj:Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame;->a(Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-virtual {p1}, Lcom/zhuoyou/pay/sdk/entity/PayParams;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zygame/KunlunProxyStubImpl4zygame$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "zygame onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
