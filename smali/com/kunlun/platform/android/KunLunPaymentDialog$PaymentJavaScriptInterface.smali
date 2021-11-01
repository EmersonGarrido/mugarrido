.class final Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;
.super Lcom/kunlun/platform/android/common/JavaScriptInterface;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunLunPaymentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PaymentJavaScriptInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunLunPaymentDialog;)V
    .locals 3

    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {p1}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->c(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {p1}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->d(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/kunlun/platform/android/common/JavaScriptInterface;-><init>(Landroid/content/Context;Landroid/app/Dialog;Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final alipayGateway(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "com.kunlun.platform.android.KunLunDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":alipayGateway:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromweb"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/kunlun/platform/android/Kunlun;->alipayGateway(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    return-void
.end method

.method public final doUnFinishedPurchase(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "com.kunlun.platform.android.KunLunDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":doUnFinishedPurchase:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->getInstance(Landroid/content/Context;)Lcom/kunlun/platform/android/KunlunOrderListUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->doUnFinishedPurchase()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final goBack()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->e(Lcom/kunlun/platform/android/KunLunPaymentDialog;)V

    return-void
.end method

.method public final kunlunAlipay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "com.kunlun.platform.android.KunLunDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":kunlunAliPay:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromweb"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/kunlun/platform/android/Kunlun;->alipayPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    return-void
.end method

.method public final kunlunAmazon(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "com.kunlun.platform.android.KunLunDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":kunlunAmazon:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromweb"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/Kunlun;->amazonPurchase(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    return-void
.end method

.method public final kunlunBluePay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "com.kunlun.platform.android.KunLunDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":kunlunBluePay:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":cardNo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":payType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":currency:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":serialNo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromweb"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/kunlun/platform/android/Kunlun;->bluePayPurchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    return-void
.end method

.method public final kunlunClose()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    const-string v0, "KunlunDialog kunlunClose"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    return-void
.end method

.method public final kunlunGooglePlay(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "com.kunlun.platform.android.KunLunDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":kunlunGooglePlay:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromweb"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/Kunlun;->googlePlayPurchase(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    return-void
.end method

.method public final kunlunGooglePlayV3(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "com.kunlun.platform.android.KunLunDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":kunlunGooglePlayV3:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromweb"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/Kunlun;->googlePlayPurchase(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    return-void
.end method

.method public final kunlunKT(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "com.kunlun.platform.android.KunLunDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":kunlunKT:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromweb"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/kunlun/platform/android/Kunlun;->kTPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    return-void
.end method

.method public final kunlunQQPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "com.kunlun.platform.android.KunLunDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":kunlunQQPay::total_fee:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":desc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":attach:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromweb"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun;->qqPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    return-void
.end method

.method public final kunlunTStore(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "com.kunlun.platform.android.KunLunDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":kunlunTStore:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromweb"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/kunlun/platform/android/Kunlun;->tStorePurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    return-void
.end method

.method public final kunlunTStoreV13(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "com.kunlun.platform.android.KunLunDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":kunlunTStore:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromweb"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/kunlun/platform/android/Kunlun;->tStroePurchaseV13(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    return-void
.end method

.method public final kunlunTaiWanMobile(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "com.kunlun.platform.android.KunLunDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":kunlunTaiWanMobile:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromweb"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/Kunlun;->twMobilePurchase(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    return-void
.end method

.method public final kunlunTiantianzhuanPay(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "com.kunlun.platform.android.KunLunDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":kunlunTiantianzhuanPay::contentId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromweb"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/Kunlun;->tiantianzhuanPurchase(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    return-void
.end method

.method public final kunlunUpay(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "com.kunlun.platform.android.KunLunDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":kunlunUpay:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromweb"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/Kunlun;->upayPurchase(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    return-void
.end method

.method public final kunlunWeixinPay(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "com.kunlun.platform.android.KunLunDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":kunlunWeixinPay::total_fee:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":desc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fromweb"

    const-string v1, "true"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunConf;->setParam(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->a(Lcom/kunlun/platform/android/KunLunPaymentDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/kunlun/platform/android/Kunlun;->weixinPurchase(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunPaymentDialog$PaymentJavaScriptInterface;->this$0:Lcom/kunlun/platform/android/KunLunPaymentDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunPaymentDialog;->dismiss()V

    return-void
.end method
