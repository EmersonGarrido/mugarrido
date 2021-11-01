.class Lcom/bluepay/pay/Client$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Lcom/bluepay/interfaceClass/BlueInitCallback;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/bluepay/interfaceClass/BlueInitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/pay/Client$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bluepay/pay/Client$1;->b:Lcom/bluepay/interfaceClass/BlueInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v7, 0x0

    :try_start_0
    const-string v1, "step1:  check the phone local in which country! "

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    move v6, v7

    move-object v1, v0

    :goto_0
    const/4 v2, 0x4

    if-lt v6, v2, :cond_1

    move v6, v7

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "step2:  check the network and use which state === "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/pay/Client;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "step2:  check ok !"

    invoke-static {v2}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Lcom/bluepay/pay/Client$1;->a:Landroid/app/Activity;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/bluepay/pay/Client$1;->a:Landroid/app/Activity;

    new-instance v3, Lcom/bluepay/pay/Client$1$1;

    iget-object v4, p0, Lcom/bluepay/pay/Client$1;->b:Lcom/bluepay/interfaceClass/BlueInitCallback;

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/bluepay/pay/Client$1$1;-><init>(Lcom/bluepay/pay/Client$1;Lcom/bluepay/interfaceClass/BlueInitCallback;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/bluepay/pay/Client$1;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bluepay/pay/Client;->uploadTransRecord(Landroid/content/Context;)V

    :cond_0
    :goto_3
    return-void

    :cond_1
    iget-object v0, p0, Lcom/bluepay/pay/Client$1;->a:Landroid/app/Activity;

    sget-object v1, Lcom/bluepay/pay/Client;->m_iIMSI:Ljava/lang/String;

    sget-object v2, Lcom/bluepay/pay/Client;->m_iIMEI:Ljava/lang/String;

    invoke-static {}, Lcom/bluepay/pay/Client;->b()Lcom/bluepay/data/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bluepay/data/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/bluepay/pay/Client;->b()Lcom/bluepay/data/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bluepay/data/h;->c()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/bluepay/pay/Client;->c()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/bluepay/pay/ClientHelper;->initPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v0, "404"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bluepay/pay/Client$1;->a:Landroid/app/Activity;

    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->statUrl:Ljava/lang/String;

    sget-object v3, Lcom/bluepay/core/pay/BlueManager;->apiUrl:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/bluepay/core/pay/BlueManager;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bluepay/pay/Client;->a(Z)V

    const-string v0, "LOGIN_FAILED"

    goto :goto_1

    :cond_2
    const/16 v0, 0x12

    invoke-static {v0}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "step2:  check failed !"

    invoke-static {v2}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "final !!!! :  ERROR!! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/pay/Client$1;->b:Lcom/bluepay/interfaceClass/BlueInitCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/pay/Client$1;->b:Lcom/bluepay/interfaceClass/BlueInitCallback;

    const-string v1, "404"

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bluepay/interfaceClass/BlueInitCallback;->initComplete(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/bluepay/pay/Client$1;->b:Lcom/bluepay/interfaceClass/BlueInitCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/pay/Client$1;->b:Lcom/bluepay/interfaceClass/BlueInitCallback;

    const/16 v2, 0x14

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bluepay/interfaceClass/BlueInitCallback;->initComplete(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
