.class Lcom/bluepay/core/pay/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/bluepay/data/g;


# direct methods
.method constructor <init>(Lcom/bluepay/data/g;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/16 v9, 0x1f4

    const/16 v8, 0x28

    const/4 v7, 0x0

    const/16 v6, 0xd

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/bluepay/data/j;->s()Ljava/lang/String;

    move-result-object v1

    const-string v2, "msisdn"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bluepay/pay/Client;->getIMEI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "imei"

    invoke-static {}, Lcom/bluepay/pay/Client;->getIMEI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {}, Lcom/bluepay/pay/Client;->getIMSI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "0000000000"

    invoke-static {}, Lcom/bluepay/pay/Client;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "imsi"

    invoke-static {}, Lcom/bluepay/pay/Client;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "currency"

    iget-object v3, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-virtual {v3}, Lcom/bluepay/data/g;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "promotion_id"

    invoke-static {}, Lcom/bluepay/pay/Client;->getPromotionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "trans_id"

    iget-object v3, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-virtual {v3}, Lcom/bluepay/data/g;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "price"

    iget-object v3, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-virtual {v3}, Lcom/bluepay/data/g;->getPrice()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "productid"

    invoke-static {}, Lcom/bluepay/pay/Client;->getProductId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {v0}, Lcom/bluepay/sdk/b/c;->a(Ljava/util/Map;)Ljava/lang/String;

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

    invoke-static {v3, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "encrypt"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "params"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-virtual {v3}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v2, v0}, Lcom/bluepay/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/bluepay/interfaceClass/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bluepay/interfaceClass/b;->a()I

    move-result v1

    sget v3, Lcom/bluepay/data/e;->a:I

    if-ne v1, v3, :cond_7

    invoke-virtual {v0}, Lcom/bluepay/interfaceClass/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/core/pay/af;->b(Ljava/lang/String;)Lcom/bluepay/core/pay/af$a;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1}, Lcom/bluepay/core/pay/af$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "200"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "offer_info"

    invoke-virtual {v0, v3}, Lcom/bluepay/core/pay/af$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-virtual {v3}, Lcom/bluepay/data/g;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-virtual {v3}, Lcom/bluepay/data/g;->getPrice()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "@"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-virtual {v3}, Lcom/bluepay/data/g;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/bluepay/a/a;->d:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "template"

    const-string v4, "system"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "bt_id"

    iget-object v4, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-virtual {v4}, Lcom/bluepay/data/g;->getTransactionId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lcom/bluepay/sdk/b/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/pay/Client;->getEncrypt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bluepay/sdk/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "encrypt"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-virtual {v3}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {}, Lcom/bluepay/data/j;->u()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2, v1}, Lcom/bluepay/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/bluepay/interfaceClass/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bluepay/interfaceClass/b;->a()I

    move-result v1

    sget v2, Lcom/bluepay/data/e;->a:I

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-virtual {v2}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/bluepay/ui/BlueADPayActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "BluelURL"

    const-string v3, "url"

    invoke-virtual {v0, v3}, Lcom/bluepay/core/pay/af$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-virtual {v0}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Lcom/bluepay/sdk/a/a; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const-string v2, "imei"

    invoke-static {}, Lcom/bluepay/pay/Client;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v1, 0xd

    sget v2, Lcom/bluepay/data/e;->j:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V
    :try_end_1
    .catch Lcom/bluepay/sdk/a/a; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/bluepay/sdk/a/a;->printStackTrace()V

    iget-object v0, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bluepay/data/g;->desc:Ljava/lang/String;

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    iget-object v1, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-virtual {v0, v6, v9, v7, v1}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto :goto_1

    :cond_3
    :try_start_2
    const-string v0, "no matching task"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget v2, Lcom/bluepay/data/Config;->AD_PARAS_ERROR:I

    if-eq v0, v2, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget v2, Lcom/bluepay/data/Config;->AD_ENCRY_ERROR:I

    if-eq v0, v2, :cond_4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_5

    :cond_4
    const/16 v0, 0x28

    invoke-static {v0}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x260

    if-ne v0, v2, :cond_6

    const/16 v0, 0x29

    invoke-static {v0}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    :cond_6
    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v2, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v2, 0xd

    sget v3, Lcom/bluepay/data/e;->j:I

    invoke-virtual {v0}, Lcom/bluepay/interfaceClass/b;->a()I

    move-result v0

    iget-object v4, p0, Lcom/bluepay/core/pay/a;->a:Lcom/bluepay/data/g;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V
    :try_end_2
    .catch Lcom/bluepay/sdk/a/a; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method
