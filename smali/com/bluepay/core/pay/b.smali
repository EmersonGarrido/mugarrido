.class Lcom/bluepay/core/pay/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Lcom/bluepay/pay/BlueMessage;


# direct methods
.method constructor <init>(ILcom/bluepay/pay/BlueMessage;)V
    .locals 0

    iput p1, p0, Lcom/bluepay/core/pay/b;->a:I

    iput-object p2, p0, Lcom/bluepay/core/pay/b;->b:Lcom/bluepay/pay/BlueMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/bluepay/core/pay/BlueManager;->d()Lcom/bluepay/pay/IPayCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bluepay/core/pay/BlueManager;->d()Lcom/bluepay/pay/IPayCallback;

    move-result-object v0

    iget v1, p0, Lcom/bluepay/core/pay/b;->a:I

    iget-object v2, p0, Lcom/bluepay/core/pay/b;->b:Lcom/bluepay/pay/BlueMessage;

    invoke-virtual {v0, v1, v2}, Lcom/bluepay/pay/IPayCallback;->onFinished(ILcom/bluepay/pay/BlueMessage;)V

    :cond_0
    return-void
.end method
