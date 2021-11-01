.class final Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x3

    const/high16 v4, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    const-string v0, "kunlun.QQPayDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "msg.what:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "\u6b63\u5728\u67e5\u8be2\u4f59\u989d\uff0c\u8bf7\u7a0d\u540e..."

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->b(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->c(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1, v3}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->d(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u4f59\u989d\u5931\u8d25\uff0c\u8bf7\u5237\u65b0\u4f59\u989d"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->e(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->b(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->b(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->e(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->c(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->b(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->c(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->b(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;I)V

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x4

    :goto_1
    const/16 v1, 0x8

    if-lt v0, v1, :cond_5

    const-wide/32 v0, 0x493e0

    invoke-virtual {p0, v3, v0, v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->f(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->e(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " \u5143"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->e(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->b(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v1

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->g(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->b(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v2

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v3}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->e(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u5143\u8d2d\u4e70"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->removeMessages(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->g(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u786e\u8ba4\u8d2d\u4e70"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_7
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v5, :cond_8

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->dismiss()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->h(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const-string v1, "\u8d2d\u4e70\u6210\u529f"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget v0, p1, Landroid/os/Message;->what:I

    if-le v0, v5, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "\u6b63\u5728\u67e5\u8be2\u5145\u503c\u7ed3\u679c\uff0c\u8bf7\u7a0d\u540e..."

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->b(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->js:Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->c(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;)I

    move-result v2

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x64

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;->a(Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog;II)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/kunlun/platform/android/gamecenter/qq/QQPayDialog$1;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
