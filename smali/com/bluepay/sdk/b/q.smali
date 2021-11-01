.class Lcom/bluepay/sdk/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/bluepay/interfaceClass/d;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bluepay/interfaceClass/d;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/sdk/b/q;->a:Lcom/bluepay/interfaceClass/d;

    iput-object p2, p0, Lcom/bluepay/sdk/b/q;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v0, 0x0

    :goto_0
    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/bluepay/sdk/b/q;->b:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/bluepay/sdk/b/q;->a:Lcom/bluepay/interfaceClass/d;

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/bluepay/interfaceClass/d;)V

    :goto_1
    return-void

    :cond_0
    :try_start_0
    sget-object v3, Lcom/bluepay/pay/Client;->m_iIMSI:Ljava/lang/String;

    invoke-static {v3}, Lcom/bluepay/sdk/b/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, Lcom/bluepay/pay/Client;->setMsNum(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/sdk/b/q;->a:Lcom/bluepay/interfaceClass/d;

    const/4 v1, 0x1

    invoke-interface {v0, v1, v3}, Lcom/bluepay/interfaceClass/d;->onComplete(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "msisdn:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/bluepay/sdk/a/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/bluepay/sdk/a/a;->printStackTrace()V

    iget-object v1, p0, Lcom/bluepay/sdk/b/q;->a:Lcom/bluepay/interfaceClass/d;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/bluepay/interfaceClass/d;->onComplete(ILjava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "there is a error occured when explore the msisdn :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bluepay/sdk/a/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    :try_start_1
    const-string v0, "now send a message to server to explore msisdn"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/sdk/b/q;->b:Landroid/content/Context;

    sget-object v3, Lcom/bluepay/pay/Client;->m_DcbInfo:Lcom/bluepay/data/c;

    iget-object v3, v3, Lcom/bluepay/data/c;->c:Ljava/lang/String;

    invoke-static {}, Lcom/bluepay/pay/ClientHelper;->getExploreContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/bluepay/sdk/b/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/bluepay/sdk/a/a; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    :cond_2
    add-int/lit8 v3, v2, -0x1

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v4, 0x2710

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/bluepay/sdk/a/a; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v3

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catch Lcom/bluepay/sdk/a/a; {:try_start_3 .. :try_end_3} :catch_0

    move v2, v3

    goto :goto_0
.end method
