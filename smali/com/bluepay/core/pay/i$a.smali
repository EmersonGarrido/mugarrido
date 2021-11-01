.class Lcom/bluepay/core/pay/i$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bluepay/interfaceClass/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bluepay/core/pay/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/bluepay/data/Billing;

.field final synthetic b:Lcom/bluepay/core/pay/i;


# direct methods
.method public constructor <init>(Lcom/bluepay/core/pay/i;Lcom/bluepay/data/Billing;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/core/pay/i$a;->b:Lcom/bluepay/core/pay/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bluepay/core/pay/i$a;->a:Lcom/bluepay/data/Billing;

    return-void
.end method

.method static synthetic a(Lcom/bluepay/core/pay/i$a;)Lcom/bluepay/core/pay/i;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/core/pay/i$a;->b:Lcom/bluepay/core/pay/i;

    return-object v0
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;)V
    .locals 5

    const/16 v4, 0xe

    const/4 v3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/bluepay/core/pay/i$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    sget v0, Lcom/bluepay/pay/Client;->m_iOperatorId:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const-string v0, "86"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "86"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    sget v0, Lcom/bluepay/pay/Client;->m_iOperatorId:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_1

    const-string v0, "92"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "92"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lcom/bluepay/core/pay/i$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {v0, p2}, Lcom/bluepay/data/Billing;->setDesMsisdn(Ljava/lang/String;)V

    sget-object v0, Lcom/bluepay/pay/Client;->m_DcbInfo:Lcom/bluepay/data/c;

    iget v0, v0, Lcom/bluepay/data/c;->b:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/bluepay/core/pay/i$a;->b:Lcom/bluepay/core/pay/i;

    iget-object v1, p0, Lcom/bluepay/core/pay/i$a;->a:Lcom/bluepay/data/Billing;

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bluepay/core/pay/i;->a(Lcom/bluepay/core/pay/i;Lcom/bluepay/data/Billing;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Lcom/bluepay/core/pay/q;

    invoke-direct {v0, p0}, Lcom/bluepay/core/pay/q;-><init>(Lcom/bluepay/core/pay/i$a;)V

    invoke-virtual {v0}, Lcom/bluepay/core/pay/q;->start()V

    goto :goto_0

    :cond_4
    const/4 v0, -0x1

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/bluepay/core/pay/i$a;->b:Lcom/bluepay/core/pay/i;

    iget-object v0, v0, Lcom/bluepay/core/pay/i;->a:Lcom/bluepay/interfaceClass/c;

    sget v1, Lcom/bluepay/data/e;->i:I

    iget-object v2, p0, Lcom/bluepay/core/pay/i$a;->a:Lcom/bluepay/data/Billing;

    invoke-interface {v0, v4, v1, v3, v2}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/bluepay/core/pay/i$a;->b:Lcom/bluepay/core/pay/i;

    iget-object v0, v0, Lcom/bluepay/core/pay/i;->a:Lcom/bluepay/interfaceClass/c;

    sget v1, Lcom/bluepay/data/e;->A:I

    iget-object v2, p0, Lcom/bluepay/core/pay/i$a;->a:Lcom/bluepay/data/Billing;

    invoke-interface {v0, v4, v1, v3, v2}, Lcom/bluepay/interfaceClass/c;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0
.end method
