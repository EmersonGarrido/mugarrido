.class Lcom/bluepay/core/pay/g;
.super Lcom/bluepay/interfaceClass/a;


# static fields
.field private static final b:Ljava/lang/String; = "ClientAOC"


# instance fields
.field private a:Lcom/bluepay/interfaceClass/c;


# direct methods
.method public constructor <init>(Lcom/bluepay/interfaceClass/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/bluepay/interfaceClass/a;-><init>()V

    iput-object p1, p0, Lcom/bluepay/core/pay/g;->a:Lcom/bluepay/interfaceClass/c;

    return-void
.end method

.method private d(Lcom/bluepay/data/Billing;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    const/4 v9, 0x4

    const/4 v12, 0x1

    const/16 v11, 0xe

    const/4 v10, 0x0

    sget-object v0, Lcom/bluepay/pay/Client;->m_hashChargeList:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "PRICE IS ERROR!"

    iput-object v0, p1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/bluepay/core/pay/g;->a:Lcom/bluepay/interfaceClass/c;

    sget v1, Lcom/bluepay/data/e;->i:I

    invoke-interface {v0, v11, v1, v10, p1}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/bluepay/core/pay/BlueManager;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->isShowLoading2Dialog()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_2
    invoke-static {}, Lcom/bluepay/data/j;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getReference()Lcom/bluepay/data/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bluepay/data/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getDesMsisdn()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/bluepay/pay/Client;->getUid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getSmsId()I

    move-result v6

    sget-object v0, Lcom/bluepay/pay/Client;->m_hashChargeList:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluepay/data/PriceNode;

    invoke-virtual {v0}, Lcom/bluepay/data/PriceNode;->getUpNum()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v10

    aput-object v2, v7, v12

    const/4 v8, 0x2

    aput-object v4, v7, v8

    const/4 v8, 0x3

    aput-object v5, v7, v8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v7}, Lcom/bluepay/sdk/b/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v9, "referenceId"

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "transactionId"

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "msisdn"

    invoke-interface {v8, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deviceId"

    invoke-interface {v8, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "smsId"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "dest"

    invoke-interface {v8, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "encrypt"

    invoke-interface {v8, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    invoke-static {v1, v8}, Lcom/bluepay/sdk/b/d;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/bluepay/interfaceClass/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lcom/bluepay/core/pay/BlueManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCheckNum()I

    move-result v0

    if-ge v0, v12, :cond_3

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/bluepay/core/pay/g;->a:Lcom/bluepay/interfaceClass/c;

    sget v1, Lcom/bluepay/data/e;->a:I

    invoke-interface {v0, v11, v1, v10, p1}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/bluepay/core/pay/g;->a:Lcom/bluepay/interfaceClass/c;

    sget v1, Lcom/bluepay/data/e;->i:I

    invoke-interface {v0, v11, v1, v10, p1}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bluepay/core/pay/g;->a:Lcom/bluepay/interfaceClass/c;

    sget v1, Lcom/bluepay/data/e;->k:I

    invoke-interface {v0, v11, v1, v10, p1}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    goto/16 :goto_0
.end method

.method private e(Lcom/bluepay/data/Billing;)V
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

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bluepay/core/pay/g;->a:Lcom/bluepay/interfaceClass/c;

    const/16 v1, 0xe

    sget v2, Lcom/bluepay/data/e;->i:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/bluepay/data/Billing;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/bluepay/data/Billing;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    sget-boolean v0, Lcom/bluepay/core/pay/ae;->b:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/g;->d(Lcom/bluepay/data/Billing;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/g;->e(Lcom/bluepay/data/Billing;)V

    goto :goto_0
.end method

.method public c(Lcom/bluepay/data/Billing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/g;->e(Lcom/bluepay/data/Billing;)V

    return-void
.end method
