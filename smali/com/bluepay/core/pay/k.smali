.class Lcom/bluepay/core/pay/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/bluepay/core/pay/i;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/bluepay/data/Billing;


# direct methods
.method constructor <init>(Lcom/bluepay/core/pay/i;Ljava/lang/String;Lcom/bluepay/data/Billing;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/k;->a:Lcom/bluepay/core/pay/i;

    iput-object p2, p0, Lcom/bluepay/core/pay/k;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bluepay/core/pay/k;->c:Lcom/bluepay/data/Billing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/16 v6, 0xe

    const/4 v5, 0x0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/bluepay/data/j;->c(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "msisdn"

    iget-object v3, p0, Lcom/bluepay/core/pay/k;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productid"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bluepay/core/pay/k;->c:Lcom/bluepay/data/Billing;

    invoke-virtual {v4}, Lcom/bluepay/data/Billing;->getProductId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "price"

    iget-object v3, p0, Lcom/bluepay/core/pay/k;->c:Lcom/bluepay/data/Billing;

    invoke-virtual {v3}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "promotionid"

    invoke-static {}, Lcom/bluepay/pay/Client;->getPromotionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "transactionid"

    iget-object v3, p0, Lcom/bluepay/core/pay/k;->c:Lcom/bluepay/data/Billing;

    invoke-virtual {v3}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "msisdn="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "msisdn"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&productid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "productid"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&price="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bluepay/core/pay/k;->c:Lcom/bluepay/data/Billing;

    invoke-virtual {v3}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&promotionid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "promotionid"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&transactionId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "transactionid"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Lcom/bluepay/sdk/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "encrypt"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/bluepay/core/pay/k;->c:Lcom/bluepay/data/Billing;

    invoke-virtual {v3}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0, v2, v1}, Lcom/bluepay/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/bluepay/interfaceClass/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bluepay/interfaceClass/b;->a()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/bluepay/interfaceClass/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/core/pay/af;->b(Ljava/lang/String;)Lcom/bluepay/core/pay/af$a;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/bluepay/core/pay/af$a;->c(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/bluepay/data/e;->a:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    iget-object v0, p0, Lcom/bluepay/core/pay/k;->a:Lcom/bluepay/core/pay/i;

    iget-object v1, p0, Lcom/bluepay/core/pay/k;->c:Lcom/bluepay/data/Billing;

    invoke-static {v0, v1}, Lcom/bluepay/core/pay/i;->b(Lcom/bluepay/core/pay/i;Lcom/bluepay/data/Billing;)V

    iget-object v0, p0, Lcom/bluepay/core/pay/k;->a:Lcom/bluepay/core/pay/i;

    iget-object v1, p0, Lcom/bluepay/core/pay/k;->c:Lcom/bluepay/data/Billing;

    invoke-virtual {v1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bluepay/core/pay/k;->c:Lcom/bluepay/data/Billing;

    invoke-static {v0, v1, v2}, Lcom/bluepay/core/pay/i;->a(Lcom/bluepay/core/pay/i;Landroid/app/Activity;Lcom/bluepay/data/Billing;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/bluepay/core/pay/k;->a:Lcom/bluepay/core/pay/i;

    iget-object v1, v1, Lcom/bluepay/core/pay/i;->a:Lcom/bluepay/interfaceClass/c;

    const/16 v2, 0xe

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bluepay/core/pay/k;->c:Lcom/bluepay/data/Billing;

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/bluepay/core/pay/k;->c:Lcom/bluepay/data/Billing;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/bluepay/core/pay/k;->a:Lcom/bluepay/core/pay/i;

    iget-object v0, v0, Lcom/bluepay/core/pay/i;->a:Lcom/bluepay/interfaceClass/c;

    sget v1, Lcom/bluepay/data/e;->i:I

    iget-object v2, p0, Lcom/bluepay/core/pay/k;->c:Lcom/bluepay/data/Billing;

    invoke-interface {v0, v6, v1, v5, v2}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/bluepay/core/pay/k;->c:Lcom/bluepay/data/Billing;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "net work is error.Error code:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bluepay/interfaceClass/b;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/bluepay/core/pay/k;->a:Lcom/bluepay/core/pay/i;

    iget-object v0, v0, Lcom/bluepay/core/pay/i;->a:Lcom/bluepay/interfaceClass/c;

    const/16 v1, 0xe

    sget v2, Lcom/bluepay/data/e;->i:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bluepay/core/pay/k;->c:Lcom/bluepay/data/Billing;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
