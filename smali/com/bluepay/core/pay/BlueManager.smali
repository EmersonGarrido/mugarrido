.class public Lcom/bluepay/core/pay/BlueManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluepay/core/pay/BlueManager$a;,
        Lcom/bluepay/core/pay/BlueManager$b;
    }
.end annotation


# static fields
.field public static BillingList:Ljava/util/Vector; = null

.field static a:Ljava/util/HashMap; = null

.field public static apiUrl:Ljava/lang/String; = null

.field public static apiUrlMap:Ljava/util/Map; = null

.field static b:Z = false

.field private static c:Lcom/bluepay/a/a; = null

.field public static chargeArray:[I = null

.field private static final d:Ljava/lang/String; = "BluePay"

.field private static e:Z = false

.field private static f:Lcom/bluepay/pay/IPayCallback; = null

.field private static final g:Ljava/lang/String; = "BluePay_statUrl"

.field public static g_bIsShowSecondDialog:Z = false

.field private static final h:Ljava/lang/String; = "BluePay_apiUrl"

.field private static final i:Ljava/lang/String; = "BluePay_verionTime"

.field public static isPayByUI:Z

.field public static mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

.field public static spliteFlag:Ljava/lang/String;

.field public static statUrl:Ljava/lang/String;

.field public static succefulNum:I

.field public static versionTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/bluepay/core/pay/BlueManager;->e:Z

    sput-boolean v1, Lcom/bluepay/core/pay/BlueManager;->g_bIsShowSecondDialog:Z

    sput-boolean v1, Lcom/bluepay/core/pay/BlueManager;->isPayByUI:Z

    sput-object v2, Lcom/bluepay/core/pay/BlueManager;->apiUrl:Ljava/lang/String;

    sput-object v2, Lcom/bluepay/core/pay/BlueManager;->statUrl:Ljava/lang/String;

    sput v1, Lcom/bluepay/core/pay/BlueManager;->versionTime:I

    sput-object v2, Lcom/bluepay/core/pay/BlueManager;->spliteFlag:Ljava/lang/String;

    sput-object v2, Lcom/bluepay/core/pay/BlueManager;->apiUrlMap:Ljava/util/Map;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/bluepay/core/pay/BlueManager;->BillingList:Ljava/util/Vector;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bluepay/core/pay/BlueManager;->a:Ljava/util/HashMap;

    sput-object v2, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    sput v1, Lcom/bluepay/core/pay/BlueManager;->succefulNum:I

    sput-boolean v1, Lcom/bluepay/core/pay/BlueManager;->b:Z

    new-instance v0, Lcom/bluepay/core/pay/BlueManager$a;

    invoke-direct {v0}, Lcom/bluepay/core/pay/BlueManager$a;-><init>()V

    sput-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)I
    .locals 3

    const/4 v0, 0x0

    const/16 v1, -0x64

    invoke-static {p0, v1, v0}, Lcom/bluepay/core/pay/ae;->a(IIZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluepay/data/g;

    invoke-virtual {v0}, Lcom/bluepay/data/g;->getPrice()I

    move-result p1

    :cond_0
    return p1
.end method

.method public static a()Lcom/bluepay/pay/IPayCallback;
    .locals 1

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->f:Lcom/bluepay/pay/IPayCallback;

    return-object v0
.end method

.method public static a(IILcom/bluepay/data/g;)V
    .locals 6

    const/4 v4, 0x1

    const-string v0, "checkPreState"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lcom/bluepay/data/Billing;

    invoke-direct {v0, p2}, Lcom/bluepay/data/Billing;-><init>(Lcom/bluepay/data/g;)V

    invoke-virtual {p2}, Lcom/bluepay/data/g;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bluepay/data/Billing;->setOrderTID(Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/bluepay/core/pay/BlueManager;->e:Z

    invoke-virtual {p2}, Lcom/bluepay/data/g;->getShowUI()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/bluepay/pay/BluePay;->getShowCardLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_1
    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    :goto_1
    return-void

    :pswitch_1
    invoke-virtual {p2}, Lcom/bluepay/data/g;->getOperator()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bluepay/data/Billing;->setPaytype(I)V

    :goto_2
    invoke-virtual {p2}, Lcom/bluepay/data/g;->getCPPayType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bankcharge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bluepay/data/Billing;->setPaytype(I)V

    :cond_2
    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->BillingList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "error:checkPreState():"

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Lcom/bluepay/sdk/a/a;

    sget v2, Lcom/bluepay/data/e;->h:I

    const-string v3, "error:checkPreState()"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/bluepay/sdk/a/a;-><init>(ILjava/lang/String;[Ljava/lang/Object;)V

    throw v1
    :try_end_1
    .catch Lcom/bluepay/sdk/a/a; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/bluepay/sdk/a/a;->printStackTrace()V

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Lcom/bluepay/data/Billing;->setPaytype(I)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p2}, Lcom/bluepay/data/g;->getCard()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_5

    :cond_4
    invoke-virtual {p2}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/bluepay/core/pay/c;

    invoke-direct {v1, p2}, Lcom/bluepay/core/pay/c;-><init>(Lcom/bluepay/data/g;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/bluepay/pay/BluePay;->getShowCardLoading()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x6

    invoke-static {v3}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :cond_6
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/bluepay/data/Billing;->setPaytype(I)V

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->BillingList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_3
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/bluepay/data/Billing;->setPaytype(I)V

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->BillingList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/bluepay/data/Billing;->setPaytype(I)V

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->BillingList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_5
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/bluepay/data/Billing;->setPaytype(I)V

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->BillingList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_6
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/bluepay/data/Billing;->setPaytype(I)V

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->BillingList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic a(IILjava/lang/String;Lcom/bluepay/data/Billing;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/bluepay/core/pay/BlueManager;->b(IILjava/lang/String;Lcom/bluepay/data/Billing;)V

    return-void
.end method

.method public static a(ILcom/bluepay/data/Billing;)V
    .locals 5

    const-string v0, "handlerCallback"

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    const/4 v0, 0x2

    sget v1, Lcom/bluepay/data/e;->a:I

    if-eq p0, v1, :cond_0

    sget v1, Lcom/bluepay/data/e;->b:I

    if-ne p0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/core/pay/BlueManager;->b(Landroid/app/Activity;)V

    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    new-instance v2, Lcom/bluepay/pay/BlueMessage;

    invoke-direct {v2}, Lcom/bluepay/pay/BlueMessage;-><init>()V

    invoke-virtual {v2, p0}, Lcom/bluepay/pay/BlueMessage;->setCode(I)V

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getTransactionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bluepay/pay/BlueMessage;->setTransactionId(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPropsName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bluepay/pay/BlueMessage;->setPropsName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCPPayType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bluepay/pay/BlueMessage;->setPublisher(Ljava/lang/String;)V

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getOrderTID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bluepay/data/g;

    if-eqz v0, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bluepay/data/g;->getPrice()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bluepay/pay/BlueMessage;->setPrice(Ljava/lang/String;)V

    :goto_2
    sget v0, Lcom/bluepay/data/e;->i:I

    if-ne p0, v0, :cond_4

    iget-object v0, p1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/bluepay/pay/BlueMessage;->setDesc(Ljava/lang/String;)V

    :goto_3
    const-string v0, "BluePay"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getOperator()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " result:code"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " price :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getShowUI()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/bluepay/core/pay/BlueManager;->a(Landroid/app/Activity;ILcom/bluepay/pay/BlueMessage;Z)V

    return-void

    :cond_1
    const/16 v1, 0x25b

    if-ne p0, v1, :cond_6

    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/bluepay/data/g;->getPrice()I

    move-result v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPrice()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bluepay/pay/BlueMessage;->setPrice(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    sget v0, Lcom/bluepay/data/e;->b:I

    if-ne p0, v0, :cond_5

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getCPPayType()Ljava/lang/String;

    move-result-object v0

    const-string v3, "offline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/bluepay/pay/BlueMessage;->setDesc(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bluepay/data/Billing;->getPaymentCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bluepay/pay/BlueMessage;->setOfflinePaymentCode(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    invoke-static {p0}, Lcom/bluepay/data/e;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bluepay/pay/BlueMessage;->setDesc(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    move v1, v0

    goto/16 :goto_0
.end method

.method static a(Landroid/app/Activity;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v1, Lcom/bluepay/a/a;

    invoke-direct {v1, p0}, Lcom/bluepay/a/a;-><init>(Landroid/app/Activity;)V

    sput-object v1, Lcom/bluepay/core/pay/BlueManager;->c:Lcom/bluepay/a/a;

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->c:Lcom/bluepay/a/a;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private static a(Landroid/app/Activity;ILcom/bluepay/pay/BlueMessage;Z)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x12

    invoke-static {v0}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/bluepay/core/pay/b;

    invoke-direct {v0, p1, p2}, Lcom/bluepay/core/pay/b;-><init>(ILcom/bluepay/pay/BlueMessage;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    const-string v0, "fail"

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->statUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->statUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/bluepay/core/pay/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/bluepay/core/pay/f;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected static a(Lcom/bluepay/data/g;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bluepay/core/pay/a;

    invoke-direct {v1, p0}, Lcom/bluepay/core/pay/a;-><init>(Lcom/bluepay/data/g;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static a(Lcom/bluepay/pay/IPayCallback;)V
    .locals 0

    sput-object p0, Lcom/bluepay/core/pay/BlueManager;->f:Lcom/bluepay/pay/IPayCallback;

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lcom/bluepay/core/pay/BlueManager;->e:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/bluepay/data/g;)Z
    .locals 1

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()V
    .locals 5

    const/4 v0, 0x0

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    array-length v1, v1

    if-lez v1, :cond_0

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    aget v1, v1, v0

    :goto_0
    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v0, 0x1

    :goto_1
    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    aget v2, v2, v0

    sget-object v3, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    aget v3, v3, v1

    if-le v2, v3, :cond_3

    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    aget v2, v2, v0

    sget-object v3, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    sget-object v4, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    aget v4, v4, v1

    aput v4, v3, v0

    sget-object v3, Lcom/bluepay/core/pay/BlueManager;->chargeArray:[I

    aput v2, v3, v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static b(IILjava/lang/String;Lcom/bluepay/data/Billing;)V
    .locals 4

    const/4 v0, 0x2

    :try_start_0
    sget v1, Lcom/bluepay/data/e;->a:I

    if-ne p1, v1, :cond_3

    const/4 v0, 0x1

    :cond_0
    :goto_0
    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_1
    invoke-static {}, Lcom/bluepay/sdk/b/h;->d()V

    new-instance v1, Lcom/bluepay/pay/BlueMessage;

    invoke-direct {v1}, Lcom/bluepay/pay/BlueMessage;-><init>()V

    invoke-virtual {v1, p1}, Lcom/bluepay/pay/BlueMessage;->setCode(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0000A"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bluepay/pay/BlueMessage;->setTransactionId(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/bluepay/pay/BlueMessage;->setPropsName(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Lcom/bluepay/pay/BlueMessage;->setPrice(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/bluepay/pay/BlueMessage;->setDesc(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p3}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p3}, Lcom/bluepay/data/Billing;->getShowUI()Z

    move-result v3

    invoke-static {v2, v0, v1, v3}, Lcom/bluepay/core/pay/BlueManager;->a(Landroid/app/Activity;ILcom/bluepay/pay/BlueMessage;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/16 v1, 0x25b

    if-ne p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluePay"

    const-string v2, "error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static b(Landroid/app/Activity;)V
    .locals 3

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->c:Lcom/bluepay/a/a;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->c:Lcom/bluepay/a/a;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/bluepay/core/pay/BlueManager;->c:Lcom/bluepay/a/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregister error. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/bluepay/data/g;)V
    .locals 0

    invoke-static {p0}, Lcom/bluepay/core/pay/BlueManager;->c(Lcom/bluepay/data/g;)V

    return-void
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "BluePay"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    const-string v0, "BluePay"

    invoke-static {p0, v0}, Lcom/bluepay/sdk/log/Share;->init(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "BluePay_statUrl"

    invoke-static {}, Lcom/bluepay/data/j;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bluepay/sdk/log/Share;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bluepay/core/pay/BlueManager;->statUrl:Ljava/lang/String;

    const-string v0, "BluePay_apiUrl"

    invoke-static {}, Lcom/bluepay/data/Config;->getCacheIp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bluepay/sdk/log/Share;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bluepay/core/pay/BlueManager;->apiUrl:Ljava/lang/String;

    const-string v0, "BluePay_verionTime"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bluepay/sdk/log/Share;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/bluepay/core/pay/BlueManager;->versionTime:I

    invoke-static {}, Lcom/bluepay/pay/ClientHelper;->generateSystemTime()I

    move-result v0

    sget v1, Lcom/bluepay/core/pay/BlueManager;->versionTime:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/bluepay/core/pay/BlueManager;->versionTime:I

    invoke-static {}, Lcom/bluepay/data/j;->q()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bluepay/core/pay/BlueManager;->statUrl:Ljava/lang/String;

    invoke-static {}, Lcom/bluepay/data/Config;->getCacheIp()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bluepay/core/pay/BlueManager;->apiUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sput-object v2, Lcom/bluepay/core/pay/BlueManager;->statUrl:Ljava/lang/String;

    sput-object v2, Lcom/bluepay/core/pay/BlueManager;->apiUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private static c(Lcom/bluepay/data/g;)V
    .locals 23

    const/4 v3, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/bluepay/data/g;->setShowUI(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v16

    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/AlertDialog;->show()V

    invoke-static {}, Lcom/bluepay/pay/BluePay;->getLandscape()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "bluep_by_otc_landscape"

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setContentView(I)V

    :goto_0
    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "payEdit"

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "payTip"

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "paybyYes"

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/widget/Button;

    move-object/from16 v17, v0

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "paybyNo"

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/widget/Button;

    move-object/from16 v18, v0

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "tipIv"

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "Bluep_paySerialNoTip"

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-string v5, "id"

    const-string v6, "Bluep_paySerialNoEdit"

    move-object/from16 v0, v16

    invoke-static {v0, v5, v6}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const-string v5, "id"

    const-string v6, "rl_CardNo_for_unipin"

    move-object/from16 v0, v16

    invoke-static {v0, v5, v6}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const-string v6, "id"

    const-string v7, "rl_serialNo_for_unipin"

    move-object/from16 v0, v16

    invoke-static {v0, v6, v7}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const-string v6, "id"

    const-string v7, "et_unipin_first_input"

    move-object/from16 v0, v16

    invoke-static {v0, v6, v7}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const-string v6, "id"

    const-string v7, "et_unipin_last_input"

    move-object/from16 v0, v16

    invoke-static {v0, v6, v7}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const-string v6, "id"

    const-string v7, "et_Seral_first"

    move-object/from16 v0, v16

    invoke-static {v0, v6, v7}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const-string v7, "id"

    const-string v8, "et_Seral_second"

    move-object/from16 v0, v16

    invoke-static {v0, v7, v8}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const-string v8, "id"

    const-string v20, "et_Seral_third"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-static {v0, v8, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const-string v20, "id"

    const-string v21, "et_Seral_fourth"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    new-instance v20, Lcom/bluepay/core/pay/BlueManager$b;

    invoke-virtual/range {p0 .. p0}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v10, v11, v1}, Lcom/bluepay/core/pay/BlueManager$b;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/content/Context;)V

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v20, Lcom/bluepay/core/pay/BlueManager$b;

    invoke-virtual/range {p0 .. p0}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-direct {v0, v11, v1, v2}, Lcom/bluepay/core/pay/BlueManager$b;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/content/Context;)V

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v20, Lcom/bluepay/core/pay/BlueManager$b;

    invoke-virtual/range {p0 .. p0}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v5, v6, v1}, Lcom/bluepay/core/pay/BlueManager$b;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/content/Context;)V

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v20, Lcom/bluepay/core/pay/BlueManager$b;

    invoke-virtual/range {p0 .. p0}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v6, v7, v1}, Lcom/bluepay/core/pay/BlueManager$b;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/content/Context;)V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v20, Lcom/bluepay/core/pay/BlueManager$b;

    invoke-virtual/range {p0 .. p0}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v7, v8, v1}, Lcom/bluepay/core/pay/BlueManager$b;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/content/Context;)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v20, Lcom/bluepay/core/pay/BlueManager$b;

    invoke-virtual/range {p0 .. p0}, Lcom/bluepay/data/g;->getActivity()Landroid/app/Activity;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v8, v10, v1}, Lcom/bluepay/core/pay/BlueManager$b;-><init>(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/content/Context;)V

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/16 v20, 0x22

    invoke-static/range {v20 .. v20}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const-string v20, "drawable"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "bluep_logo_"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/bluepay/data/g;->getCPPayType()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/bluepay/data/g;->getCPPayType()Ljava/lang/String;

    move-result-object v20

    const-string v21, "12call"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/bluepay/data/g;->getCPPayType()Ljava/lang/String;

    move-result-object v20

    const-string v21, "happy"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/bluepay/data/g;->getCPPayType()Ljava/lang/String;

    move-result-object v20

    const-string v21, "truemoney"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/bluepay/data/g;->getCPPayType()Ljava/lang/String;

    move-result-object v20

    const-string v21, "telkomsel"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/bluepay/data/g;->getCPPayType()Ljava/lang/String;

    move-result-object v20

    const-string v21, "indomog"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x1

    sput-boolean v3, Lcom/bluepay/core/pay/BlueManager;->b:Z

    const/16 v3, 0x8

    invoke-virtual {v12, v3}, Landroid/widget/EditText;->setVisibility(I)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/bluepay/data/g;->getCPPayType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "happy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "please input serial No(10)  and card No(6)"

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x20008

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    const/4 v3, 0x0

    invoke-virtual {v13, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    new-instance v3, Lcom/bluepay/core/pay/d;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v16}, Lcom/bluepay/core/pay/d;-><init>(Lcom/bluepay/data/g;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/content/Context;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/bluepay/core/pay/e;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Lcom/bluepay/core/pay/e;-><init>(Lcom/bluepay/data/g;Landroid/app/AlertDialog;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void

    :cond_2
    invoke-virtual {v13}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "layout"

    const-string v5, "bluep_by_otc_portrait"

    move-object/from16 v0, v16

    invoke-static {v0, v4, v5}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    new-instance v3, Lcom/bluepay/data/Billing;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/bluepay/data/Billing;-><init>(Lcom/bluepay/data/g;)V

    const-string v4, "showCardDialog error"

    iput-object v4, v3, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v4, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v5, 0xe

    sget v6, Lcom/bluepay/data/e;->i:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/bluepay/data/g;->getCPPayType()Ljava/lang/String;

    move-result-object v20

    const-string v21, "unipin"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Landroid/widget/EditText;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v12, v3}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v3, 0x0

    sput-boolean v3, Lcom/bluepay/core/pay/BlueManager;->b:Z

    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x0

    sput-boolean v4, Lcom/bluepay/core/pay/BlueManager;->b:Z

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/widget/EditText;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/bluepay/core/pay/BlueManager;->e:Z

    return v0
.end method

.method static synthetic d()Lcom/bluepay/pay/IPayCallback;
    .locals 1

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->f:Lcom/bluepay/pay/IPayCallback;

    return-object v0
.end method
