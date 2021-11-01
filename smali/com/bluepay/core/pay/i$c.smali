.class Lcom/bluepay/core/pay/i$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluepay/core/pay/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Lcom/bluepay/data/Billing;

.field b:I

.field c:I

.field final synthetic d:Lcom/bluepay/core/pay/i;


# direct methods
.method public constructor <init>(Lcom/bluepay/core/pay/i;Lcom/bluepay/data/Billing;)V
    .locals 1

    iput-object p1, p0, Lcom/bluepay/core/pay/i$c;->d:Lcom/bluepay/core/pay/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x78

    iput v0, p0, Lcom/bluepay/core/pay/i$c;->b:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/bluepay/core/pay/i$c;->c:I

    iput-object p2, p0, Lcom/bluepay/core/pay/i$c;->a:Lcom/bluepay/data/Billing;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget v0, p0, Lcom/bluepay/core/pay/i$c;->b:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/core/pay/i$c;->d:Lcom/bluepay/core/pay/i;

    iget-object v0, v0, Lcom/bluepay/core/pay/i;->c:Landroid/os/Handler;

    iget v1, p0, Lcom/bluepay/core/pay/i$c;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/bluepay/core/pay/i$c;->d:Lcom/bluepay/core/pay/i;

    iget-object v0, v0, Lcom/bluepay/core/pay/i;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget v1, p0, Lcom/bluepay/core/pay/i$c;->b:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/bluepay/core/pay/i$c;->d:Lcom/bluepay/core/pay/i;

    iget-object v1, v1, Lcom/bluepay/core/pay/i;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget v0, p0, Lcom/bluepay/core/pay/i$c;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/bluepay/core/pay/i$c;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
