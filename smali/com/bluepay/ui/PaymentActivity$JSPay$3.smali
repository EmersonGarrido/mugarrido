.class Lcom/bluepay/ui/PaymentActivity$JSPay$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bluepay/ui/PaymentActivity$JSPay;


# direct methods
.method constructor <init>(Lcom/bluepay/ui/PaymentActivity$JSPay;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    sget v0, Lcom/bluepay/pay/Client;->CONTRY_CODE:I

    const/16 v1, 0x42

    if-ne v0, v1, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/bluepay/data/PayEntry;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->e(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/BluePay;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v2}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/bluepay/data/PayEntry;->transactionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v3}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/bluepay/data/PayEntry;->currency:Ljava/lang/String;

    iget-object v4, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v4}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/bluepay/data/PayEntry;->price:Ljava/lang/String;

    iget-object v5, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v5}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/bluepay/data/PayEntry;->propsName:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v7}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/bluepay/ui/PaymentActivity;->f(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/IPayCallback;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/bluepay/pay/BluePay;->payByBank(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)V

    :cond_0
    sget v0, Lcom/bluepay/pay/Client;->CONTRY_CODE:I

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_3

    const-string v0, ""

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/bluepay/data/PayEntry;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->e(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/BluePay;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v2}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/bluepay/data/PayEntry;->transactionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v3}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/bluepay/data/PayEntry;->customId:Ljava/lang/String;

    iget-object v4, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v4}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/bluepay/data/PayEntry;->currency:Ljava/lang/String;

    iget-object v5, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v5}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/bluepay/data/PayEntry;->price:Ljava/lang/String;

    iget-object v6, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v6}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v6

    iget-object v6, v6, Lcom/bluepay/data/PayEntry;->propsName:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v8}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/bluepay/ui/PaymentActivity;->f(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/IPayCallback;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/bluepay/pay/BluePay;->payByOffline(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget v0, Lcom/bluepay/pay/Client;->CONTRY_CODE:I

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/bluepay/data/PayEntry;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/bluepay/pay/Client;->CONTRY_CODE:I

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_4

    const-string v0, ""

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/bluepay/data/PayEntry;->price:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget v0, Lcom/bluepay/pay/Client;->CONTRY_CODE:I

    const/16 v1, 0x56

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->e(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/BluePay;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v2}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/bluepay/data/PayEntry;->transactionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v3}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v3

    iget-object v3, v3, Lcom/bluepay/data/PayEntry;->currency:Ljava/lang/String;

    iget-object v4, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v4}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v4

    iget-object v4, v4, Lcom/bluepay/data/PayEntry;->price:Ljava/lang/String;

    iget-object v5, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v5}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v5

    iget-object v5, v5, Lcom/bluepay/data/PayEntry;->propsName:Ljava/lang/String;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$3;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v7}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/bluepay/ui/PaymentActivity;->f(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/IPayCallback;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/bluepay/pay/BluePay;->payByBank(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)V

    goto/16 :goto_0
.end method
