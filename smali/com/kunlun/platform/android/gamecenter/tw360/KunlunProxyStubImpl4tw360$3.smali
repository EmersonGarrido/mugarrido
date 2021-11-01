.class final Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360$3;
.super Ltw/tw360/sdk/common/PurchaseCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jN:Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360$3;->jN:Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360$3;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ltw/tw360/sdk/common/PurchaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPurchaseCallback(ZLtw/tw360/sdk/entities/TW360Purchase;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360$3;->jN:Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360;->a(Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360$3;->jN:Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360;->a(Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360$3;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-virtual {p2}, Ltw/tw360/sdk/entities/TW360Purchase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/tw360/KunlunProxyStubImpl4tw360$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    invoke-virtual {p2}, Ltw/tw360/sdk/entities/TW360Purchase;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
