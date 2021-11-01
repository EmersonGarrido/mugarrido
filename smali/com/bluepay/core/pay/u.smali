.class public Lcom/bluepay/core/pay/u;
.super Lcom/bluepay/interfaceClass/a;


# instance fields
.field a:Lcom/bluepay/interfaceClass/c;

.field private b:Ljava/util/List;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bluepay/interfaceClass/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/bluepay/interfaceClass/a;-><init>()V

    iput-object p1, p0, Lcom/bluepay/core/pay/u;->a:Lcom/bluepay/interfaceClass/c;

    invoke-direct {p0}, Lcom/bluepay/core/pay/u;->a()V

    return-void
.end method

.method static synthetic a(Lcom/bluepay/core/pay/u;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/core/pay/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bluepay/core/pay/u;->b:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/bluepay/data/Billing;)V
    .locals 1

    new-instance v0, Lcom/bluepay/core/pay/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/bluepay/core/pay/w;-><init>(Lcom/bluepay/core/pay/u;Landroid/app/Activity;Lcom/bluepay/data/Billing;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/bluepay/core/pay/u;Lcom/bluepay/data/Billing;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/u;->e(Lcom/bluepay/data/Billing;)V

    return-void
.end method

.method static synthetic a(Lcom/bluepay/core/pay/u;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/u;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/bluepay/core/pay/u;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/core/pay/u;->b:Ljava/util/List;

    return-object v0
.end method

.method private d(Lcom/bluepay/data/Billing;)V
    .locals 4

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getDesMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/bluepay/pay/Client;->getIMSI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/b/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/pay/Client;->setMsNum(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/bluepay/sdk/a/a; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "doTask()"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/bluepay/core/pay/u;->a(Landroid/app/Activity;Lcom/bluepay/data/Billing;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/bluepay/sdk/a/a;->printStackTrace()V

    invoke-virtual {v0}, Lcom/bluepay/sdk/a/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    iget-object v0, p0, Lcom/bluepay/core/pay/u;->a:Lcom/bluepay/interfaceClass/c;

    const/16 v1, 0xe

    sget v2, Lcom/bluepay/data/e;->i:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0
.end method

.method private e(Lcom/bluepay/data/Billing;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bluepay/core/pay/v;

    invoke-direct {v1, p0, p1}, Lcom/bluepay/core/pay/v;-><init>(Lcom/bluepay/core/pay/u;Lcom/bluepay/data/Billing;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bluepay/interfaceClass/b;Lcom/bluepay/data/Billing;)I
    .locals 4

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/bluepay/interfaceClass/b;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/bluepay/interfaceClass/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    sget v1, Lcom/bluepay/data/e;->a:I

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/bluepay/interfaceClass/b;->b()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/bluepay/core/pay/af;->b(Ljava/lang/String;)Lcom/bluepay/core/pay/af$a;

    move-result-object v1

    const-string v0, "status"

    invoke-virtual {v1, v0}, Lcom/bluepay/core/pay/af$a;->c(Ljava/lang/String;)I

    move-result v0

    sget v2, Lcom/bluepay/data/e;->b:I

    if-ne v0, v2, :cond_3

    const-string v2, "paymentcode"

    invoke-virtual {v1, v2}, Lcom/bluepay/core/pay/af$a;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/bluepay/core/pay/u;->a:Lcom/bluepay/interfaceClass/c;

    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, p2}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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

    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/u;->d(Lcom/bluepay/data/Billing;)V

    return-void
.end method

.method public c(Lcom/bluepay/data/Billing;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bluepay/core/pay/u;->d(Lcom/bluepay/data/Billing;)V

    return-void
.end method
