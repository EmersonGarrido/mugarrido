.class public Lcom/bluepay/data/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field protected static final a:Ljava/lang/String; = "0"


# instance fields
.field protected final b:Landroid/app/Activity;

.field protected c:I

.field protected d:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:I

.field protected h:I

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected final k:Lcom/bluepay/data/i;

.field protected l:Ljava/lang/String;

.field protected m:I

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Z

.field protected r:I

.field protected s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bluepay/data/i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/bluepay/data/g;->r:I

    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/g;->desc:Ljava/lang/String;

    iput-object p1, p0, Lcom/bluepay/data/g;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bluepay/data/g;->k:Lcom/bluepay/data/i;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/bluepay/data/i;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/bluepay/data/g;->r:I

    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/g;->desc:Ljava/lang/String;

    iput-object p1, p0, Lcom/bluepay/data/g;->b:Landroid/app/Activity;

    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/g;->f:Ljava/lang/String;

    iput v1, p0, Lcom/bluepay/data/g;->c:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/bluepay/data/g;->e:Ljava/lang/String;

    iput v1, p0, Lcom/bluepay/data/g;->g:I

    iput v1, p0, Lcom/bluepay/data/g;->h:I

    const-string v0, "0"

    iput-object v0, p0, Lcom/bluepay/data/g;->i:Ljava/lang/String;

    iput-object p2, p0, Lcom/bluepay/data/g;->k:Lcom/bluepay/data/i;

    iput v1, p0, Lcom/bluepay/data/g;->m:I

    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/g;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/g;->n:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/bluepay/data/g;->q:Z

    const-string v0, "THB"

    iput-object v0, p0, Lcom/bluepay/data/g;->j:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/bluepay/data/g;->r:I

    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/g;->desc:Ljava/lang/String;

    iput-object p1, p0, Lcom/bluepay/data/g;->b:Landroid/app/Activity;

    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/g;->f:Ljava/lang/String;

    iput v6, p0, Lcom/bluepay/data/g;->c:I

    const-string v0, "1000"

    iput-object v0, p0, Lcom/bluepay/data/g;->d:Ljava/lang/String;

    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/bluepay/data/g;->e:Ljava/lang/String;

    iput p3, p0, Lcom/bluepay/data/g;->g:I

    iput p4, p0, Lcom/bluepay/data/g;->h:I

    if-eqz p5, :cond_1

    :goto_1
    iput-object p5, p0, Lcom/bluepay/data/g;->i:Ljava/lang/String;

    new-instance v0, Lcom/bluepay/data/i;

    sget v1, Lcom/bluepay/pay/Client;->m_iOperatorId:I

    invoke-static {}, Lcom/bluepay/pay/Client;->getProductId()I

    move-result v2

    const/4 v3, 0x2

    invoke-static {}, Lcom/bluepay/pay/Client;->getPromotionId()Ljava/lang/String;

    move-result-object v5

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluepay/data/i;-><init>(IIIILjava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/g;->k:Lcom/bluepay/data/i;

    iput v6, p0, Lcom/bluepay/data/g;->m:I

    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/g;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/g;->n:Ljava/lang/String;

    iput-boolean v6, p0, Lcom/bluepay/data/g;->q:Z

    const-string v0, "THB"

    iput-object v0, p0, Lcom/bluepay/data/g;->j:Ljava/lang/String;

    return-void

    :cond_0
    const-string p2, "0"

    goto :goto_0

    :cond_1
    const-string p5, "0"

    goto :goto_1
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/bluepay/data/g;->r:I

    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/g;->desc:Ljava/lang/String;

    iput-object p1, p0, Lcom/bluepay/data/g;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bluepay/data/g;->j:Ljava/lang/String;

    iput p3, p0, Lcom/bluepay/data/g;->g:I

    iput-object p4, p0, Lcom/bluepay/data/g;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bluepay/data/g;->k:Lcom/bluepay/data/i;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bluepay/data/i;ZI)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    iput v0, p0, Lcom/bluepay/data/g;->r:I

    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/g;->desc:Ljava/lang/String;

    iput-object p1, p0, Lcom/bluepay/data/g;->b:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bluepay/data/g;->f:Ljava/lang/String;

    iput p3, p0, Lcom/bluepay/data/g;->c:I

    iput-object p4, p0, Lcom/bluepay/data/g;->d:Ljava/lang/String;

    if-eqz p5, :cond_0

    :goto_0
    iput-object p5, p0, Lcom/bluepay/data/g;->e:Ljava/lang/String;

    iput v1, p0, Lcom/bluepay/data/g;->g:I

    iput v1, p0, Lcom/bluepay/data/g;->h:I

    if-eqz p7, :cond_1

    :goto_1
    iput-object p7, p0, Lcom/bluepay/data/g;->i:Ljava/lang/String;

    iput-object p8, p0, Lcom/bluepay/data/g;->k:Lcom/bluepay/data/i;

    iput p10, p0, Lcom/bluepay/data/g;->m:I

    iput-object p6, p0, Lcom/bluepay/data/g;->l:Ljava/lang/String;

    const-string v0, "00000"

    iput-object v0, p0, Lcom/bluepay/data/g;->n:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/bluepay/data/g;->q:Z

    const-string v0, "THB"

    iput-object v0, p0, Lcom/bluepay/data/g;->j:Ljava/lang/String;

    return-void

    :cond_0
    const-string p5, "0"

    goto :goto_0

    :cond_1
    const-string p7, "0"

    goto :goto_1
.end method

.method public static getSafePrice(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    const-string v0, "TRF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/pay/Client;->m_hashTRFPriceList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/bluepay/pay/Client;->m_hashTRFPriceList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/bluepay/pay/Client;->m_hashTRFPriceList:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/bluepay/pay/Client;->m_hashTRFPriceList:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/bluepay/pay/Client;->m_hashChargeList:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/bluepay/pay/Client;->m_hashChargeList:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluepay/data/PriceNode;

    invoke-virtual {v0}, Lcom/bluepay/data/PriceNode;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bluepay/sdk/b/h;->a(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/bluepay/pay/Client;->m_hashChargeList:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/bluepay/pay/Client;->m_hashChargeList:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluepay/data/PriceNode;

    invoke-virtual {v0}, Lcom/bluepay/data/PriceNode;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bluepay/sdk/b/h;->a(Ljava/lang/String;I)I

    move-result v0

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/g;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public getCPPayType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/g;->p:Ljava/lang/String;

    return-object v0
.end method

.method public getCard()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/g;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckNum()I
    .locals 1

    iget v0, p0, Lcom/bluepay/data/g;->r:I

    return v0
.end method

.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getDesMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/g;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()I
    .locals 1

    iget v0, p0, Lcom/bluepay/data/g;->m:I

    return v0
.end method

.method public getPrice()I
    .locals 1

    iget v0, p0, Lcom/bluepay/data/g;->g:I

    return v0
.end method

.method public getProductId()I
    .locals 1

    iget v0, p0, Lcom/bluepay/data/g;->c:I

    return v0
.end method

.method public getPromotionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPropsName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/g;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Lcom/bluepay/data/i;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/g;->k:Lcom/bluepay/data/i;

    return-object v0
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/g;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialNo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/g;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getShowUI()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bluepay/data/g;->q:Z

    return v0
.end method

.method public getSmsId()I
    .locals 1

    iget v0, p0, Lcom/bluepay/data/g;->h:I

    return v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public isShowLoading2Dialog()Z
    .locals 2

    iget-boolean v0, p0, Lcom/bluepay/data/g;->q:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bluepay/data/g;->r:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCPPayType(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/g;->p:Ljava/lang/String;

    return-void
.end method

.method public setCard(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/g;->n:Ljava/lang/String;

    return-void
.end method

.method public setCheckNum(I)V
    .locals 0

    iput p1, p0, Lcom/bluepay/data/g;->r:I

    return-void
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/g;->j:Ljava/lang/String;

    return-void
.end method

.method public setCustomId(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/g;->f:Ljava/lang/String;

    return-void
.end method

.method public setDesMsisdn(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/g;->l:Ljava/lang/String;

    return-void
.end method

.method public setOperator(I)V
    .locals 0

    iput p1, p0, Lcom/bluepay/data/g;->m:I

    return-void
.end method

.method public setPrice(I)V
    .locals 0

    iput p1, p0, Lcom/bluepay/data/g;->g:I

    return-void
.end method

.method public setProductId(I)V
    .locals 0

    iput p1, p0, Lcom/bluepay/data/g;->c:I

    return-void
.end method

.method public setPromotionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/g;->d:Ljava/lang/String;

    return-void
.end method

.method public setPropsName(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/g;->i:Ljava/lang/String;

    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/g;->s:Ljava/lang/String;

    return-void
.end method

.method public setSerialNo(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/g;->o:Ljava/lang/String;

    return-void
.end method

.method public setShowUI(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bluepay/data/g;->q:Z

    return-void
.end method

.method public setSmsId(I)V
    .locals 0

    iput p1, p0, Lcom/bluepay/data/g;->h:I

    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/g;->e:Ljava/lang/String;

    return-void
.end method
