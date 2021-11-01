.class Lcom/bluepay/ui/PaymentActivity$PayCallback;
.super Lcom/bluepay/pay/IPayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluepay/ui/PaymentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PayCallback"
.end annotation


# static fields
.field private static final b:J = 0x1L


# instance fields
.field final synthetic a:Lcom/bluepay/ui/PaymentActivity;


# direct methods
.method constructor <init>(Lcom/bluepay/ui/PaymentActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/ui/PaymentActivity$PayCallback;->a:Lcom/bluepay/ui/PaymentActivity;

    invoke-direct {p0}, Lcom/bluepay/pay/IPayCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILcom/bluepay/pay/BlueMessage;)V
    .locals 5

    const/16 v3, 0x12

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$PayCallback;->a:Lcom/bluepay/ui/PaymentActivity;

    new-instance v1, Lcom/bluepay/ui/PaymentActivity$DialogClick;

    iget-object v2, p0, Lcom/bluepay/ui/PaymentActivity$PayCallback;->a:Lcom/bluepay/ui/PaymentActivity;

    invoke-direct {v1, v2, p1, p2}, Lcom/bluepay/ui/PaymentActivity$DialogClick;-><init>(Lcom/bluepay/ui/PaymentActivity;ILcom/bluepay/pay/BlueMessage;)V

    iput-object v1, v0, Lcom/bluepay/ui/PaymentActivity;->e:Lcom/bluepay/ui/PaymentActivity$DialogClick;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "code("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bluepay/pay/BlueMessage;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bluepay/pay/BlueMessage;->getCode()I

    move-result v1

    sget v2, Lcom/bluepay/data/e;->G:I

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/bluepay/data/e;->G:I

    invoke-static {v1}, Lcom/bluepay/data/e;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PaymentActivity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bluepay/pay/BlueMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    sget v1, Lcom/bluepay/data/e;->b:I

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$PayCallback;->a:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v3}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bluepay/ui/PaymentActivity$PayCallback;->a:Lcom/bluepay/ui/PaymentActivity;

    iget-object v3, v3, Lcom/bluepay/ui/PaymentActivity;->e:Lcom/bluepay/ui/PaymentActivity$DialogClick;

    invoke-static {v1, v2, v0, v4, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bluepay/ui/PaymentActivity$PayCallback;->a:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v0}, Lcom/bluepay/ui/PaymentActivity;->g(Lcom/bluepay/ui/PaymentActivity;)Lcom/bluepay/pay/IPayCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bluepay/pay/IPayCallback;->onFinished(ILcom/bluepay/pay/BlueMessage;)V

    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/bluepay/pay/BlueMessage;->getOfflinePaymentCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "paymentcode:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bluepay/pay/BlueMessage;->getOfflinePaymentCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$PayCallback;->a:Lcom/bluepay/ui/PaymentActivity;

    invoke-static {v3}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bluepay/ui/PaymentActivity$PayCallback;->a:Lcom/bluepay/ui/PaymentActivity;

    iget-object v3, v3, Lcom/bluepay/ui/PaymentActivity;->e:Lcom/bluepay/ui/PaymentActivity$DialogClick;

    invoke-static {v1, v2, v0, v4, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$PayCallback;->a:Lcom/bluepay/ui/PaymentActivity;

    const/16 v2, 0xf

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bluepay/ui/PaymentActivity$PayCallback;->a:Lcom/bluepay/ui/PaymentActivity;

    iget-object v3, v3, Lcom/bluepay/ui/PaymentActivity;->e:Lcom/bluepay/ui/PaymentActivity$DialogClick;

    invoke-static {v1, v2, v0, v4, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/bluepay/ui/PaymentActivity$PayCallback;->a:Lcom/bluepay/ui/PaymentActivity;

    const/16 v2, 0x19

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bluepay/ui/PaymentActivity$PayCallback;->a:Lcom/bluepay/ui/PaymentActivity;

    iget-object v3, v3, Lcom/bluepay/ui/PaymentActivity;->e:Lcom/bluepay/ui/PaymentActivity$DialogClick;

    invoke-static {v1, v2, v0, v4, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method
