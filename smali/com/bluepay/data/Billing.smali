.class public Lcom/bluepay/data/Billing;
.super Lcom/bluepay/data/g;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final PUBLISHER_HUAWEI:Ljava/lang/String; = "huawei"

.field private static final t:J = -0x6006ddffa184cf61L


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bluepay/data/i;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/bluepay/data/g;-><init>(Landroid/app/Activity;Lcom/bluepay/data/i;Ljava/lang/String;)V

    iput v1, p0, Lcom/bluepay/data/Billing;->v:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/bluepay/data/Billing;->w:I

    iput v1, p0, Lcom/bluepay/data/Billing;->u:I

    iput v1, p0, Lcom/bluepay/data/Billing;->y:I

    iput-boolean v1, p0, Lcom/bluepay/data/Billing;->A:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p5}, Lcom/bluepay/data/g;-><init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V

    iput v1, p0, Lcom/bluepay/data/Billing;->v:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/bluepay/data/Billing;->w:I

    iput v1, p0, Lcom/bluepay/data/Billing;->u:I

    iput v1, p0, Lcom/bluepay/data/Billing;->y:I

    iput-boolean v1, p0, Lcom/bluepay/data/Billing;->A:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bluepay/data/g;-><init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bluepay/data/i;ZI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p10}, Lcom/bluepay/data/g;-><init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bluepay/data/i;ZI)V

    iput v1, p0, Lcom/bluepay/data/Billing;->v:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/bluepay/data/Billing;->w:I

    iput v1, p0, Lcom/bluepay/data/Billing;->u:I

    iput v1, p0, Lcom/bluepay/data/Billing;->y:I

    iput-boolean v1, p0, Lcom/bluepay/data/Billing;->A:Z

    return-void
.end method

.method public constructor <init>(Lcom/bluepay/data/Billing;I)V
    .locals 2

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getReference()Lcom/bluepay/data/i;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bluepay/data/g;-><init>(Landroid/app/Activity;Lcom/bluepay/data/i;)V

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCustomId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getProductId()I

    move-result v0

    iput v0, p0, Lcom/bluepay/data/Billing;->c:I

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPromotionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->e:Ljava/lang/String;

    iput p2, p0, Lcom/bluepay/data/Billing;->g:I

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getSmsId()I

    move-result v0

    iput v0, p0, Lcom/bluepay/data/Billing;->h:I

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPropsName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getOperator()I

    move-result v0

    iput v0, p0, Lcom/bluepay/data/Billing;->m:I

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getDesMsisdn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCard()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getShowUI()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bluepay/data/Billing;->q:Z

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCheckNum()I

    move-result v0

    iput v0, p0, Lcom/bluepay/data/Billing;->r:I

    iget-object v0, p1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getSequenceId()I

    move-result v0

    iput v0, p0, Lcom/bluepay/data/Billing;->v:I

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getProcessFlag()I

    move-result v0

    iput v0, p0, Lcom/bluepay/data/Billing;->w:I

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPayType()I

    move-result v0

    iput v0, p0, Lcom/bluepay/data/Billing;->u:I

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getSMSIndex()I

    move-result v0

    iput v0, p0, Lcom/bluepay/data/Billing;->y:I

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->isGetResult()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bluepay/data/Billing;->A:Z

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getOrderTID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/bluepay/data/g;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getReference()Lcom/bluepay/data/i;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bluepay/data/g;-><init>(Landroid/app/Activity;Lcom/bluepay/data/i;)V

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getCustomId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->f:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getProductId()I

    move-result v0

    iput v0, p0, Lcom/bluepay/data/Billing;->c:I

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getPromotionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->d:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getPrice()I

    move-result v0

    iput v0, p0, Lcom/bluepay/data/Billing;->g:I

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getSmsId()I

    move-result v0

    iput v0, p0, Lcom/bluepay/data/Billing;->h:I

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getPropsName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getOperator()I

    move-result v0

    iput v0, p0, Lcom/bluepay/data/Billing;->m:I

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getDesMsisdn()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getCard()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->n:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getShowUI()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bluepay/data/Billing;->q:Z

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getCurrency()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->j:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getCheckNum()I

    move-result v0

    iput v0, p0, Lcom/bluepay/data/Billing;->r:I

    invoke-virtual {p1}, Lcom/bluepay/data/g;->getScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->s:Ljava/lang/String;

    iget-object v0, p1, Lcom/bluepay/data/g;->desc:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/bluepay/data/g;->desc:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    :cond_0
    iget-object v0, p1, Lcom/bluepay/data/g;->n:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/bluepay/data/g;->n:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/Billing;->n:Ljava/lang/String;

    :goto_0
    iget-object v0, p1, Lcom/bluepay/data/g;->o:Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/bluepay/data/g;->o:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/Billing;->o:Ljava/lang/String;

    :goto_1
    iget-object v0, p1, Lcom/bluepay/data/g;->p:Ljava/lang/String;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/bluepay/data/g;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/Billing;->p:Ljava/lang/String;

    :goto_2
    invoke-virtual {p1}, Lcom/bluepay/data/g;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->z:Ljava/lang/String;

    iput v2, p0, Lcom/bluepay/data/Billing;->v:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/bluepay/data/Billing;->w:I

    iput v2, p0, Lcom/bluepay/data/Billing;->u:I

    iput v2, p0, Lcom/bluepay/data/Billing;->y:I

    iput-boolean v2, p0, Lcom/bluepay/data/Billing;->A:Z

    return-void

    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/Billing;->n:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/Billing;->o:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/Billing;->p:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public addSMSIndex()V
    .locals 1

    iget v0, p0, Lcom/bluepay/data/Billing;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bluepay/data/Billing;->y:I

    return-void
.end method

.method public copyOrder(Lcom/bluepay/data/g;)V
    .locals 0

    return-void
.end method

.method public getOrderTID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/Billing;->z:Ljava/lang/String;

    return-object v0
.end method

.method public getPayType()I
    .locals 1

    iget v0, p0, Lcom/bluepay/data/Billing;->u:I

    return v0
.end method

.method public getPaymentCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/Billing;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceIndex()I
    .locals 1

    iget v0, p0, Lcom/bluepay/data/Billing;->x:I

    return v0
.end method

.method public getPricePre()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/bluepay/pay/Client;->m_hashChargeList:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bluepay/data/Billing;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bluepay/pay/Client;->m_hashChargeList:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bluepay/data/Billing;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluepay/data/PriceNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bluepay/data/PriceNode;->getStringPre()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getProcessFlag()I
    .locals 1

    iget v0, p0, Lcom/bluepay/data/Billing;->w:I

    return v0
.end method

.method public getSMSIndex()I
    .locals 1

    iget v0, p0, Lcom/bluepay/data/Billing;->y:I

    return v0
.end method

.method public getSequenceId()I
    .locals 1

    iget v0, p0, Lcom/bluepay/data/Billing;->v:I

    return v0
.end method

.method public getShorCode()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    iget-object v0, p0, Lcom/bluepay/data/Billing;->p:Ljava/lang/String;

    const-string v1, "bankcharge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/pay/Client;->m_BankChargeInfo:Lcom/bluepay/data/b;

    iget-object v0, v0, Lcom/bluepay/data/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/bluepay/data/Billing;->C:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bluepay/data/Billing;->C:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bluepay/data/Billing;->p:Ljava/lang/String;

    const-string v1, "huawei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bluepay/data/Billing;->C:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/bluepay/pay/Client;->m_hashChargeList:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bluepay/data/Billing;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/bluepay/pay/Client;->m_hashChargeList:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bluepay/data/Billing;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluepay/data/PriceNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bluepay/data/PriceNode;->getUpNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bluepay/data/Billing;->C:Ljava/lang/String;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/bluepay/sdk/a/a;

    sget v1, Lcom/bluepay/data/e;->i:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PRICE IS ERROR! "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/bluepay/data/Billing;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Lcom/bluepay/sdk/a/a;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getSmsContent()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/bluepay/data/Billing;->getReference()Lcom/bluepay/data/i;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/bluepay/data/Billing;->p:Ljava/lang/String;

    const-string v4, "bankcharge"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/bluepay/data/Billing;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bluepay/data/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->spliteFlag:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bluepay/data/Billing;->h:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->spliteFlag:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bluepay/data/Billing;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->spliteFlag:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/bluepay/pay/Client;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->spliteFlag:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    iget-object v3, p0, Lcom/bluepay/data/Billing;->p:Ljava/lang/String;

    const-string v4, "SMS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/bluepay/data/Billing;->z:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bluepay/data/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/bluepay/data/Billing;->p:Ljava/lang/String;

    const-string v3, "huawei"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/bluepay/data/Billing;->D:Ljava/lang/String;

    goto :goto_1
.end method

.method public isFinalSms()Z
    .locals 2

    iget v0, p0, Lcom/bluepay/data/Billing;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGetResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bluepay/data/Billing;->A:Z

    return-void
.end method

.method public isGetResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bluepay/data/Billing;->A:Z

    return v0
.end method

.method public setOrderTID(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/Billing;->z:Ljava/lang/String;

    return-void
.end method

.method public setPaymentCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/Billing;->B:Ljava/lang/String;

    return-void
.end method

.method public setPaytype(I)V
    .locals 0

    iput p1, p0, Lcom/bluepay/data/Billing;->u:I

    return-void
.end method

.method public setPriceIndex(I)V
    .locals 0

    iput p1, p0, Lcom/bluepay/data/Billing;->x:I

    return-void
.end method

.method public setProcessFlag(I)V
    .locals 0

    iput p1, p0, Lcom/bluepay/data/Billing;->w:I

    return-void
.end method

.method public setSequenceId(I)V
    .locals 0

    iput p1, p0, Lcom/bluepay/data/Billing;->v:I

    return-void
.end method

.method public setShorCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/Billing;->C:Ljava/lang/String;

    return-void
.end method

.method public setSmsContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/Billing;->D:Ljava/lang/String;

    return-void
.end method
