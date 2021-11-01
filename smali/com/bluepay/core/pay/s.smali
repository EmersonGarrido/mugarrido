.class public Lcom/bluepay/core/pay/s;
.super Lcom/bluepay/interfaceClass/a;


# instance fields
.field a:Lcom/bluepay/interfaceClass/c;


# direct methods
.method public constructor <init>(Lcom/bluepay/interfaceClass/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/bluepay/interfaceClass/a;-><init>()V

    iput-object p1, p0, Lcom/bluepay/core/pay/s;->a:Lcom/bluepay/interfaceClass/c;

    return-void
.end method

.method static synthetic a(Lcom/bluepay/core/pay/s;Lcom/bluepay/data/Billing;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bluepay/core/pay/s;->a(Lcom/bluepay/data/Billing;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/bluepay/data/Billing;Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0xe

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getShowUI()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_0
    invoke-static {}, Lcom/bluepay/data/j;->o()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "transactionId"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    const-string v2, "price"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "telco_name"

    sget-object v3, Lcom/bluepay/pay/Client;->telcoName:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "msisdn"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getDesMsisdn()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    invoke-virtual {p0, v0, p1}, Lcom/bluepay/core/pay/s;->a(Lcom/bluepay/interfaceClass/b;Lcom/bluepay/data/Billing;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const-string v0, " something was wrong"

    iput-object v0, p1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/bluepay/core/pay/s;->a:Lcom/bluepay/interfaceClass/c;

    sget v1, Lcom/bluepay/data/e;->i:I

    invoke-interface {v0, v7, v1, v6, p1}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/bluepay/core/pay/s;->a:Lcom/bluepay/interfaceClass/c;

    sget v2, Lcom/bluepay/data/e;->m:I

    invoke-interface {v0, v7, v2, v6, p1}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

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

    goto :goto_0
.end method

.method private d(Lcom/bluepay/data/Billing;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    const-string v0, "request the createTransaction"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/pay/Client;->phoneNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bluepay/core/pay/t;

    invoke-direct {v1, p0, p1}, Lcom/bluepay/core/pay/t;-><init>(Lcom/bluepay/core/pay/s;Lcom/bluepay/data/Billing;)V

    invoke-static {v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Lcom/bluepay/interfaceClass/d;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/bluepay/pay/Client;->phoneNum()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bluepay/core/pay/s;->a(Lcom/bluepay/data/Billing;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/bluepay/interfaceClass/b;Lcom/bluepay/data/Billing;)I
    .locals 7

    const/16 v6, 0xe

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/bluepay/interfaceClass/b;->a()I

    move-result v2

    sget v3, Lcom/bluepay/data/e;->a:I

    if-ne v2, v3, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/bluepay/interfaceClass/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/bluepay/core/pay/af;->b(Ljava/lang/String;)Lcom/bluepay/core/pay/af$a;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Lcom/bluepay/core/pay/af$a;->c(Ljava/lang/String;)I

    move-result v3

    sget v4, Lcom/bluepay/data/e;->b:I

    if-ne v3, v4, :cond_4

    const-string v3, "telkomsel"

    sget-object v4, Lcom/bluepay/pay/Client;->telcoName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v2, Lcom/bluepay/a/c;

    invoke-virtual {p2}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Lcom/bluepay/a/c;-><init>(Landroid/content/Context;Lcom/bluepay/data/Billing;)V
    :try_end_0
    .catch Lcom/bluepay/sdk/a/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/bluepay/sdk/a/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/bluepay/core/pay/s;->a:Lcom/bluepay/interfaceClass/c;

    sget v2, Lcom/bluepay/data/e;->i:I

    invoke-interface {v0, v6, v2, v1, p2}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v3, "shortcode"

    invoke-virtual {v2, v3}, Lcom/bluepay/core/pay/af$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "content"

    invoke-virtual {v2, v4}, Lcom/bluepay/core/pay/af$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3}, Lcom/bluepay/data/Billing;->setShorCode(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/bluepay/data/Billing;->setSmsContent(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/bluepay/data/Billing;->setPaytype(I)V

    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->BillingList:Ljava/util/Vector;

    invoke-virtual {v2, p2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/4 v3, 0x5

    invoke-virtual {p2}, Lcom/bluepay/data/Billing;->getPayType()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5, p2}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V
    :try_end_1
    .catch Lcom/bluepay/sdk/a/a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

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

    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/s;->d(Lcom/bluepay/data/Billing;)V

    return-void
.end method

.method public c(Lcom/bluepay/data/Billing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/s;->d(Lcom/bluepay/data/Billing;)V

    return-void
.end method
