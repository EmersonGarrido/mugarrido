.class final Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmm/purchasesdk/OnPurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;->a(Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)Lmm/purchasesdk/OnPurchaseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic iF:Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$2;->iF:Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$2;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$2;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAfterApply()V
    .locals 0

    return-void
.end method

.method public final onAfterDownload()V
    .locals 0

    return-void
.end method

.method public final onBeforeApply()V
    .locals 0

    return-void
.end method

.method public final onBeforeDownload()V
    .locals 0

    return-void
.end method

.method public final onBillingFinish(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    const-string v0, "KunlunProxyStubImpl4mmbilling"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "billing finish, status code = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TradeID"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "Paycode"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "KunlunProxyStubImpl4mmbilling"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "billing finish, tradeID = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",paycode = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1030000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1020000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1090003"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$2;->iF:Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;->c(Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$2;->val$orderId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$2;->iF:Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;->c(Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$2;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v5, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$2;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$2;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "mmbilling paySuccess"

    invoke-interface {v0, v5, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$2;->iF:Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;->d(Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u8d2d\u4e70\u6216\u8d2d\u4e70\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onInitFinish(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u521d\u59cb\u5316\u7ed3\u679c\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lmm/purchasesdk/Purchase;->getReason(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KunlunProxyStubImpl4mmbilling"

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$2;->iF:Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;->a(Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;)Lcom/kunlun/platform/android/Kunlun$initCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling$2;->iF:Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;->a(Lcom/kunlun/platform/android/gamecenter/mmbilling/KunlunProxyStubImpl4mmbilling;)Lcom/kunlun/platform/android/Kunlun$initCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onQueryFinish(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final onUnsubscribeFinish(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
