.class public abstract Lcom/bluepay/interfaceClass/a;
.super Ljava/lang/Object;


# instance fields
.field d:Lcom/bluepay/pay/IPayCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bluepay/interfaceClass/b;Lcom/bluepay/data/Billing;)I
    .locals 7

    const/16 v6, 0xe

    const/4 v5, 0x0

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/bluepay/interfaceClass/b;->a()I

    move-result v0

    sget v2, Lcom/bluepay/data/e;->a:I

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/bluepay/interfaceClass/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bluepay/interfaceClass/b;->b()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/bluepay/core/pay/af;->b(Ljava/lang/String;)Lcom/bluepay/core/pay/af$a;
    :try_end_0
    .catch Lcom/bluepay/sdk/a/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lcom/bluepay/core/pay/af$a;->c(Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/bluepay/sdk/a/a; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :try_start_2
    const-string v3, "price"

    invoke-virtual {v2, v3}, Lcom/bluepay/core/pay/af$a;->c(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/bluepay/data/Billing;->setPrice(I)V
    :try_end_2
    .catch Lcom/bluepay/sdk/a/a; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    :try_start_3
    sget v2, Lcom/bluepay/data/e;->c:I

    if-eq v0, v2, :cond_1

    sget v2, Lcom/bluepay/data/e;->b:I

    if-eq v0, v2, :cond_1

    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p2}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V
    :try_end_3
    .catch Lcom/bluepay/sdk/a/a; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/bluepay/sdk/a/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    sget v2, Lcom/bluepay/data/e;->i:I

    invoke-virtual {v0, v6, v2, v5, p2}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    move v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_4
    iput-object v0, p2, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v2, 0xe

    sget v3, Lcom/bluepay/data/e;->i:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, p2}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V
    :try_end_4
    .catch Lcom/bluepay/sdk/a/a; {:try_start_4 .. :try_end_4} :catch_0

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    sget v2, Lcom/bluepay/data/e;->o:I

    invoke-virtual {v0, v6, v2, v5, p2}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    move v0, v1

    goto :goto_0

    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public abstract a(Lcom/bluepay/data/Billing;)V
.end method

.method public abstract b(Lcom/bluepay/data/Billing;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation
.end method

.method public abstract c(Lcom/bluepay/data/Billing;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation
.end method
