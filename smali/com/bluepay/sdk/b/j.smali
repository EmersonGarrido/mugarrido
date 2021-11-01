.class Lcom/bluepay/sdk/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/bluepay/pay/IPayCallback;

.field private final synthetic b:Lcom/bluepay/pay/BlueMessage;


# direct methods
.method constructor <init>(Lcom/bluepay/pay/IPayCallback;Lcom/bluepay/pay/BlueMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/sdk/b/j;->a:Lcom/bluepay/pay/IPayCallback;

    iput-object p2, p0, Lcom/bluepay/sdk/b/j;->b:Lcom/bluepay/pay/BlueMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    iget-object v0, p0, Lcom/bluepay/sdk/b/j;->a:Lcom/bluepay/pay/IPayCallback;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/bluepay/sdk/b/j;->b:Lcom/bluepay/pay/BlueMessage;

    invoke-virtual {v0, v1, v2}, Lcom/bluepay/pay/IPayCallback;->onFinished(ILcom/bluepay/pay/BlueMessage;)V

    return-void
.end method
