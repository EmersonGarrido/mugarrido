.class public Lcom/bluepay/pay/BluePay;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluepay/pay/BluePay$DialogClickListener;,
        Lcom/bluepay/pay/BluePay$PayCallBack;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:Z

.field public static mBluePay:Lcom/bluepay/pay/BluePay;


# instance fields
.field public final SHOWDIALOG_LANDSCAPE:I

.field public final SHOWDIALOG_NO:I

.field public final SHOWDIALOG_PORTRAIT:I

.field public final TAG:Ljava/lang/String;

.field private c:B

.field private d:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bluepay/pay/BluePay;->a:Z

    sput-boolean v0, Lcom/bluepay/pay/BluePay;->b:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BluePay"

    iput-object v0, p0, Lcom/bluepay/pay/BluePay;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bluepay/pay/BluePay;->SHOWDIALOG_NO:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/bluepay/pay/BluePay;->SHOWDIALOG_PORTRAIT:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/bluepay/pay/BluePay;->SHOWDIALOG_LANDSCAPE:I

    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/bluepay/pay/BluePay;->c:B

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {p1, p2}, Lcom/bluepay/data/g;->getSafePrice(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Lcom/bluepay/pay/IPayCallback;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 12

    new-instance v0, Lcom/bluepay/pay/BluePay$2;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p7

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p5

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object v10, p2

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lcom/bluepay/pay/BluePay$2;-><init>(Lcom/bluepay/pay/BluePay;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/bluepay/pay/IPayCallback;I)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z
    .locals 15

    const/4 v11, 0x6

    invoke-static/range {p3 .. p4}, Lcom/bluepay/data/g;->getSafePrice(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    sget v1, Lcom/bluepay/pay/Client;->m_iOperatorId:I

    const/16 v2, 0x1b

    if-ne v1, v2, :cond_0

    const-string v1, "huawei"

    move-object v13, v1

    :goto_0
    const/4 v1, 0x1

    if-ge v9, v1, :cond_2

    if-eqz p7, :cond_1

    const-string v8, "SMS"

    const-string v9, ""

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p8

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v11}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Lcom/bluepay/pay/IPayCallback;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    const-string v1, "SMS"

    move-object v13, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/bluepay/data/Billing;

    const/4 v4, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/bluepay/data/Billing;-><init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "price="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v3, 0xe

    sget v4, Lcom/bluepay/data/e;->i:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "price="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/bluepay/data/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    int-to-byte v1, v11

    invoke-virtual {p0, v1}, Lcom/bluepay/pay/BluePay;->setCheckNum(B)V

    const-string v3, "000000SMS"

    const-string v7, ""

    const-string v8, ""

    const-string v12, ""

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move/from16 v10, p5

    move-object v11, v13

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-direct/range {v1 .. v14}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    move-result v1

    goto/16 :goto_1
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z
    .locals 14

    const-string v1, "pay"

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    if-ltz p9, :cond_0

    const/16 v1, 0x63

    move/from16 v0, p9

    if-le v0, v1, :cond_1

    :cond_0
    const-string v1, "smsID should just between 100 and 0"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    invoke-static/range {p13 .. p13}, Lcom/bluepay/core/pay/BlueManager;->a(Lcom/bluepay/pay/IPayCallback;)V

    invoke-static {}, Lcom/bluepay/pay/Client;->phoneNum()Ljava/lang/String;

    move-result-object v8

    new-instance v1, Lcom/bluepay/data/i;

    sget v2, Lcom/bluepay/pay/Client;->m_iOperatorId:I

    invoke-static {}, Lcom/bluepay/pay/Client;->getProductId()I

    move-result v3

    const/4 v4, 0x2

    invoke-static {}, Lcom/bluepay/pay/Client;->getPromotionId()Ljava/lang/String;

    move-result-object v6

    move/from16 v5, p8

    invoke-direct/range {v1 .. v6}, Lcom/bluepay/data/i;-><init>(IIIILjava/lang/String;)V

    const/4 v13, 0x0

    new-instance v2, Lcom/bluepay/data/g;

    invoke-static {}, Lcom/bluepay/pay/Client;->getProductId()I

    move-result v5

    invoke-static {}, Lcom/bluepay/pay/Client;->getPromotionId()Ljava/lang/String;

    move-result-object v6

    sget v12, Lcom/bluepay/pay/Client;->m_iOperatorId:I

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    move-object v10, v1

    move/from16 v11, p12

    invoke-direct/range {v2 .. v12}, Lcom/bluepay/data/g;-><init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bluepay/data/i;ZI)V

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Lcom/bluepay/data/g;->setSmsId(I)V

    const-string v1, "SMS"

    move-object/from16 v0, p10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "bankcharge"

    move-object/from16 v0, p10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x0

    move v3, v13

    :goto_1
    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Lcom/bluepay/data/g;->setCPPayType(Ljava/lang/String;)V

    iget-byte v4, p0, Lcom/bluepay/pay/BluePay;->c:B

    invoke-virtual {v2, v4}, Lcom/bluepay/data/g;->setCheckNum(I)V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/bluepay/data/g;->setCurrency(Ljava/lang/String;)V

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Lcom/bluepay/data/g;->setPrice(I)V

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/bluepay/core/pay/BlueManager;->a(Ljava/lang/String;Lcom/bluepay/data/g;)Z

    move-result v4

    if-nez v4, :cond_9

    new-instance v1, Lcom/bluepay/data/Billing;

    move-object v2, p1

    move-object/from16 v3, p3

    move/from16 v4, p8

    move/from16 v5, p9

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/bluepay/data/Billing;-><init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V

    const-string v2, "order insert into order list error"

    iput-object v2, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    iget-object v2, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    invoke-static {v2}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v3, 0xe

    sget v4, Lcom/bluepay/data/e;->i:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    invoke-static/range {p10 .. p10}, Lcom/bluepay/pay/BluePay;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "telenor"

    move-object/from16 v0, p10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x5

    move v3, v13

    goto :goto_1

    :cond_5
    const-string v1, "line"

    move-object/from16 v0, p10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Lcom/bluepay/data/g;->setScheme(Ljava/lang/String;)V

    move v3, v13

    goto :goto_1

    :cond_6
    const-string v1, "offline"

    move-object/from16 v0, p10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    move v3, v13

    goto :goto_1

    :cond_7
    const-string v1, "huawei"

    move-object/from16 v0, p10

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    move v3, v13

    goto :goto_1

    :cond_8
    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Lcom/bluepay/data/g;->setCard(Ljava/lang/String;)V

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Lcom/bluepay/data/g;->setSerialNo(Ljava/lang/String;)V

    const/4 v1, 0x3

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_9
    const-string v4, "begin to deal billing"

    invoke-static {v4}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    new-instance v4, Lcom/bluepay/data/Billing;

    invoke-direct {v4, v2}, Lcom/bluepay/data/Billing;-><init>(Lcom/bluepay/data/g;)V

    sget-boolean v2, Lcom/bluepay/core/pay/BlueManager;->g_bIsShowSecondDialog:Z

    if-eqz v2, :cond_a

    if-nez v3, :cond_a

    const/16 v2, 0x30

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/bluepay/data/Billing;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, "TIPS"

    new-instance v6, Lcom/bluepay/pay/BluePay$DialogClickListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v4, v1, v7}, Lcom/bluepay/pay/BluePay$DialogClickListener;-><init>(Lcom/bluepay/pay/BluePay;Lcom/bluepay/data/g;II)V

    new-instance v1, Lcom/bluepay/pay/BluePay$1;

    invoke-direct {v1, p0, v4}, Lcom/bluepay/pay/BluePay$1;-><init>(Lcom/bluepay/pay/BluePay;Lcom/bluepay/data/Billing;)V

    invoke-static {v3, v5, v2, v6, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_a
    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v5, v4}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto :goto_2
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z
    .locals 7

    const/16 v6, 0xe

    const/4 v3, 0x0

    new-instance v0, Lcom/bluepay/data/Billing;

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bluepay/data/Billing;-><init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V

    invoke-virtual {v0, p4}, Lcom/bluepay/data/Billing;->setShowUI(Z)V

    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p5, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p5}, Lcom/bluepay/core/pay/BlueManager;->a(Lcom/bluepay/pay/IPayCallback;)V

    invoke-static {p1}, Lcom/bluepay/sdk/b/f;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "network is unvalid,please check you setting."

    iput-object v1, v0, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    sget v2, Lcom/bluepay/data/e;->h:I

    invoke-virtual {v1, v6, v2, v3, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    iget-object v0, v0, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    :goto_0
    return v3

    :cond_2
    invoke-static {}, Lcom/bluepay/pay/Client;->a()Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/bluepay/data/e;->i:I

    invoke-static {v1}, Lcom/bluepay/data/e;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    sget v2, Lcom/bluepay/data/e;->i:I

    invoke-virtual {v1, v6, v2, v3, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private a(Lcom/bluepay/data/Billing;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/bluepay/pay/Client;->m_hashChargeList:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/bluepay/pay/Client;->m_hashChargeList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-ge v2, v0, :cond_1

    :cond_0
    sget v2, Lcom/bluepay/data/e;->g:I

    invoke-static {v2}, Lcom/bluepay/data/e;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v3, 0xe

    sget v4, Lcom/bluepay/data/e;->g:I

    invoke-virtual {v2, v3, v4, v1, p1}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    const/16 v2, 0x1f

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    const/16 v3, 0x27

    invoke-static {v3}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/bluepay/data/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    move v0, v1

    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/bluepay/pay/BluePay;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z
    .locals 1

    invoke-direct/range {p0 .. p13}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    move-result v0

    return v0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "dcb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dcb_indosat"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dcb_smartfren"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dcb_xl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/bluepay/pay/BluePay;
    .locals 1

    sget-object v0, Lcom/bluepay/pay/BluePay;->mBluePay:Lcom/bluepay/pay/BluePay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bluepay/pay/BluePay;

    invoke-direct {v0}, Lcom/bluepay/pay/BluePay;-><init>()V

    sput-object v0, Lcom/bluepay/pay/BluePay;->mBluePay:Lcom/bluepay/pay/BluePay;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/bluepay/pay/BluePay;->mBluePay:Lcom/bluepay/pay/BluePay;

    goto :goto_0
.end method

.method public static getLandscape()Z
    .locals 1

    sget-boolean v0, Lcom/bluepay/pay/BluePay;->b:Z

    return v0
.end method

.method public static getShowCardLoading()Z
    .locals 1

    sget-boolean v0, Lcom/bluepay/pay/BluePay;->a:Z

    return v0
.end method

.method public static setLandscape(Z)V
    .locals 0

    sput-boolean p0, Lcom/bluepay/pay/BluePay;->b:Z

    return-void
.end method

.method public static setShowCardLoading(Z)V
    .locals 0

    sput-boolean p0, Lcom/bluepay/pay/BluePay;->a:Z

    return-void
.end method


# virtual methods
.method public payByBank(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)V
    .locals 17

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    :try_start_0
    invoke-direct/range {v3 .. v8}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Lcom/bluepay/data/Billing;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/bluepay/data/Billing;-><init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/bluepay/pay/BluePay;->a(Lcom/bluepay/data/Billing;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/bluepay/pay/Client;->m_BankChargeInfo:Lcom/bluepay/data/b;

    iget-boolean v4, v4, Lcom/bluepay/data/b;->a:Z

    if-nez v4, :cond_2

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/bluepay/data/Billing;->setShowUI(Z)V

    const-string v4, "Bank charge not support"

    iput-object v4, v3, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v4, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v5, 0xe

    sget v6, Lcom/bluepay/data/e;->i:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    iget-object v3, v3, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    invoke-static {v3}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v3, Lcom/bluepay/data/Billing;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/bluepay/data/Billing;-><init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V

    const-string v4, "deal billing error"

    iput-object v4, v3, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v4, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v5, 0xe

    sget v6, Lcom/bluepay/data/e;->i:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2}, Lcom/bluepay/pay/BluePay;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    const/4 v3, 0x1

    if-ge v11, v3, :cond_3

    if-eqz p6, :cond_0

    const/4 v8, 0x0

    const-string v10, "bankcharge"

    const-string v11, ""

    const/4 v13, 0x5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p7

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p5

    move/from16 v12, p6

    invoke-direct/range {v3 .. v13}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Lcom/bluepay/pay/IPayCallback;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    const-string v5, ""

    if-nez p3, :cond_4

    const-string v7, ""

    :goto_1
    if-nez p5, :cond_5

    const-string v8, ""

    :goto_2
    const-string v9, ""

    const-string v10, ""

    const-string v13, "bankcharge"

    const-string v14, ""

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move/from16 v15, p6

    move-object/from16 v16, p7

    invoke-direct/range {v3 .. v16}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v7, p3

    goto :goto_1

    :cond_5
    move-object/from16 v8, p5

    goto :goto_2
.end method

.method public payByCashcard(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bluepay/pay/IPayCallback;)Z
    .locals 14

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    if-nez p8, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const/16 v1, 0x20

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    const-string v2, ""

    :goto_0
    const-string v4, "TRF"

    if-nez p4, :cond_3

    const-string v5, ""

    :goto_1
    if-nez p6, :cond_4

    const-string v6, ""

    :goto_2
    if-nez p7, :cond_5

    const-string v7, ""

    :goto_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v11, ""

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p3

    move-object/from16 v10, p5

    move-object/from16 v13, p8

    invoke-direct/range {v0 .. v13}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    move-result v0

    return v0

    :cond_2
    move-object/from16 v2, p2

    goto :goto_0

    :cond_3
    move-object/from16 v5, p4

    goto :goto_1

    :cond_4
    move-object/from16 v6, p6

    goto :goto_2

    :cond_5
    move-object/from16 v7, p7

    goto :goto_3
.end method

.method public payByOffline(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)V
    .locals 15

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null parameter"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/bluepay/data/Billing;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/bluepay/data/Billing;-><init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Lcom/bluepay/data/Billing;->setCurrency(Ljava/lang/String;)V

    sget-object v2, Lcom/bluepay/pay/Client;->m_BankChargeInfo:Lcom/bluepay/data/b;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/bluepay/pay/Client;->m_BankChargeInfo:Lcom/bluepay/data/b;

    iget-boolean v2, v2, Lcom/bluepay/data/b;->c:Z

    if-nez v2, :cond_1

    move/from16 v0, p7

    invoke-virtual {v1, v0}, Lcom/bluepay/data/Billing;->setShowUI(Z)V

    const-string v2, "offline charge not support"

    iput-object v2, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v3, 0xe

    sget v4, Lcom/bluepay/data/e;->i:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    iget-object v1, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Lcom/bluepay/data/Billing;->setPrice(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v11, "offline"

    const-string v12, ""

    const/4 v13, 0x1

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move-object/from16 v14, p8

    invoke-direct/range {v1 .. v14}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v2, "price is error"

    iput-object v2, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v3, 0xe

    sget v4, Lcom/bluepay/data/e;->i:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0
.end method

.method public payBySMS(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/bluepay/pay/IPayCallback;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v6, p8

    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/bluepay/data/Billing;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/bluepay/data/Billing;-><init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V

    invoke-static {}, Lcom/bluepay/pay/Client;->a()Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v3, 0xe

    sget v4, Lcom/bluepay/data/e;->i:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/bluepay/pay/BluePay;->a(Lcom/bluepay/data/Billing;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v9, 0x0

    sget-object v2, Lcom/bluepay/pay/Client;->m_DcbInfo:Lcom/bluepay/data/c;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/bluepay/pay/Client;->m_DcbInfo:Lcom/bluepay/data/c;

    iget v2, v2, Lcom/bluepay/data/c;->b:I

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "publisher:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    const/4 v12, 0x6

    invoke-static/range {p3 .. p4}, Lcom/bluepay/data/g;->getSafePrice(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ge v0, v2, :cond_5

    if-eqz p7, :cond_4

    const/4 v7, 0x0

    const-string v10, ""

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    move/from16 v11, p7

    invoke-direct/range {v2 .. v12}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Lcom/bluepay/pay/IPayCallback;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "price="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "price="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/bluepay/data/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    new-instance v1, Lcom/bluepay/data/Billing;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/bluepay/data/Billing;-><init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V

    const-string v2, "deal billing error"

    iput-object v2, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v3, 0xe

    sget v4, Lcom/bluepay/data/e;->i:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto/16 :goto_0

    :pswitch_0
    :try_start_1
    invoke-direct/range {p0 .. p8}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    goto/16 :goto_0

    :pswitch_1
    const-string v9, "dcb"

    goto/16 :goto_1

    :pswitch_2
    const-string v9, "dcb_indosat"

    goto/16 :goto_1

    :pswitch_3
    const-string v9, "dcb_smartfren"

    goto/16 :goto_1

    :pswitch_4
    const-string v9, "telenor"

    goto/16 :goto_1

    :pswitch_5
    const-string v9, "huawei"

    goto/16 :goto_1

    :cond_5
    const-string v12, ""

    if-nez p3, :cond_6

    const-string v14, ""

    :goto_2
    if-nez p6, :cond_7

    const-string v15, ""

    :goto_3
    const-string v16, ""

    const-string v17, ""

    const-string v21, ""

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v13, p2

    move/from16 v19, p5

    move-object/from16 v20, v9

    move/from16 v22, p7

    move-object/from16 v23, p8

    invoke-direct/range {v10 .. v23}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v14, p3

    goto :goto_2

    :cond_7
    move-object/from16 v15, p6

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public payByUI(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/bluepay/pay/IPayCallback;)V
    .locals 12

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p6

    move-object/from16 v6, p9

    invoke-direct/range {v1 .. v6}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/bluepay/core/pay/BlueManager;->isPayByUI:Z

    const-class v1, Lcom/bluepay/ui/PaymentActivity;

    invoke-virtual {v11, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object/from16 v0, p5

    invoke-direct {p0, p3, v0}, Lcom/bluepay/pay/BluePay;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    const-string v1, "TRF"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p3, "THB"

    move-object v9, p3

    :goto_1
    new-instance v1, Lcom/bluepay/data/PayEntry;

    invoke-static {}, Lcom/bluepay/pay/Client;->getProductId()I

    move-result v2

    invoke-static {}, Lcom/bluepay/pay/Client;->getPromotionId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/bluepay/pay/Client;->getOperator()I

    move-result v10

    move-object v4, p2

    move-object/from16 v5, p4

    move/from16 v7, p7

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v10}, Lcom/bluepay/data/PayEntry;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p8, "bluepay://best.bluepay.asia"

    :cond_1
    move-object/from16 v0, p8

    iput-object v0, v1, Lcom/bluepay/data/PayEntry;->scheme:Ljava/lang/String;

    const-string v2, "entry"

    invoke-virtual {v11, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static/range {p9 .. p9}, Lcom/bluepay/core/pay/BlueManager;->a(Lcom/bluepay/pay/IPayCallback;)V

    invoke-virtual {p1, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v7, v1

    new-instance v1, Lcom/bluepay/data/Billing;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v6, p6

    invoke-direct/range {v1 .. v6}, Lcom/bluepay/data/Billing;-><init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V

    const-string v2, "please register the PaymentActivity on manifest"

    iput-object v2, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bluepay/data/Billing;->setShowUI(Z)V

    sget-object v2, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v3, 0xe

    sget v4, Lcom/bluepay/data/e;->g:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    move-object v9, p3

    goto :goto_1
.end method

.method public payByWallet(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)V
    .locals 19

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p6

    move/from16 v7, p9

    move-object/from16 v8, p10

    invoke-direct/range {v3 .. v8}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Lcom/bluepay/data/Billing;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/bluepay/data/Billing;-><init>(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/bluepay/pay/BluePay;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    if-gtz v13, :cond_2

    if-eqz p9, :cond_1

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p10

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    invoke-direct/range {v3 .. v13}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Lcom/bluepay/pay/IPayCallback;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "price="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    sget-object v4, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v5, 0xe

    sget v6, Lcom/bluepay/data/e;->i:I

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    const/16 v3, 0x1f

    invoke-static {v3}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "price="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " error!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/bluepay/data/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bluepay/sdk/log/Trace;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v9, "THB"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v10, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move/from16 v17, p9

    move-object/from16 v18, p10

    invoke-direct/range {v5 .. v18}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    goto/16 :goto_0
.end method

.method public paybyAd(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/bluepay/pay/BluePay;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "parameter error"

    invoke-static {p1, v0}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p8}, Lcom/bluepay/core/pay/BlueManager;->a(Lcom/bluepay/pay/IPayCallback;)V

    invoke-static {p5, p6}, Lcom/bluepay/data/g;->getSafePrice(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v1, Lcom/bluepay/data/Billing;

    invoke-direct {v1, p1, p5, v0, p2}, Lcom/bluepay/data/Billing;-><init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/bluepay/data/Billing;->setShowUI(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget v2, Lcom/bluepay/data/e;->i:I

    invoke-static {v2}, Lcom/bluepay/data/e;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " price error:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/bluepay/data/Billing;->desc:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-static {v2}, Lcom/bluepay/data/f;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " price:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v2, 0xe

    sget v3, Lcom/bluepay/data/e;->i:I

    invoke-virtual {v0, v2, v3, v6, v1}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Lcom/bluepay/data/Billing;

    invoke-static {p6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p1, p5, v1, p2}, Lcom/bluepay/data/Billing;-><init>(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p7, :cond_2

    :goto_1
    sget-object v1, Lcom/bluepay/core/pay/BlueManager;->mExecuteCallback:Lcom/bluepay/core/pay/BlueManager$a;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v4, v3, v0}, Lcom/bluepay/core/pay/BlueManager$a;->a(IIILcom/bluepay/data/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1
.end method

.method public queryTrans(Landroid/app/Activity;Lcom/bluepay/pay/IPayCallback;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, Lcom/bluepay/sdk/b/h;->a(Landroid/app/Activity;Lcom/bluepay/pay/IPayCallback;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setCheckNum(B)V
    .locals 0

    iput-byte p1, p0, Lcom/bluepay/pay/BluePay;->c:B

    return-void
.end method
