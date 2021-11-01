.class final Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wandoujia/mariosdk/plugin/api/model/callback/OnPayFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$5;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$5;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPayFail(Lcom/wandoujia/mariosdk/plugin/api/model/model/PayResult;)V
    .locals 3

    const/16 v2, -0x65

    const-string v0, "FAIL"

    invoke-interface {p1}, Lcom/wandoujia/mariosdk/plugin/api/model/model/PayResult;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$5;->val$activity:Landroid/app/Activity;

    const-string v1, "\u5145\u503c\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$5;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;->c(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const-string v1, "\u5145\u503c\u5931\u8d25"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    const-string v0, "CANCEL"

    invoke-interface {p1}, Lcom/wandoujia/mariosdk/plugin/api/model/model/PayResult;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$5;->val$activity:Landroid/app/Activity;

    const-string v1, "\u53d6\u6d88\u5145\u503c"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$5;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;->c(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u5145\u503c"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onPaySuccess(Lcom/wandoujia/mariosdk/plugin/api/model/model/PayResult;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$5;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;->a(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$5;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;->a(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-interface {p1}, Lcom/wandoujia/mariosdk/plugin/api/model/model/PayResult;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$5;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$5;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;->c(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const-string v1, "wdj onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
