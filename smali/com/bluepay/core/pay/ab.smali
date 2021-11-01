.class Lcom/bluepay/core/pay/ab;
.super Lcom/bluepay/interfaceClass/a;


# instance fields
.field a:Lcom/bluepay/interfaceClass/c;


# direct methods
.method public constructor <init>(Lcom/bluepay/interfaceClass/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/bluepay/interfaceClass/a;-><init>()V

    iput-object p1, p0, Lcom/bluepay/core/pay/ab;->a:Lcom/bluepay/interfaceClass/c;

    return-void
.end method

.method private d(Lcom/bluepay/data/Billing;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    const/16 v4, 0xe

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v0

    invoke-static {v0}, Lcom/bluepay/pay/ClientHelper;->getPreContent(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bluepay/sdk/b/g;->a(Lcom/bluepay/data/Billing;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    const-string v0, "unknow error:ClientUndown"

    iput-object v0, p1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/bluepay/core/pay/ab;->a:Lcom/bluepay/interfaceClass/c;

    sget v1, Lcom/bluepay/data/e;->i:I

    invoke-interface {v0, v4, v1, v3, p1}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bluepay/core/pay/ab;->a:Lcom/bluepay/interfaceClass/c;

    sget v1, Lcom/bluepay/data/e;->g:I

    invoke-interface {v0, v4, v1, v3, p1}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/bluepay/data/Billing;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/bluepay/data/Billing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/ab;->d(Lcom/bluepay/data/Billing;)V

    return-void
.end method

.method public c(Lcom/bluepay/data/Billing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/ab;->d(Lcom/bluepay/data/Billing;)V

    return-void
.end method
