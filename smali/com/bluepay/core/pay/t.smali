.class Lcom/bluepay/core/pay/t;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bluepay/interfaceClass/d;


# instance fields
.field final synthetic a:Lcom/bluepay/core/pay/s;

.field private final synthetic b:Lcom/bluepay/data/Billing;


# direct methods
.method constructor <init>(Lcom/bluepay/core/pay/s;Lcom/bluepay/data/Billing;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/t;->a:Lcom/bluepay/core/pay/s;

    iput-object p2, p0, Lcom/bluepay/core/pay/t;->b:Lcom/bluepay/data/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/core/pay/t;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v0, p2}, Lcom/bluepay/data/Billing;->setDesMsisdn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/core/pay/t;->a:Lcom/bluepay/core/pay/s;

    iget-object v1, p0, Lcom/bluepay/core/pay/t;->b:Lcom/bluepay/data/Billing;

    invoke-static {v0, v1, p2}, Lcom/bluepay/core/pay/s;->a(Lcom/bluepay/core/pay/s;Lcom/bluepay/data/Billing;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bluepay/core/pay/t;->a:Lcom/bluepay/core/pay/s;

    iget-object v0, v0, Lcom/bluepay/core/pay/s;->a:Lcom/bluepay/interfaceClass/c;

    const/16 v1, 0xe

    sget v2, Lcom/bluepay/data/e;->i:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bluepay/core/pay/t;->b:Lcom/bluepay/data/Billing;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0
.end method
