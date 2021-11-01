.class final Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunlunPaymentAppDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "com.kunlun.platform.android.KunlunPaymentAppDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg.what:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":msg.obj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->a(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->a(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4f7f\u7528"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->bj()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->a(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->dismiss()V

    const-string v0, "alipay"

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->b(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->c(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->d(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->e(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun;->alipayPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "qqpay"

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->b(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->c(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->e(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->d(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun;->qqPurchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "weixin"

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->b(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->c(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->d(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunPaymentAppDialog$1;->bz:Lcom/kunlun/platform/android/KunlunPaymentAppDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunPaymentAppDialog;->e(Lcom/kunlun/platform/android/KunlunPaymentAppDialog;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun;->weixinPurchase(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method
