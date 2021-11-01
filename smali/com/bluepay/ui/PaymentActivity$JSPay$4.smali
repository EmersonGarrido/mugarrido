.class Lcom/bluepay/ui/PaymentActivity$JSPay$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bluepay/ui/PaymentActivity$JSPay;


# direct methods
.method constructor <init>(Lcom/bluepay/ui/PaymentActivity$JSPay;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$4;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Lcom/bluepay/pay/BlueMessage;

    invoke-direct {v0}, Lcom/bluepay/pay/BlueMessage;-><init>()V

    sget v1, Lcom/bluepay/data/e;->A:I

    invoke-virtual {v0, v1}, Lcom/bluepay/pay/BlueMessage;->setCode(I)V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluepay/pay/BlueMessage;->setDesc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay$4;->a:Lcom/bluepay/ui/PaymentActivity$JSPay;

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity$JSPay;->access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity;->f(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/IPayCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/bluepay/pay/IPayCallback;->onFinished(ILcom/bluepay/pay/BlueMessage;)V

    return-void
.end method
