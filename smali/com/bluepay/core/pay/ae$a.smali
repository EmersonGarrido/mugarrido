.class Lcom/bluepay/core/pay/ae$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluepay/core/pay/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method protected static a(Lcom/bluepay/data/Billing;Ljava/lang/String;Lcom/bluepay/interfaceClass/c;)Landroid/os/AsyncTask;
    .locals 4

    new-instance v1, Lcom/bluepay/core/pay/ae$a;

    invoke-direct {v1}, Lcom/bluepay/core/pay/ae$a;-><init>()V

    invoke-virtual {p0}, Lcom/bluepay/data/Billing;->getPayType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Lcom/bluepay/core/pay/ab;

    invoke-direct {v0, p2}, Lcom/bluepay/core/pay/ab;-><init>(Lcom/bluepay/interfaceClass/c;)V

    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    const/4 v0, 0x2

    aput-object p2, v2, v0

    invoke-virtual {v1, v2}, Lcom/bluepay/core/pay/ae$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-object v1

    :pswitch_1
    new-instance v0, Lcom/bluepay/core/pay/aa;

    invoke-direct {v0, p2}, Lcom/bluepay/core/pay/aa;-><init>(Lcom/bluepay/interfaceClass/c;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/bluepay/core/pay/h;

    invoke-direct {v0, p2}, Lcom/bluepay/core/pay/h;-><init>(Lcom/bluepay/interfaceClass/c;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/bluepay/core/pay/g;

    invoke-direct {v0, p2}, Lcom/bluepay/core/pay/g;-><init>(Lcom/bluepay/interfaceClass/c;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/bluepay/core/pay/i;

    invoke-direct {v0, p2}, Lcom/bluepay/core/pay/i;-><init>(Lcom/bluepay/interfaceClass/c;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/bluepay/core/pay/ac;

    invoke-direct {v0, p2}, Lcom/bluepay/core/pay/ac;-><init>(Lcom/bluepay/interfaceClass/c;)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/bluepay/core/pay/u;

    invoke-direct {v0, p2}, Lcom/bluepay/core/pay/u;-><init>(Lcom/bluepay/interfaceClass/c;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/bluepay/core/pay/s;

    invoke-direct {v0, p2}, Lcom/bluepay/core/pay/s;-><init>(Lcom/bluepay/interfaceClass/c;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    const/16 v4, 0xe

    const/4 v7, 0x0

    aget-object v0, p1, v7

    check-cast v0, Lcom/bluepay/interfaceClass/a;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Lcom/bluepay/data/Billing;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doPay:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, Lcom/bluepay/interfaceClass/c;

    invoke-virtual {v1}, Lcom/bluepay/data/Billing;->getPayType()I

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_2

    move v3, v4

    :goto_0
    :try_start_0
    invoke-virtual {v1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/bluepay/sdk/b/f;->c(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v1}, Lcom/bluepay/interfaceClass/a;->b(Lcom/bluepay/data/Billing;)V

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v5}, Lcom/bluepay/sdk/b/f;->b(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v1}, Lcom/bluepay/interfaceClass/a;->c(Lcom/bluepay/data/Billing;)V
    :try_end_0
    .catch Lcom/bluepay/sdk/a/a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/bluepay/sdk/a/a;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget v3, Lcom/bluepay/data/e;->i:I

    invoke-interface {v2, v4, v3, v7, v1}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    invoke-virtual {v0}, Lcom/bluepay/sdk/a/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x14

    :try_start_1
    invoke-static {v0}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget v0, Lcom/bluepay/data/e;->m:I

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v5, v1}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    const-string v0, "\u7f51\u7edc\u9519\u8bef"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/bluepay/sdk/a/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v3, "Please install LINE Pay then try again"

    iput-object v3, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget v3, Lcom/bluepay/data/e;->i:I

    invoke-interface {v2, v4, v3, v7, v1}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/bluepay/core/pay/ae$a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bluepay/core/pay/ae$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    return-void
.end method
