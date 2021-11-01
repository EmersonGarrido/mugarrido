.class final Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmm/purchasesdk/OnPurchaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->a(Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)Lmm/purchasesdk/OnPurchaseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

.field private synthetic dx:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$2;->dx:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;

    iput-object p2, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$2;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

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
    .locals 5
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

    const-string v0, "KunlunSmsProxy4mobile"

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

    const-string v2, "KunlunSmsProxy4mobile"

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

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$2;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$2;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/4 v1, 0x0

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$2;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$2;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/4 v1, 0x1

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

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

    iget-object v1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$2;->dx:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;

    invoke-static {v1}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->a(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;)Lcom/kunlun/platform/android/Kunlun$initCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$2;->dx:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;

    invoke-static {v1}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->a(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;)Lcom/kunlun/platform/android/Kunlun$initCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile$2;->dx:Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;

    invoke-static {v0}, Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;->b(Lcom/kunlun/platform/android/carrier/KunlunSmsProxy4mobile;)V

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
