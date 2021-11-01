.class Lcom/bluepay/core/pay/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bluepay/core/pay/i$b;


# direct methods
.method constructor <init>(Lcom/bluepay/core/pay/i$b;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/r;->a:Lcom/bluepay/core/pay/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bluepay/core/pay/r;->a:Lcom/bluepay/core/pay/i$b;

    invoke-static {v0}, Lcom/bluepay/core/pay/i$b;->a(Lcom/bluepay/core/pay/i$b;)Lcom/bluepay/core/pay/i;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/core/pay/i;->a(Lcom/bluepay/core/pay/i;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/core/pay/r;->a:Lcom/bluepay/core/pay/i$b;

    iget v0, v0, Lcom/bluepay/core/pay/i$b;->b:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/core/pay/r;->a:Lcom/bluepay/core/pay/i$b;

    invoke-static {v0}, Lcom/bluepay/core/pay/i$b;->a(Lcom/bluepay/core/pay/i$b;)Lcom/bluepay/core/pay/i;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/core/pay/i;->a(Lcom/bluepay/core/pay/i;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bluepay/core/pay/r;->a:Lcom/bluepay/core/pay/i$b;

    iget v2, v2, Lcom/bluepay/core/pay/i$b;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/bluepay/core/pay/r;->a:Lcom/bluepay/core/pay/i$b;

    iget v0, v0, Lcom/bluepay/core/pay/i$b;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bluepay/core/pay/r;->a:Lcom/bluepay/core/pay/i$b;

    invoke-static {v0}, Lcom/bluepay/core/pay/i$b;->a(Lcom/bluepay/core/pay/i$b;)Lcom/bluepay/core/pay/i;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/core/pay/i;->a(Lcom/bluepay/core/pay/i;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Retry"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/bluepay/core/pay/r;->a:Lcom/bluepay/core/pay/i$b;

    iget v1, v0, Lcom/bluepay/core/pay/i$b;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/bluepay/core/pay/i$b;->b:I

    return-void
.end method
