.class public Lcom/bluepay/core/pay/h;
.super Lcom/bluepay/interfaceClass/a;


# instance fields
.field a:Lcom/bluepay/interfaceClass/c;


# direct methods
.method public constructor <init>(Lcom/bluepay/interfaceClass/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/bluepay/interfaceClass/a;-><init>()V

    iput-object p1, p0, Lcom/bluepay/core/pay/h;->a:Lcom/bluepay/interfaceClass/c;

    return-void
.end method

.method private d(Lcom/bluepay/data/Billing;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    const/4 v6, 0x0

    const-string v0, "request the 12Call"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCPPayType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/data/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCPPayType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "vinaphone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "http://125.212.226.206:8080/charge/service/cashcard"

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "transactionId"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "cardNo"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCard()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCard()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    const-string v2, "serialNo"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getSerialNo()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "productId"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getProductId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "promotionId"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPromotionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "propsName"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPropsName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "msisdn"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getDesMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "customerId"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCustomId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "happy"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCPPayType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "cardType"

    const-string v3, "dtac"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "provider"

    const-string v3, "dtac"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/bluepay/sdk/b/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/pay/Client;->getEncrypt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bluepay/sdk/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "encrypt"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-static {v3, v4, v5}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v2, v1}, Lcom/bluepay/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/bluepay/interfaceClass/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bluepay/core/pay/h;->a(Lcom/bluepay/interfaceClass/b;Lcom/bluepay/data/Billing;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v2, "provider"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCPPayType()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/bluepay/core/pay/h;->a:Lcom/bluepay/interfaceClass/c;

    const/16 v2, 0xe

    sget v3, Lcom/bluepay/data/e;->m:I

    invoke-interface {v0, v2, v3, v6, p1}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "the get is ERROR >>>> "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget v1, Lcom/bluepay/data/e;->b:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCPPayType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "telkomsel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x6

    aput v2, v1, v6

    invoke-static {p1, v0, v1}, Lcom/bluepay/sdk/b/h;->a(Lcom/bluepay/data/g;Ljava/lang/String;[I)V

    goto :goto_1
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

    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/h;->d(Lcom/bluepay/data/Billing;)V

    return-void
.end method

.method public c(Lcom/bluepay/data/Billing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/h;->d(Lcom/bluepay/data/Billing;)V

    return-void
.end method
