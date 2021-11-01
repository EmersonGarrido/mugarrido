.class Lcom/bluepay/sdk/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/bluepay/data/g;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:[I


# direct methods
.method constructor <init>(Lcom/bluepay/data/g;Ljava/lang/String;[I)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/sdk/b/l;->a:Lcom/bluepay/data/g;

    iput-object p2, p0, Lcom/bluepay/sdk/b/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bluepay/sdk/b/l;->c:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v2, 0x6

    const/16 v11, 0xe

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/bluepay/sdk/b/l;->a:Lcom/bluepay/data/g;

    check-cast v0, Lcom/bluepay/data/Billing;

    invoke-static {}, Lcom/bluepay/data/j;->l()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bluepay/data/Billing;->getPayType()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    const-string v1, "operatorId"

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v1, "t_id"

    iget-object v3, p0, Lcom/bluepay/sdk/b/l;->b:Ljava/lang/String;

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "productid"

    invoke-static {}, Lcom/bluepay/pay/Client;->getProductId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "v"

    const v3, 0x5f66da4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "operatorId="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "operatorId"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&productid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "productid"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "&t_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "t_id"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/pay/Client;->getEncrypt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "encrypt"

    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bluepay/sdk/b/l;->c:[I

    array-length v1, v1

    if-lez v1, :cond_b

    iget-object v1, p0, Lcom/bluepay/sdk/b/l;->c:[I

    aget v1, v1, v10

    :goto_1
    const-string v3, "601"

    const-wide/16 v8, 0x2710

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v4, v6, v5}, Lcom/bluepay/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/bluepay/interfaceClass/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bluepay/interfaceClass/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bluepay/core/pay/af;->b(Ljava/lang/String;)Lcom/bluepay/core/pay/af$a;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "result:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/bluepay/sdk/a/a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    new-instance v3, Ljava/lang/String;

    const-string v8, "status"

    invoke-virtual {v7, v8}, Lcom/bluepay/core/pay/af$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/bluepay/sdk/a/a; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    :goto_2
    :try_start_3
    const-string v7, "404"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "201"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "default code:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/bluepay/sdk/a/a; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    if-nez v1, :cond_0

    :try_start_4
    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v2, 0xe

    sget v3, Lcom/bluepay/data/e;->h:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :goto_4
    return-void

    :cond_1
    const-string v1, "operatorId"

    sget v3, Lcom/bluepay/pay/Client;->m_iOperatorId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :try_start_5
    new-instance v3, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "status"

    invoke-virtual {v7, v9}, Lcom/bluepay/core/pay/af$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/bluepay/data/Billing;->getPayType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_3
    const-string v7, "200"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v2, 0xe

    sget v3, Lcom/bluepay/data/e;->a:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V
    :try_end_5
    .catch Lcom/bluepay/sdk/a/a; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_6
    invoke-virtual {v1}, Lcom/bluepay/sdk/a/a;->printStackTrace()V

    invoke-virtual {v1}, Lcom/bluepay/sdk/a/a;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v2, 0xe

    sget v3, Lcom/bluepay/data/e;->o:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    sget v2, Lcom/bluepay/data/e;->i:I

    invoke-virtual {v1, v11, v2, v10, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto :goto_4

    :pswitch_0
    :try_start_7
    invoke-virtual {v0}, Lcom/bluepay/data/Billing;->isGetResult()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v1, "200"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/bluepay/data/Billing;->getOrderTID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v2

    invoke-static {v1, v2}, Lcom/bluepay/core/pay/BlueManager;->a(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bluepay/data/Billing;->setPrice(I)V

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/4 v2, 0x3

    sget v3, Lcom/bluepay/data/e;->a:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto/16 :goto_4

    :cond_4
    const-string v1, "605"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v2, 0xe

    sget v3, Lcom/bluepay/data/e;->h:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto/16 :goto_4

    :cond_5
    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v2, 0xe

    sget v3, Lcom/bluepay/data/e;->h:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto/16 :goto_4

    :cond_6
    const-string v7, "601"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v2, 0xe

    sget v3, Lcom/bluepay/data/e;->y:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto/16 :goto_4

    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    sget v8, Lcom/bluepay/data/e;->s:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v2, 0xe

    sget v3, Lcom/bluepay/data/e;->s:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto/16 :goto_4

    :cond_8
    sget v7, Lcom/bluepay/data/e;->G:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v7, 0xe

    sget v8, Lcom/bluepay/data/e;->G:I

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v8, v9, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V
    :try_end_7
    .catch Lcom/bluepay/sdk/a/a; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_9
    :try_start_8
    iget-object v3, p0, Lcom/bluepay/sdk/b/l;->c:[I

    const/4 v7, 0x0

    aget v3, v3, v7

    if-le v3, v2, :cond_a

    const/16 v3, 0x2710

    :goto_5
    int-to-long v8, v3

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_3

    :cond_a
    invoke-static {}, Lcom/bluepay/sdk/b/h;->g()[I

    move-result-object v3

    aget v3, v3, v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_5

    :cond_b
    move v1, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
