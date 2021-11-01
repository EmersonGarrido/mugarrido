.class public Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appkey:Ljava/lang/String;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mp:Ljava/lang/String;

.field private mq:Lcom/upay/billing/sdk/Upay;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->g(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->appkey:Ljava/lang/String;

    invoke-static {v0}, Lcom/upay/billing/sdk/Upay;->getInstance(Ljava/lang/String;)Lcom/upay/billing/sdk/Upay;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->mp:Ljava/lang/String;

    new-instance v2, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$3;

    invoke-direct {v2, p2}, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/upay/billing/sdk/Upay;->pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/sdk/UpayCallback;)Ljava/lang/String;

    return-void
.end method

.method private g(Landroid/app/Activity;)V
    .locals 2

    const-string v0, ""

    const-string v1, "\u8acb\u7a0d\u7b49..."

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->setPayOrderExt(Ljava/util/List;)V

    const-string v0, "upay"

    new-instance v1, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2;

    invoke-direct {v1, p0, p1}, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$2;-><init>(Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;Landroid/app/Activity;)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method


# virtual methods
.method public purchase(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iput-object p2, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->mp:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Upay.appkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->appkey:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Upay.secret"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "kunlun"

    iget-object v0, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Upay.channelkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Upay.channelkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Upay.buildDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->mq:Lcom/upay/billing/sdk/Upay;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->g(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->appkey:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$1;

    invoke-direct {v5, p0, p1}, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP$1;-><init>(Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;Landroid/app/Activity;)V

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/upay/billing/sdk/Upay;->initInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/upay/billing/sdk/UpayInitCallback;)Lcom/upay/billing/sdk/Upay;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/payByUpay/PayByUpayIAP;->mq:Lcom/upay/billing/sdk/Upay;

    goto :goto_0
.end method
