.class public Lcom/bluepay/pay/Client;
.super Ljava/lang/Object;


# static fields
.field public static ApplicationName:Ljava/lang/String; = null

.field public static CONTRY_CODE:I = 0x0

.field public static final C_USER_CANCEL:I = 0x25b

.field public static IS_DEBUG:Z = false

.field public static final RESULT_FAIL:I = 0x2

.field public static final RESULT_SUCCESS:I = 0x1

.field public static final RESULT_USER_CANCE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "BluePay"

.field private static a:Landroid/app/Activity;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Lcom/bluepay/data/h;

.field public static dayLimit:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Z

.field private static g:Z

.field public static m_BankChargeInfo:Lcom/bluepay/data/b;

.field public static m_DcbInfo:Lcom/bluepay/data/c;

.field public static m_hashChargeList:Ljava/util/HashMap;

.field public static m_hashPriceList:Ljava/util/List;

.field public static m_hashProductList:Ljava/util/LinkedHashMap;

.field public static m_hashTRFPriceList:Ljava/util/HashMap;

.field public static m_iIMEI:Ljava/lang/String;

.field public static m_iIMSI:Ljava/lang/String;

.field public static m_iOperatorId:I

.field public static m_iWifiType:Ljava/lang/String;

.field public static productNameList:[Ljava/lang/String;

.field public static scheme:Ljava/lang/String;

.field public static telcoName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-boolean v2, Lcom/bluepay/pay/Client;->IS_DEBUG:Z

    const-string v0, ""

    sput-object v0, Lcom/bluepay/pay/Client;->c:Ljava/lang/String;

    sput v2, Lcom/bluepay/pay/Client;->m_iOperatorId:I

    sput-object v1, Lcom/bluepay/pay/Client;->m_iIMSI:Ljava/lang/String;

    sput-object v1, Lcom/bluepay/pay/Client;->m_iIMEI:Ljava/lang/String;

    sput-object v1, Lcom/bluepay/pay/Client;->ApplicationName:Ljava/lang/String;

    const-string v0, "unknow"

    sput-object v0, Lcom/bluepay/pay/Client;->m_iWifiType:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/bluepay/pay/Client;->dayLimit:Ljava/lang/String;

    sput-object v1, Lcom/bluepay/pay/Client;->m_hashChargeList:Ljava/util/HashMap;

    sput-object v1, Lcom/bluepay/pay/Client;->m_hashPriceList:Ljava/util/List;

    sput-object v1, Lcom/bluepay/pay/Client;->m_hashTRFPriceList:Ljava/util/HashMap;

    sput-object v1, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    sput-object v1, Lcom/bluepay/pay/Client;->productNameList:[Ljava/lang/String;

    sput-object v1, Lcom/bluepay/pay/Client;->d:Lcom/bluepay/data/h;

    const-string v0, ""

    sput-object v0, Lcom/bluepay/pay/Client;->e:Ljava/lang/String;

    sput-boolean v2, Lcom/bluepay/pay/Client;->f:Z

    sput-boolean v2, Lcom/bluepay/pay/Client;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lcom/bluepay/pay/Client;->g:Z

    return-void
.end method

.method static a()Z
    .locals 1

    sget-boolean v0, Lcom/bluepay/pay/Client;->g:Z

    return v0
.end method

.method private static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/bluepay/pay/Client;->f:Z

    if-eqz v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    :cond_2
    :try_start_0
    sget-object v2, Lcom/bluepay/pay/Client;->d:Lcom/bluepay/data/h;

    if-nez v2, :cond_3

    new-instance v2, Lcom/bluepay/data/h;

    invoke-direct {v2, p0, p1}, Lcom/bluepay/data/h;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v2, Lcom/bluepay/pay/Client;->d:Lcom/bluepay/data/h;

    :cond_3
    sget-object v2, Lcom/bluepay/pay/Client;->d:Lcom/bluepay/data/h;

    invoke-virtual {v2}, Lcom/bluepay/data/h;->d()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bluePay_JMT_1001"

    invoke-static {v2, v3}, Lcom/bluepay/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bluepay/pay/Client;->e:Ljava/lang/String;

    sget-object v2, Lcom/bluepay/pay/Client;->e:Ljava/lang/String;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-le v2, v1, :cond_6

    sget-object v2, Lcom/bluepay/pay/Client;->productNameList:[Ljava/lang/String;

    if-nez v2, :cond_4

    sget-object v2, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lcom/bluepay/pay/Client;->productNameList:[Ljava/lang/String;

    :cond_4
    sget-object v2, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ill-formatted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "BluePay"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/bluepay/pay/Client;->productNameList:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static synthetic b()Lcom/bluepay/data/h;
    .locals 1

    sget-object v0, Lcom/bluepay/pay/Client;->d:Lcom/bluepay/data/h;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bluepay/pay/Client;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/bluepay/pay/Client;->g:Z

    return v0
.end method

.method public static exit()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bluepay/core/pay/BlueManager;->a(Lcom/bluepay/pay/IPayCallback;)V

    sput-object v0, Lcom/bluepay/pay/Client;->m_BankChargeInfo:Lcom/bluepay/data/b;

    sput-object v0, Lcom/bluepay/pay/Client;->m_hashChargeList:Ljava/util/HashMap;

    sput-object v0, Lcom/bluepay/pay/Client;->m_hashPriceList:Ljava/util/List;

    sput-object v0, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    sput-object v0, Lcom/bluepay/pay/Client;->m_hashTRFPriceList:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bluepay/pay/Client;->g:Z

    return-void
.end method

.method public static getEncrypt()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bluepay/pay/Client;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/bluepay/pay/Client;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bluepay/pay/Client;->m_iIMEI:Ljava/lang/String;

    return-object v0
.end method

.method public static getIMSI()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bluepay/pay/Client;->m_iIMSI:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalLan()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bluepay/pay/Client;->d:Lcom/bluepay/data/h;

    if-nez v0, :cond_0

    const-string v0, "en"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/bluepay/pay/Client;->d:Lcom/bluepay/data/h;

    invoke-virtual {v0}, Lcom/bluepay/data/h;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getOperator()I
    .locals 1

    sget v0, Lcom/bluepay/pay/Client;->m_iOperatorId:I

    return v0
.end method

.method public static getProductId()I
    .locals 1

    sget-object v0, Lcom/bluepay/pay/Client;->d:Lcom/bluepay/data/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/bluepay/pay/Client;->d:Lcom/bluepay/data/h;

    invoke-virtual {v0}, Lcom/bluepay/data/h;->a()I

    move-result v0

    goto :goto_0
.end method

.method public static getPromotionId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bluepay/pay/Client;->d:Lcom/bluepay/data/h;

    if-nez v0, :cond_0

    sget-object v0, Lcom/bluepay/data/Config;->ERROR_C_BluePay_PromotionID:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/bluepay/pay/Client;->d:Lcom/bluepay/data/h;

    invoke-virtual {v0}, Lcom/bluepay/data/h;->c()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bluepay/pay/Client;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/app/Activity;Lcom/bluepay/interfaceClass/BlueInitCallback;)Z
    .locals 4

    const/16 v3, 0x10

    const/4 v0, 0x0

    const-string v1, "||---- BluePay init() ---- Start ----||"

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    :try_start_0
    sput-object p0, Lcom/bluepay/pay/Client;->a:Landroid/app/Activity;

    invoke-static {p0}, Lcom/bluepay/sdk/log/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bluepay/pay/Client;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/bluepay/sdk/b/h;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bluepay/pay/Client;->ApplicationName:Ljava/lang/String;

    invoke-static {p0}, Lcom/bluepay/core/pay/BlueManager;->c(Landroid/app/Activity;)V

    const-string v1, "BluePay.ref"

    invoke-static {p0, v1}, Lcom/bluepay/pay/Client;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ref file should like BluePay.ref"

    invoke-static {p0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "||---- BluePay init() --Error-- End ----||"

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "404"

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/bluepay/interfaceClass/BlueInitCallback;->initComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/bluepay/sdk/b/h;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bluepay/pay/Client;->m_iIMSI:Ljava/lang/String;

    invoke-static {p0}, Lcom/bluepay/sdk/b/h;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bluepay/pay/Client;->m_iIMEI:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "imsi:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/bluepay/pay/Client;->m_iIMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  imei:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bluepay/pay/Client;->m_iIMEI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    sget-object v1, Lcom/bluepay/pay/Client;->m_iIMSI:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/bluepay/pay/Client;->m_iIMSI:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    const-string v1, "0000000000"

    sput-object v1, Lcom/bluepay/pay/Client;->m_iIMSI:Ljava/lang/String;

    :cond_2
    sget-object v1, Lcom/bluepay/pay/Client;->m_iIMSI:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, "0000000000"

    sput-object v1, Lcom/bluepay/pay/Client;->m_iIMSI:Ljava/lang/String;

    :cond_3
    const/4 v1, 0x0

    sput v1, Lcom/bluepay/pay/Client;->m_iOperatorId:I

    invoke-static {p0}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bluepay/pay/Client;->m_iWifiType:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "productId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/bluepay/pay/Client;->d:Lcom/bluepay/data/h;

    invoke-virtual {v2}, Lcom/bluepay/data/h;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", promotionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bluepay/pay/Client;->d:Lcom/bluepay/data/h;

    invoke-virtual {v2}, Lcom/bluepay/data/h;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "operatorId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/bluepay/pay/Client;->m_iOperatorId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "IMSI= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bluepay/pay/Client;->m_iIMSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    const-string v1, " start ------ get the operator and other paramter! ----||"

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/bluepay/pay/Client;->initClientData(Landroid/app/Activity;Lcom/bluepay/interfaceClass/BlueInitCallback;)V

    const-string v1, " End ------ get the operator and other paramter! ----||"

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    const-string v1, "||---- BluePay init() ---- End ----||"

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    sput-boolean v0, Lcom/bluepay/pay/Client;->g:Z

    if-eqz p1, :cond_4

    const-string v1, "404"

    invoke-static {v3}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/bluepay/interfaceClass/BlueInitCallback;->initComplete(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v1, "||---- BluePay init() ---- End ----||"

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static initClientData(Landroid/app/Activity;Lcom/bluepay/interfaceClass/BlueInitCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bluepay/pay/Client$1;

    invoke-direct {v1, p0, p1}, Lcom/bluepay/pay/Client$1;-><init>(Landroid/app/Activity;Lcom/bluepay/interfaceClass/BlueInitCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static phoneNum()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bluepay/pay/Client;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static setMsNum(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/bluepay/pay/Client;->c:Ljava/lang/String;

    return-void
.end method

.method public static setRefInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/bluepay/pay/Client;->d:Lcom/bluepay/data/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bluepay/data/h;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lcom/bluepay/data/h;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/bluepay/pay/Client;->d:Lcom/bluepay/data/h;

    :cond_0
    const-string v0, "bluePay_JMT_1001"

    invoke-static {p1, v0}, Lcom/bluepay/sdk/b/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bluepay/pay/Client;->e:Ljava/lang/String;

    sget-object v0, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    sget-object v0, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-le v0, v6, :cond_4

    sget-object v0, Lcom/bluepay/pay/Client;->productNameList:[Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/bluepay/pay/Client;->productNameList:[Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    :cond_4
    sput-boolean v6, Lcom/bluepay/pay/Client;->f:Z

    return-void

    :cond_5
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluepay/data/PriceNode;

    sget-object v3, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lcom/bluepay/data/PriceNode;->getPriceTipKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bluepay/data/PriceNode;->getPrice()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/bluepay/data/PriceNode;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    const-string v4, "BluePay"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    sget-object v3, Lcom/bluepay/pay/Client;->m_hashProductList:Ljava/util/LinkedHashMap;

    const-string v4, "BluePay"

    invoke-virtual {v0}, Lcom/bluepay/data/PriceNode;->getPriceTipKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v3, "BluePay"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/bluepay/pay/Client;->productNameList:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static uploadTransRecord(Landroid/content/Context;)V
    .locals 7

    const-string v0, "||---- BluePay uploadTransRecord() ---- start ----||"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bluepay/sdk/b/h;->l(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    const-string v0, "||---- BluePay uploadTransRecord() ---- end ----||"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "||---- BluePay uploadTransRecord() ---- end ----||"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/bluepay/sdk/a/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/bluepay/sdk/a/a;->printStackTrace()V

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluepay/data/k;

    iget-object v2, v0, Lcom/bluepay/data/k;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/bluepay/data/j;->x()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "fwflag"

    const-string v5, "yes"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "transactionid"

    iget-object v5, v0, Lcom/bluepay/data/k;->a:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "actiontype"

    iget-object v5, v0, Lcom/bluepay/data/k;->h:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "productid"

    iget-object v5, v0, Lcom/bluepay/data/k;->b:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "promotinId"

    iget-object v5, v0, Lcom/bluepay/data/k;->c:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "imsi"

    iget-object v5, v0, Lcom/bluepay/data/k;->d:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "imei"

    iget-object v5, v0, Lcom/bluepay/data/k;->e:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "timestamp"

    iget-object v5, v0, Lcom/bluepay/data/k;->f:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "v"

    iget-object v5, v0, Lcom/bluepay/data/k;->g:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "rv"

    iget v5, v0, Lcom/bluepay/data/k;->j:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, ""

    invoke-static {v3}, Lcom/bluepay/sdk/b/c;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bluepay/pay/Client;->getEncrypt()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/bluepay/sdk/b/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "encrypt"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v2, v4, v3}, Lcom/bluepay/sdk/b/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/bluepay/interfaceClass/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bluepay/interfaceClass/b;->a()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    const-string v2, "BluePay"

    const-string v3, "server record ok"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/bluepay/pay/Client;->a:Landroid/app/Activity;

    iget-object v0, v0, Lcom/bluepay/data/k;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/bluepay/sdk/b/h;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1
    .catch Lcom/bluepay/sdk/a/a; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method
