.class public Lcom/kunlun/platform/android/bluePay/BluePayIAP;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/platform/android/bluePay/BluePayIAP$a;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private di:Lcom/kunlun/platform/android/bluePay/BluePayIAP$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$a;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/bluePay/BluePayIAP$a;-><init>(Lcom/kunlun/platform/android/bluePay/BluePayIAP;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP;->di:Lcom/kunlun/platform/android/bluePay/BluePayIAP$a;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/bluePay/BluePayIAP;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/bluePay/BluePayIAP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    invoke-static {}, Lcom/bluepay/pay/ClientHelper;->generateTid()Ljava/lang/String;

    const-string v1, "12cell"

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bluepay/pay/BluePay;->getInstance()Lcom/bluepay/pay/BluePay;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "12call"

    iget-object v9, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP;->di:Lcom/kunlun/platform/android/bluePay/BluePayIAP$a;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/bluepay/pay/BluePay;->payByCashcard(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bluepay/pay/IPayCallback;)Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "trueMoney"

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/bluepay/pay/BluePay;->getInstance()Lcom/bluepay/pay/BluePay;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string v6, "truemoney"

    iget-object v9, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP;->di:Lcom/kunlun/platform/android/bluePay/BluePayIAP$a;

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/bluepay/pay/BluePay;->payByCashcard(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bluepay/pay/IPayCallback;)Z

    goto :goto_0

    :cond_1
    const-string v1, "linePay"

    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/bluepay/pay/BluePay;->getInstance()Lcom/bluepay/pay/BluePay;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v3

    const-string v8, "line"

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP;->di:Lcom/kunlun/platform/android/bluePay/BluePayIAP$a;

    move-object v4, p1

    move-object v5, p3

    move-object/from16 v6, p4

    move-object v7, p2

    move-object/from16 v9, p7

    invoke-virtual/range {v1 .. v11}, Lcom/bluepay/pay/BluePay;->payByWallet(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/bluepay/pay/IPayCallback;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Not set bluepay type!"

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public purchase(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    iput-object p1, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP;->activity:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kunlun://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bluepay/pay/BluePay;->setLandscape(Z)V

    :goto_0
    const-string v0, ""

    const-string v1, "Please wait\u2026\u2026"

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p3

    move-object/from16 v7, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;-><init>(Lcom/kunlun/platform/android/bluePay/BluePayIAP;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/bluepay/pay/Client;->init(Landroid/app/Activity;Lcom/bluepay/interfaceClass/BlueInitCallback;)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bluepay/pay/BluePay;->setLandscape(Z)V

    goto :goto_0
.end method
