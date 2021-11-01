.class final Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nearme/game/sdk/callback/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic iL:Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;Ljava/lang/String;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$3;->iL:Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$3;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$3;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;I)V
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$3;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const/16 v0, 0x3ec

    if-eq v0, p2, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "oppo onPaymentFailure"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "oppo onPaymentCancel"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$3;->iL:Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;->a(Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$3;->iL:Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;->a(Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$3;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u5145\u503c\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "oppo onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
