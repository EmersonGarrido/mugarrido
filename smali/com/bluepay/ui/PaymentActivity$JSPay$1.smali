.class Lcom/bluepay/ui/PaymentActivity$JSPay$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bluepay/ui/PaymentActivity$JSPay;


# direct methods
.method constructor <init>(Lcom/bluepay/ui/PaymentActivity$JSPay;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$1;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$1;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->e(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/BluePay;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$1;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$1;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v2}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bluepay/data/PayEntry;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$1;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v3}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bluepay/data/PayEntry;->getCurrency()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$1;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v4}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bluepay/data/PayEntry;->getPrice()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$1;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v5}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bluepay/data/PayEntry;->getSmsId()I

    move-result v5

    iget-object v6, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$1;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v6}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bluepay/data/PayEntry;->getPropsName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$1;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v8}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/bluepay/ui/PaymentActivity;->f(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/IPayCallback;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/bluepay/pay/BluePay;->payBySMS(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/bluepay/pay/IPayCallback;)V

    return-void
.end method
