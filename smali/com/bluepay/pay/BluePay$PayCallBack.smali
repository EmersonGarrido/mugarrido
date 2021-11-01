.class Lcom/bluepay/pay/BluePay$PayCallBack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bluepay/interfaceClass/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluepay/pay/BluePay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PayCallBack"
.end annotation


# instance fields
.field a:Lcom/bluepay/data/Billing;

.field b:Lcom/bluepay/pay/IPayCallback;

.field final synthetic f:Lcom/bluepay/pay/BluePay;


# direct methods
.method public constructor <init>(Lcom/bluepay/pay/BluePay;Lcom/bluepay/data/Billing;Lcom/bluepay/pay/IPayCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->f:Lcom/bluepay/pay/BluePay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->a:Lcom/bluepay/data/Billing;

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;)V
    .locals 14

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->a:Lcom/bluepay/data/Billing;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->f:Lcom/bluepay/pay/BluePay;

    iget-object v1, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v2}, Lcom/bluepay/data/Billing;->getCustomId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v3}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v4}, Lcom/bluepay/data/Billing;->getCurrency()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v5}, Lcom/bluepay/data/Billing;->getPropsName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    iget-object v8, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v8}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v8

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v10}, Lcom/bluepay/data/Billing;->getCPPayType()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->b:Lcom/bluepay/pay/IPayCallback;

    invoke-static/range {v0 .. v13}, Lcom/bluepay/pay/BluePay;->a(Lcom/bluepay/pay/BluePay;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/bluepay/data/Billing;

    iget-object v1, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v2}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v3}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bluepay/pay/BluePay$PayCallBack;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v5}, Lcom/bluepay/data/Billing;->getPropsName()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/bluepay/data/Billing;-><init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bluepay/data/Billing;->setShowUI(Z)V

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v2, 0xe

    sget v3, Lcom/bluepay/data/e;->A:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0
.end method
