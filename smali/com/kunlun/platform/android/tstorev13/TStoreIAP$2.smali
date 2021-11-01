.class final Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/skplanet/dodo/IapPlugin$RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/tstorev13/TStoreIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic B:Ljava/lang/String;

.field private final synthetic lh:Ljava/lang/String;

.field private final synthetic mO:Ljava/lang/String;

.field private final synthetic mP:Ljava/lang/String;

.field private final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;->lh:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;->B:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;->mO:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;->mP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "run_on_error"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError() identifier:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "T-Store onError ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    return-void
.end method

.method public final onResponse(Lcom/skplanet/dodo/IapResponse;)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/skplanet/dodo/IapResponse;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const-string v0, "T-Store onResponse data is null"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/kunlun/platform/android/tstorev13/ConverterFactory;->getConverter()Lcom/kunlun/platform/android/tstorev13/Converter;

    move-result-object v0

    invoke-interface {p1}, Lcom/skplanet/dodo/IapResponse;->getContentToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/tstorev13/Converter;->fromJson(Ljava/lang/String;)Lcom/kunlun/platform/android/tstorev13/Response;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "T-Store response is null"

    invoke-static {v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/kunlun/platform/android/tstorev13/Response;->result:Lcom/kunlun/platform/android/tstorev13/Response$Result;

    iget-object v1, v1, Lcom/kunlun/platform/android/tstorev13/Response$Result;->code:Ljava/lang/String;

    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;->p:Landroid/content/Context;

    const-string v2, ""

    const-string v3, "\ub85c\ub4dc \uc911..."

    invoke-static {v1, v2, v3}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "channel"

    const-string v3, "tstore"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appid"

    iget-object v3, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;->lh:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "goods_id"

    iget-object v3, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;->B:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "tid"

    iget-object v3, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;->mO:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "txid"

    iget-object v3, v0, Lcom/kunlun/platform/android/tstorev13/Response;->result:Lcom/kunlun/platform/android/tstorev13/Response$Result;

    iget-object v3, v3, Lcom/kunlun/platform/android/tstorev13/Response$Result;->txid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "receipt"

    iget-object v0, v0, Lcom/kunlun/platform/android/tstorev13/Response;->result:Lcom/kunlun/platform/android/tstorev13/Response$Result;

    iget-object v0, v0, Lcom/kunlun/platform/android/tstorev13/Response$Result;->receipt:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;->mO:Ljava/lang/String;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aget-object v0, v0, v2

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v4, "Asia/Seoul"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v4, Ljava/sql/Date;

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    invoke-direct {v4, v2, v3}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "date"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sandbox"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "order_id"

    iget-object v2, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;->mP:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_partners_order_id"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getPartenersOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;->p:Landroid/content/Context;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->getInstance(Landroid/content/Context;)Lcom/kunlun/platform/android/KunlunOrderListUtil;

    move-result-object v0

    new-instance v2, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2$1;

    iget-object v3, p0, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2;->p:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/kunlun/platform/android/tstorev13/TStoreIAP$2$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->platFormPurchase(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    :goto_1
    return-void

    :cond_3
    const-string v0, "0"

    goto :goto_0

    :cond_4
    const-string v0, "T-Store RequestCallback"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto :goto_1
.end method
