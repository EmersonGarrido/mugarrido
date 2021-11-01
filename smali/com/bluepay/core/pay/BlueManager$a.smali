.class public Lcom/bluepay/core/pay/BlueManager$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bluepay/interfaceClass/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluepay/core/pay/BlueManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIILcom/bluepay/data/g;)V
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    :try_start_0
    move-object v0, p4

    check-cast v0, Lcom/bluepay/data/Billing;

    move-object v1, v0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v2, "onExecuted:SHOW_SEND_CHECK_SAFE"

    invoke-static {v2}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-static {p2, p3, v1}, Lcom/bluepay/core/pay/BlueManager;->a(IILcom/bluepay/data/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v6}, Lcom/bluepay/core/pay/BlueManager;->a(Z)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Lcom/bluepay/data/Billing;

    invoke-direct {v2, p4}, Lcom/bluepay/data/Billing;-><init>(Lcom/bluepay/data/g;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1, v2}, Lcom/bluepay/core/pay/BlueManager;->a(IILjava/lang/String;Lcom/bluepay/data/Billing;)V

    goto :goto_0

    :pswitch_2
    :try_start_1
    const-string v1, "onExecuted:SHOW_LOGIC"

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/core/pay/BlueManager;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    invoke-static {v1}, Lcom/bluepay/core/pay/ae;->a(Lcom/bluepay/interfaceClass/c;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/bluepay/core/pay/BlueManager;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "onExecuted:SHOW_SMS_SEND_FINISH"

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/bluepay/core/pay/BlueManager;->a(Z)V

    move-object v0, p4

    check-cast v0, Lcom/bluepay/data/Billing;

    move-object v1, v0

    invoke-virtual {p4}, Lcom/bluepay/data/g;->getShowUI()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p4}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const/16 v4, 0xb

    invoke-static {v4}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v1}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/bluepay/data/Billing;->getCheckNum()I

    move-result v5

    aput v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Lcom/bluepay/data/g;Ljava/lang/String;[I)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/bluepay/core/pay/BlueManager;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "onExecuted:SHOW_SMS_SEND_SUCCESS"

    invoke-static {v2}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/bluepay/core/pay/BlueManager;->a(Z)V

    invoke-static {p2, v1}, Lcom/bluepay/core/pay/BlueManager;->a(ILcom/bluepay/data/Billing;)V

    goto :goto_0

    :pswitch_5
    const-string v1, "onExecuted:GET_URL"

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/core/pay/BlueManager;->a(Landroid/app/Activity;)V

    if-ne p2, v2, :cond_2

    invoke-virtual {p4}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {p4, v1}, Lcom/bluepay/data/g;->setShowUI(Z)V

    :cond_2
    invoke-static {p4}, Lcom/bluepay/core/pay/BlueManager;->a(Lcom/bluepay/data/g;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v2, "onExecuted:GET_URL_ERROR"

    invoke-static {v2}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    invoke-static {p2, v1}, Lcom/bluepay/core/pay/BlueManager;->a(ILcom/bluepay/data/Billing;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {p2, v1}, Lcom/bluepay/core/pay/BlueManager;->a(ILcom/bluepay/data/Billing;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
