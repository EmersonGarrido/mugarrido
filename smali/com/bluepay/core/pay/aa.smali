.class Lcom/bluepay/core/pay/aa;
.super Lcom/bluepay/interfaceClass/a;


# static fields
.field private static final a:Ljava/lang/String; = "ClientStandard"


# instance fields
.field private b:Lcom/bluepay/interfaceClass/c;


# direct methods
.method public constructor <init>(Lcom/bluepay/interfaceClass/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/bluepay/interfaceClass/a;-><init>()V

    iput-object p1, p0, Lcom/bluepay/core/pay/aa;->b:Lcom/bluepay/interfaceClass/c;

    return-void
.end method

.method private d(Lcom/bluepay/data/Billing;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v0

    invoke-static {v0}, Lcom/bluepay/pay/ClientHelper;->getPreContent(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bluepay/sdk/b/g;->a(Lcom/bluepay/data/Billing;Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isSendOk:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bluepay/core/pay/aa;->b:Lcom/bluepay/interfaceClass/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/core/pay/aa;->b:Lcom/bluepay/interfaceClass/c;

    const/16 v1, 0xe

    sget v2, Lcom/bluepay/data/e;->k:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;I)Z

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

    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/aa;->d(Lcom/bluepay/data/Billing;)V

    return-void
.end method

.method public c(Lcom/bluepay/data/Billing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/aa;->d(Lcom/bluepay/data/Billing;)V

    return-void
.end method
