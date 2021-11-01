.class Lcom/bluepay/sdk/b/g$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluepay/sdk/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bluepay/data/Billing;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bluepay/data/Billing;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/16 v7, 0xf

    const/16 v6, 0xe

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/bluepay/sdk/b/g$a;->getResultCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {}, Lcom/bluepay/core/pay/BlueManager;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-static {v7}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    sget v1, Lcom/bluepay/data/e;->k:I

    iget-object v2, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0, v6, v1, v3, v2}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/bluepay/sdk/b/g;->a()Lcom/bluepay/sdk/b/g$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :pswitch_1
    invoke-static {}, Lcom/bluepay/core/pay/BlueManager;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0}, Lcom/bluepay/data/Billing;->getShowUI()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    const/16 v2, 0xb

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0}, Lcom/bluepay/data/Billing;->getPayType()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    iget-object v1, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0, v4, v3, v3, v1}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto :goto_1

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "order:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0}, Lcom/bluepay/data/Billing;->isFinalSms()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "send finish"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    iget-object v1, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v1}, Lcom/bluepay/data/Billing;->getOrderTID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluepay/data/Billing;->setTransactionId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0, v5}, Lcom/bluepay/data/Billing;->isGetResult(Z)V

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    iget-object v1, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0, v4, v3, v3, v1}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0}, Lcom/bluepay/data/Billing;->isFinalSms()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    iget-object v1, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v1}, Lcom/bluepay/data/Billing;->getOrderTID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluepay/data/Billing;->setTransactionId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0, v5}, Lcom/bluepay/data/Billing;->isGetResult(Z)V

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    iget-object v1, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0, v4, v3, v3, v1}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    iget-object v1, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0, v4, v3, v3, v1}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto/16 :goto_1

    :pswitch_4
    invoke-static {}, Lcom/bluepay/core/pay/BlueManager;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-static {v7}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    sget v1, Lcom/bluepay/data/e;->k:I

    iget-object v2, p0, Lcom/bluepay/sdk/b/g$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0, v6, v1, v3, v2}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
