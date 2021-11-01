.class Lcom/bluepay/core/pay/q;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/bluepay/core/pay/i$a;


# direct methods
.method constructor <init>(Lcom/bluepay/core/pay/i$a;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/q;->a:Lcom/bluepay/core/pay/i$a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bluepay/core/pay/q;->a:Lcom/bluepay/core/pay/i$a;

    invoke-static {v0}, Lcom/bluepay/core/pay/i$a;->a(Lcom/bluepay/core/pay/i$a;)Lcom/bluepay/core/pay/i;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/core/pay/q;->a:Lcom/bluepay/core/pay/i$a;

    iget-object v1, v1, Lcom/bluepay/core/pay/i$a;->a:Lcom/bluepay/data/Billing;

    invoke-static {v0, v1}, Lcom/bluepay/core/pay/i;->a(Lcom/bluepay/core/pay/i;Lcom/bluepay/data/Billing;)V

    return-void
.end method
