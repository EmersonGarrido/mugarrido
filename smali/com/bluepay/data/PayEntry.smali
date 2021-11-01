.class public Lcom/bluepay/data/PayEntry;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x2f90ab524a0c9acaL


# instance fields
.field public currency:Ljava/lang/String;

.field public customId:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public operator:I

.field public price:Ljava/lang/String;

.field public productId:I

.field public promotionId:Ljava/lang/String;

.field public propsName:Ljava/lang/String;

.field public scheme:Ljava/lang/String;

.field public smsId:I

.field public transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/PayEntry;->desc:Ljava/lang/String;

    iput p1, p0, Lcom/bluepay/data/PayEntry;->productId:I

    iput-object p2, p0, Lcom/bluepay/data/PayEntry;->promotionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/bluepay/data/PayEntry;->transactionId:Ljava/lang/String;

    iput-object p4, p0, Lcom/bluepay/data/PayEntry;->customId:Ljava/lang/String;

    iput-object p5, p0, Lcom/bluepay/data/PayEntry;->price:Ljava/lang/String;

    iput p6, p0, Lcom/bluepay/data/PayEntry;->smsId:I

    iput-object p7, p0, Lcom/bluepay/data/PayEntry;->propsName:Ljava/lang/String;

    iput-object p8, p0, Lcom/bluepay/data/PayEntry;->currency:Ljava/lang/String;

    iput p9, p0, Lcom/bluepay/data/PayEntry;->operator:I

    return-void
.end method


# virtual methods
.method public getCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/PayEntry;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/PayEntry;->customId:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/PayEntry;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getOperator()I
    .locals 1

    iget v0, p0, Lcom/bluepay/data/PayEntry;->operator:I

    return v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/PayEntry;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()I
    .locals 1

    iget v0, p0, Lcom/bluepay/data/PayEntry;->productId:I

    return v0
.end method

.method public getPromotionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/PayEntry;->promotionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPropsName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/PayEntry;->propsName:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsId()I
    .locals 1

    iget v0, p0, Lcom/bluepay/data/PayEntry;->smsId:I

    return v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/PayEntry;->transactionId:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrency(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/PayEntry;->currency:Ljava/lang/String;

    return-void
.end method

.method public setCustomId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/PayEntry;->customId:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/PayEntry;->desc:Ljava/lang/String;

    return-void
.end method

.method public setOperator(I)V
    .locals 0

    iput p1, p0, Lcom/bluepay/data/PayEntry;->operator:I

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/PayEntry;->price:Ljava/lang/String;

    return-void
.end method

.method public setProductId(I)V
    .locals 0

    iput p1, p0, Lcom/bluepay/data/PayEntry;->productId:I

    return-void
.end method

.method public setPromotionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/PayEntry;->promotionId:Ljava/lang/String;

    return-void
.end method

.method public setPropsName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/PayEntry;->propsName:Ljava/lang/String;

    return-void
.end method

.method public setSmsId(I)V
    .locals 0

    iput p1, p0, Lcom/bluepay/data/PayEntry;->smsId:I

    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/PayEntry;->transactionId:Ljava/lang/String;

    return-void
.end method
