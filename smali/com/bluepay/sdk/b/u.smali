.class Lcom/bluepay/sdk/b/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/bluepay/pay/IPayCallback;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/app/Activity;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:I


# direct methods
.method constructor <init>(Lcom/bluepay/pay/IPayCallback;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/sdk/b/u;->a:Lcom/bluepay/pay/IPayCallback;

    iput-object p2, p0, Lcom/bluepay/sdk/b/u;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bluepay/sdk/b/u;->c:Landroid/app/Activity;

    iput-object p4, p0, Lcom/bluepay/sdk/b/u;->d:Ljava/lang/String;

    iput p5, p0, Lcom/bluepay/sdk/b/u;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v1, 0x3

    const/4 v0, 0x6

    new-instance v5, Lcom/bluepay/pay/BlueMessage;

    invoke-direct {v5}, Lcom/bluepay/pay/BlueMessage;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/bluepay/sdk/b/u;->a:Lcom/bluepay/pay/IPayCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bluepay/sdk/b/u;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/bluepay/sdk/b/u;->c:Landroid/app/Activity;

    if-nez v2, :cond_1

    :cond_0
    sget v0, Lcom/bluepay/data/e;->i:I

    invoke-virtual {v5, v0}, Lcom/bluepay/pay/BlueMessage;->setCode(I)V

    const-string v0, "parameter error"

    invoke-virtual {v5, v0}, Lcom/bluepay/pay/BlueMessage;->setDesc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/sdk/b/u;->a:Lcom/bluepay/pay/IPayCallback;

    iget-object v1, p0, Lcom/bluepay/sdk/b/u;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v5}, Lcom/bluepay/sdk/b/h;->a(Lcom/bluepay/pay/IPayCallback;Landroid/app/Activity;Lcom/bluepay/pay/BlueMessage;)V

    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/bluepay/pay/Client;->m_BankChargeInfo:Lcom/bluepay/data/b;

    iget-boolean v2, v2, Lcom/bluepay/data/b;->c:Z

    if-eqz v2, :cond_5

    sget v2, Lcom/bluepay/data/b;->d:I

    :goto_1
    iget-object v3, p0, Lcom/bluepay/sdk/b/u;->c:Landroid/app/Activity;

    const-string v4, ""

    const-string v6, "Loading"

    invoke-static {v3, v4, v6}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/bluepay/data/j;->l()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/bluepay/sdk/b/u;->d:Ljava/lang/String;

    const-string v4, "line"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v2, 0x13

    :cond_2
    iget-object v3, p0, Lcom/bluepay/sdk/b/u;->d:Ljava/lang/String;

    const-string v4, "offline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v2, 0x19

    :cond_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v3, "operatorId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "t_id"

    iget-object v3, p0, Lcom/bluepay/sdk/b/u;->b:Ljava/lang/String;

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productid"

    invoke-static {}, Lcom/bluepay/pay/Client;->getProductId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "v"

    const v3, 0x5f66da4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "operatorId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "operatorId"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&productid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "productid"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&t_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "t_id"

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-interface {v7, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p0, Lcom/bluepay/sdk/b/u;->e:I

    if-le v2, v1, :cond_6

    iget v2, p0, Lcom/bluepay/sdk/b/u;->e:I

    if-ge v2, v0, :cond_6

    iget v0, p0, Lcom/bluepay/sdk/b/u;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    const/16 v1, 0x7d0

    move v12, v1

    move v1, v0

    move v0, v12

    :goto_3
    const/4 v3, 0x0

    add-int/lit8 v2, v1, -0x1

    :try_start_1
    iget-object v1, p0, Lcom/bluepay/sdk/b/u;->c:Landroid/app/Activity;

    invoke-static {v1, v6, v8, v7}, Lcom/bluepay/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/bluepay/interfaceClass/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bluepay/interfaceClass/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/core/pay/af;->b(Ljava/lang/String;)Lcom/bluepay/core/pay/af$a;

    move-result-object v3

    const-string v1, "status"

    invoke-virtual {v3, v1}, Lcom/bluepay/core/pay/af$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    move v4, v1

    :goto_4
    :try_start_2
    invoke-virtual {v5, v4}, Lcom/bluepay/pay/BlueMessage;->setCode(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "price"

    invoke-virtual {v3, v9}, Lcom/bluepay/core/pay/af$a;->c(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/bluepay/pay/BlueMessage;->setPrice(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    if-nez v2, :cond_7

    :try_start_4
    iget-object v0, p0, Lcom/bluepay/sdk/b/u;->a:Lcom/bluepay/pay/IPayCallback;

    iget-object v1, p0, Lcom/bluepay/sdk/b/u;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v5}, Lcom/bluepay/sdk/b/h;->a(Lcom/bluepay/pay/IPayCallback;Landroid/app/Activity;Lcom/bluepay/pay/BlueMessage;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    instance-of v0, v1, Lcom/bluepay/sdk/a/a;

    if-eqz v0, :cond_a

    move-object v0, v1

    check-cast v0, Lcom/bluepay/sdk/a/a;

    invoke-virtual {v0}, Lcom/bluepay/sdk/a/a;->a()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/bluepay/pay/BlueMessage;->setCode(I)V

    check-cast v1, Lcom/bluepay/sdk/a/a;

    invoke-virtual {v1}, Lcom/bluepay/sdk/a/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/bluepay/pay/BlueMessage;->setDesc(Ljava/lang/String;)V

    :goto_6
    iget-object v0, p0, Lcom/bluepay/sdk/b/u;->a:Lcom/bluepay/pay/IPayCallback;

    iget-object v1, p0, Lcom/bluepay/sdk/b/u;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v5}, Lcom/bluepay/sdk/b/h;->a(Lcom/bluepay/pay/IPayCallback;Landroid/app/Activity;Lcom/bluepay/pay/BlueMessage;)V

    goto/16 :goto_0

    :cond_5
    :try_start_5
    sget v2, Lcom/bluepay/pay/Client;->m_iOperatorId:I

    goto/16 :goto_1

    :cond_6
    iget v2, p0, Lcom/bluepay/sdk/b/u;->e:I

    if-gt v2, v0, :cond_4

    move v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v4, "status"

    invoke-virtual {v3, v4}, Lcom/bluepay/core/pay/af$a;->c(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/bluepay/pay/BlueMessage;->setDesc(Ljava/lang/String;)V

    goto :goto_4

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/bluepay/pay/BlueMessage;->setDesc(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    sget v1, Lcom/bluepay/data/e;->b:I

    if-eq v4, v1, :cond_8

    sget v1, Lcom/bluepay/data/e;->h:I

    if-ne v4, v1, :cond_9

    :cond_8
    add-int/lit8 v1, v0, 0x1

    int-to-long v10, v0

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    if-nez v2, :cond_b

    sget v0, Lcom/bluepay/data/e;->h:I

    invoke-virtual {v5, v0}, Lcom/bluepay/pay/BlueMessage;->setCode(I)V

    iget-object v0, p0, Lcom/bluepay/sdk/b/u;->a:Lcom/bluepay/pay/IPayCallback;

    iget-object v1, p0, Lcom/bluepay/sdk/b/u;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v5}, Lcom/bluepay/sdk/b/h;->a(Lcom/bluepay/pay/IPayCallback;Landroid/app/Activity;Lcom/bluepay/pay/BlueMessage;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/bluepay/sdk/b/u;->a:Lcom/bluepay/pay/IPayCallback;

    iget-object v1, p0, Lcom/bluepay/sdk/b/u;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v5}, Lcom/bluepay/sdk/b/h;->a(Lcom/bluepay/pay/IPayCallback;Landroid/app/Activity;Lcom/bluepay/pay/BlueMessage;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    :cond_a
    sget v0, Lcom/bluepay/data/e;->i:I

    invoke-virtual {v5, v0}, Lcom/bluepay/pay/BlueMessage;->setCode(I)V

    const/16 v0, 0x2d

    invoke-static {v0}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/bluepay/pay/BlueMessage;->setDesc(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    move v0, v1

    move v1, v2

    goto/16 :goto_3
.end method
