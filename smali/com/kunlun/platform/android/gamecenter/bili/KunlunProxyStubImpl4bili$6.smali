.class final Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bsgamesdk/android/callbacklistener/OrderCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;Ljava/lang/String;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;->fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4mzw"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doPay onResult code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":order:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;->val$orderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x2

    const-string v2, "bili onPayment failed"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final onFailed(Ljava/lang/String;Lcom/bsgamesdk/android/callbacklistener/BSGameSdkError;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4mzw"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doPay onResult code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":order:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;->val$orderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "bili onPayment cancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;->val$activity:Landroid/app/Activity;

    const-string v1, "\u53d6\u6d88\u652f\u4ed8"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;->fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->a(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;->fa:Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;->a(Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "bili onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/bili/KunlunProxyStubImpl4bili$6;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
