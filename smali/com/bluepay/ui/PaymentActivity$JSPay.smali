.class Lcom/bluepay/ui/PaymentActivity$JSPay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bluepay/interfaceClass/IJSPay;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluepay/ui/PaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JSPay"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bluepay/ui/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bluepay/ui/PaymentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/bluepay/ui/PaymentActivity$JSPay;)Lcom/bluepay/ui/PaymentActivity;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->g(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/IPayCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bluepay/pay/BlueMessage;

    invoke-direct {v0}, Lcom/bluepay/pay/BlueMessage;-><init>()V

    sget v1, Lcom/bluepay/data/e;->A:I

    invoke-virtual {v0, v1}, Lcom/bluepay/pay/BlueMessage;->setCode(I)V

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v1}, Lcom/bluepay/ui/PaymentActivity;->f(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/IPayCallback;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/bluepay/pay/IPayCallback;->onFinished(ILcom/bluepay/pay/BlueMessage;)V

    :cond_0
    return-void
.end method

.method public getPrices4cashcard(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v0, p1}, Lcom/bluepay/sdk/b/h;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public happy()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "happy"

    return-object v0
.end method

.method public idr()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "IDR"

    return-object v0
.end method

.method public indomog()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "indomog"

    return-object v0
.end method

.method public mobifone()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "mobifone"

    return-object v0
.end method

.method public oneTwoCall()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "12call"

    return-object v0
.end method

.method public payByAd()V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->e(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/BluePay;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v2}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bluepay/data/PayEntry;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v3}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bluepay/data/PayEntry;->getCustomId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v4}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bluepay/data/PayEntry;->getPropsName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v5}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bluepay/data/PayEntry;->getCurrency()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v6}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bluepay/data/PayEntry;->getPrice()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v8}, Lcom/bluepay/ui/PaymentActivity;->f(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/IPayCallback;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Lcom/bluepay/pay/BluePay;->paybyAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)V

    return-void
.end method

.method public payByBank()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    const-string v1, "Tips"

    const/16 v2, 0x30

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bluepay/ui/PaymentActivity$JSPay$3;

    invoke-direct {v3, p0}, Lcom/bluepay/ui/PaymentActivity$JSPay$3;-><init>(Lcom/bluepay/ui/PaymentActivity$JSPay;)V

    new-instance v4, Lcom/bluepay/ui/PaymentActivity$JSPay$4;

    invoke-direct {v4, p0}, Lcom/bluepay/ui/PaymentActivity$JSPay$4;-><init>(Lcom/bluepay/ui/PaymentActivity$JSPay;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public payByBlueClient()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "BlueSDKPayByBlueClientAction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "blueclient://www.bluepay.asia"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v1, "amount"

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v2}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bluepay/data/PayEntry;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "currency"

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v2}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bluepay/data/PayEntry;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "profuctid"

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v2}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bluepay/data/PayEntry;->getProductId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "promotionid"

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v2}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bluepay/data/PayEntry;->getPromotionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extransid"

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v2}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bluepay/data/PayEntry;->getTransactionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isFromSDK"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-virtual {v1, v0}, Lcom/bluepay/ui/PaymentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    const-string v1, "New funtion will be released soon\uff01"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    const/16 v1, 0x1d

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public payByCashcard(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "cardNo:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " serialNao:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " pulishers:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "undefined"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "undefined"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    const-string v1, "the card NO. can not be empty"

    invoke-static {v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_3
    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->e(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/BluePay;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v2}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bluepay/data/PayEntry;->getCustomId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v3}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bluepay/data/PayEntry;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v4}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bluepay/data/PayEntry;->getPropsName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v5}, Lcom/bluepay/ui/PaymentActivity;->f(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/IPayCallback;

    move-result-object v8

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v8}, Lcom/bluepay/pay/BluePay;->payByCashcard(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bluepay/pay/IPayCallback;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    const/16 v1, 0x1d

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public payByLine()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    const-string v1, "Tips"

    const/16 v2, 0x30

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bluepay/ui/PaymentActivity$JSPay$5;

    invoke-direct {v3, p0}, Lcom/bluepay/ui/PaymentActivity$JSPay$5;-><init>(Lcom/bluepay/ui/PaymentActivity$JSPay;)V

    new-instance v4, Lcom/bluepay/ui/PaymentActivity$JSPay$6;

    invoke-direct {v4, p0}, Lcom/bluepay/ui/PaymentActivity$JSPay$6;-><init>(Lcom/bluepay/ui/PaymentActivity$JSPay;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public payBySms()V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->d(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/data/PayEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "pay by sms"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    const-string v1, "Tips"

    const/16 v2, 0x30

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/bluepay/ui/PaymentActivity$JSPay$1;

    invoke-direct {v3, p0}, Lcom/bluepay/ui/PaymentActivity$JSPay$1;-><init>(Lcom/bluepay/ui/PaymentActivity$JSPay;)V

    new-instance v4, Lcom/bluepay/ui/PaymentActivity$JSPay$2;

    invoke-direct {v4, p0}, Lcom/bluepay/ui/PaymentActivity$JSPay$2;-><init>(Lcom/bluepay/ui/PaymentActivity$JSPay;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$JSPay;->this$0:Lcom/bluepay/ui/PaymentActivity;

    const/16 v1, 0x1d

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public telkomsel()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "telkomsel"

    return-object v0
.end method

.method public truemoney()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "truemoney"

    return-object v0
.end method

.method public unipin()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "unipin"

    return-object v0
.end method

.method public viettel()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "viettel"

    return-object v0
.end method

.method public vinaphone()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "vinaphone"

    return-object v0
.end method

.method public vtc()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "vtc"

    return-object v0
.end method
