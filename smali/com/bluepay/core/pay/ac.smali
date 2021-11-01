.class public Lcom/bluepay/core/pay/ac;
.super Lcom/bluepay/interfaceClass/a;


# instance fields
.field a:Lcom/bluepay/interfaceClass/c;


# direct methods
.method public constructor <init>(Lcom/bluepay/interfaceClass/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/bluepay/interfaceClass/a;-><init>()V

    iput-object p1, p0, Lcom/bluepay/core/pay/ac;->a:Lcom/bluepay/interfaceClass/c;

    return-void
.end method

.method private d(Lcom/bluepay/data/Billing;)V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/bluepay/pay/Client;->phoneNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    const-string v1, "msisdn"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getDesMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "productid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getProductId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "price"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "promotionid"

    invoke-static {}, Lcom/bluepay/pay/Client;->getPromotionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "transactionid"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "currency"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "schema"

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getScheme()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bluepay/pay/Client;->scheme:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Lcom/bluepay/sdk/b/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/pay/Client;->getEncrypt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bluepay/sdk/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "encrypt"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCPPayType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bluepay/data/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCPPayType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "line"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    invoke-static {v3, v4, v5}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2, v1, v0}, Lcom/bluepay/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/bluepay/interfaceClass/b;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/bluepay/core/pay/ac;->a(Lcom/bluepay/interfaceClass/b;Lcom/bluepay/data/Billing;)I
    :try_end_0
    .catch Lcom/bluepay/sdk/a/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/bluepay/sdk/a/a;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v1, 0xe

    sget v2, Lcom/bluepay/data/e;->i:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/bluepay/interfaceClass/b;Lcom/bluepay/data/Billing;)I
    .locals 6

    const/16 v5, 0xe

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/bluepay/interfaceClass/b;->a()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request code:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    sget v1, Lcom/bluepay/data/e;->a:I

    if-ne v0, v1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/bluepay/interfaceClass/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/core/pay/af;->b(Ljava/lang/String;)Lcom/bluepay/core/pay/af$a;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/bluepay/core/pay/af$a;->c(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "status:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    sget v2, Lcom/bluepay/data/e;->a:I

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    const-string v1, "info.paymentUrl.web"

    invoke-virtual {v0, v1}, Lcom/bluepay/core/pay/af$a;->b(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "info.paymentUrl.app"

    invoke-virtual {v0, v1}, Lcom/bluepay/core/pay/af$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/b/h;->k(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/bluepay/core/pay/ad;

    invoke-direct {v2, p0, v0, p2}, Lcom/bluepay/core/pay/ad;-><init>(Lcom/bluepay/core/pay/ac;Ljava/lang/String;Lcom/bluepay/data/Billing;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return v4

    :cond_0
    const/16 v0, 0x34

    invoke-static {v0}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p2, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/core/pay/ac;->a:Lcom/bluepay/interfaceClass/c;

    const/16 v1, 0xe

    sget v2, Lcom/bluepay/data/e;->i:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, p2}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V
    :try_end_0
    .catch Lcom/bluepay/sdk/a/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/bluepay/sdk/a/a;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/bluepay/core/pay/ac;->a:Lcom/bluepay/interfaceClass/c;

    sget v1, Lcom/bluepay/data/e;->i:I

    invoke-interface {v0, v5, v1, v4, p2}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/bluepay/core/pay/ac;->a:Lcom/bluepay/interfaceClass/c;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3, p2}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V
    :try_end_1
    .catch Lcom/bluepay/sdk/a/a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bluepay/core/pay/ac;->a:Lcom/bluepay/interfaceClass/c;

    sget v1, Lcom/bluepay/data/e;->o:I

    invoke-interface {v0, v5, v1, v4, p2}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

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

    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/ac;->d(Lcom/bluepay/data/Billing;)V

    return-void
.end method

.method public c(Lcom/bluepay/data/Billing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/ac;->d(Lcom/bluepay/data/Billing;)V

    return-void
.end method
