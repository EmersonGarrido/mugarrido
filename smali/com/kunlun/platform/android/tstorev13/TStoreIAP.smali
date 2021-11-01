.class public Lcom/kunlun/platform/android/tstorev13/TStoreIAP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static handler:Landroid/os/Handler;

.field private static productName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP;->handler:Landroid/os/Handler;

    const-string v0, ""

    sput-object v0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP;->productName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/kunlun/platform/android/tstorev13/ParamsBuilder;

    invoke-direct {v0}, Lcom/kunlun/platform/android/tstorev13/ParamsBuilder;-><init>()V

    const-string v1, "appid"

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/tstorev13/ParamsBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/kunlun/platform/android/tstorev13/ParamsBuilder;

    const-string v1, "product_id"

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/tstorev13/ParamsBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/kunlun/platform/android/tstorev13/ParamsBuilder;

    const-string v1, "product_name"

    sget-object v2, Lcom/kunlun/platform/android/tstorev13/TStoreIAP;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/tstorev13/ParamsBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/kunlun/platform/android/tstorev13/ParamsBuilder;

    const-string v1, "tid"

    invoke-virtual {v0, v1, v4}, Lcom/kunlun/platform/android/tstorev13/ParamsBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/kunlun/platform/android/tstorev13/ParamsBuilder;

    const-string v1, "bpinfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/tstorev13/ParamsBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/kunlun/platform/android/tstorev13/ParamsBuilder;

    const-string v1, "ctime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/tstorev13/ParamsBuilder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/kunlun/platform/android/tstorev13/ParamsBuilder;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/tstorev13/ParamsBuilder;->build()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "development"

    :goto_1
    invoke-static {p0, v0}, Lcom/skplanet/dodo/IapPlugin;->getPlugin(Landroid/content/Context;Ljava/lang/String;)Lcom/skplanet/dodo/IapPlugin;

    move-result-object v7

    new-instance v0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v6, v0}, Lcom/skplanet/dodo/IapPlugin;->sendPaymentRequest(Ljava/lang/String;Lcom/skplanet/dodo/IapPlugin$RequestCallback;)Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    const-string v0, "release"

    goto :goto_1
.end method

.method static synthetic bG()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "goodsId\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->setPayOrderExt(Ljava/util/List;)V

    const-string v0, ""

    const-string v1, "\ub85c\ub4dc \uc911..."

    invoke-static {p0, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tstore"

    new-instance v1, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    return-void
.end method
