.class Lcom/bluepay/core/pay/v;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bluepay/core/pay/u;

.field private final synthetic b:Lcom/bluepay/data/Billing;


# direct methods
.method constructor <init>(Lcom/bluepay/core/pay/u;Lcom/bluepay/data/Billing;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/v;->a:Lcom/bluepay/core/pay/u;

    iput-object p2, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v6, 0xe

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "transactionid"

    iget-object v2, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v2}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "productId"

    iget-object v2, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v2}, Lcom/bluepay/data/Billing;->getProductId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "promotionId"

    iget-object v2, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v2}, Lcom/bluepay/data/Billing;->getPromotionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "propsName"

    iget-object v2, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v2}, Lcom/bluepay/data/Billing;->getPropsName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "msisdn"

    iget-object v2, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v2}, Lcom/bluepay/data/Billing;->getDesMsisdn()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "provider"

    iget-object v2, p0, Lcom/bluepay/core/pay/v;->a:Lcom/bluepay/core/pay/u;

    invoke-static {v2}, Lcom/bluepay/core/pay/u;->a(Lcom/bluepay/core/pay/u;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "price"

    iget-object v2, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v2}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "customerId"

    iget-object v2, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v2}, Lcom/bluepay/data/Billing;->getCustomId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/bluepay/sdk/b/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

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

    iget-object v2, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v2}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v3}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v2}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/bluepay/data/j;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/bluepay/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/bluepay/interfaceClass/b;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/core/pay/v;->a:Lcom/bluepay/core/pay/u;

    iget-object v2, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v1, v0, v2}, Lcom/bluepay/core/pay/u;->a(Lcom/bluepay/interfaceClass/b;Lcom/bluepay/data/Billing;)I

    move-result v1

    sget v2, Lcom/bluepay/data/e;->b:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v1}, Lcom/bluepay/data/Billing;->getCPPayType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "offline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bluepay/interfaceClass/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/core/pay/af;->b(Ljava/lang/String;)Lcom/bluepay/core/pay/af$a;

    move-result-object v0

    const-string v1, "payment_code"

    invoke-virtual {v0, v1}, Lcom/bluepay/core/pay/af$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    const/16 v2, 0x35

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    iget-object v1, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v1, v0}, Lcom/bluepay/data/Billing;->setPaymentCode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/core/pay/v;->a:Lcom/bluepay/core/pay/u;

    iget-object v0, v0, Lcom/bluepay/core/pay/u;->a:Lcom/bluepay/interfaceClass/c;

    const/16 v1, 0xe

    sget v2, Lcom/bluepay/data/e;->b:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/bluepay/core/pay/v;->a:Lcom/bluepay/core/pay/u;

    iget-object v0, v0, Lcom/bluepay/core/pay/u;->a:Lcom/bluepay/interfaceClass/c;

    sget v1, Lcom/bluepay/data/e;->i:I

    iget-object v2, p0, Lcom/bluepay/core/pay/v;->b:Lcom/bluepay/data/Billing;

    invoke-interface {v0, v6, v1, v5, v2}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0
.end method
