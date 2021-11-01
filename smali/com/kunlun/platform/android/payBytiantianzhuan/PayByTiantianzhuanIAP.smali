.class public Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/twm/pt/gamecashflow/TWMGameCash;->getGameCash()Lcom/twm/pt/gamecashflow/TWMGameCash;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/twm/pt/gamecashflow/TWMGameCash;->pay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/twm/pt/gamecashflow/TWMGameCash$GameCashCallback;)V

    return-void
.end method


# virtual methods
.method public purchase(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    new-instance v0, Lcom/twm/pt/gamecashflow/TWMGameCash;

    invoke-direct {v0, p1}, Lcom/twm/pt/gamecashflow/TWMGameCash;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/twm/pt/gamecashflow/TWMGameCash;->setGameCash(Lcom/twm/pt/gamecashflow/TWMGameCash;)V

    invoke-static {}, Lcom/twm/pt/gamecashflow/TWMGameCash;->getGameCash()Lcom/twm/pt/gamecashflow/TWMGameCash;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.debugMode"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twm/pt/gamecashflow/TWMGameCash;->setStaging(Ljava/lang/Boolean;)V

    const-string v0, "kunlunPayByTiantianzhuanIAP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "purchase:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "\u8acb\u7a0d\u7b49..."

    invoke-static {p1, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "goodsId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->setPayOrderExt(Ljava/util/List;)V

    const-string v0, "tiantianzhuan"

    new-instance v1, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$1;-><init>(Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method
