.class public Lcom/bluepay/data/PriceNode;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluepay/data/PriceNode;->d:Z

    const-string v0, "500"

    iput-object v0, p0, Lcom/bluepay/data/PriceNode;->b:Ljava/lang/String;

    const-string v0, "TRF"

    iput-object v0, p0, Lcom/bluepay/data/PriceNode;->c:Ljava/lang/String;

    const-string v0, "Tools"

    iput-object v0, p0, Lcom/bluepay/data/PriceNode;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bluepay/data/PriceNode;->d:Z

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/PriceNode;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/PriceNode;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/PriceNode;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bluepay/data/PriceNode;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/bluepay/data/PriceNode;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/PriceNode;->a:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/PriceNode;->c:Ljava/lang/String;

    return-void
.end method

.method public static getPriceNodeList(Lcom/bluepay/core/pay/af$a;)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bluepay/sdk/a/a;
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v0, Lcom/bluepay/pay/Client;->m_hashPriceList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bluepay/pay/Client;->m_hashPriceList:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/bluepay/pay/Client;->m_hashPriceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "chargeList"

    invoke-virtual {p0, v0}, Lcom/bluepay/core/pay/af$a;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    check-cast v0, Lorg/json/JSONArray;

    sget-object v3, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    sput-object v3, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [I

    sput-object v3, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_2

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "price"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "shortcode"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "keyword"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "price"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/bluepay/data/PriceNode;

    const-string v6, "price"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "shortcode"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "keyword"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/bluepay/data/PriceNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string v4, "price"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/bluepay/sdk/b/h;->a(Ljava/lang/String;I)I

    move-result v3

    if-nez v2, :cond_3

    sput v3, Lcom/bluepay/core/pay/ae;->a:I

    :cond_3
    sget v4, Lcom/bluepay/core/pay/ae;->a:I

    if-ge v3, v4, :cond_4

    sput v3, Lcom/bluepay/core/pay/ae;->a:I

    :cond_4
    sget-object v4, Lcom/bluepay/pay/Client;->m_hashPriceList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/bluepay/pay/Client;->m_hashPriceList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    sget-object v4, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    aput v3, v4, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const-string v4, "price"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/bluepay/data/PriceNode;

    const-string v6, "price"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "shortcode"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const-string v9, ""

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/bluepay/data/PriceNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto/16 :goto_1

    :cond_7
    :try_start_1
    sget-object v3, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    const/4 v4, 0x0

    aput v4, v3, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method


# virtual methods
.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/PriceNode;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceCurrency()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/PriceNode;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPriceTipKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/PriceNode;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getStringPre()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/PriceNode;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUpNum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bluepay/data/PriceNode;->f:Ljava/lang/String;

    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bluepay/data/PriceNode;->d:Z

    return v0
.end method

.method public setStringPre(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/PriceNode;->e:Ljava/lang/String;

    return-void
.end method

.method public setUpNum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/data/PriceNode;->f:Ljava/lang/String;

    return-void
.end method
