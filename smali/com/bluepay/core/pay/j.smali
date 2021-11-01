.class Lcom/bluepay/core/pay/j;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/bluepay/core/pay/i;


# direct methods
.method constructor <init>(Lcom/bluepay/core/pay/i;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/j;->a:Lcom/bluepay/core/pay/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bluepay/core/pay/j;->a:Lcom/bluepay/core/pay/i;

    invoke-static {v0}, Lcom/bluepay/core/pay/i;->a(Lcom/bluepay/core/pay/i;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Retry"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bluepay/core/pay/j;->a:Lcom/bluepay/core/pay/i;

    invoke-static {v0}, Lcom/bluepay/core/pay/i;->a(Lcom/bluepay/core/pay/i;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
