.class final Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qihoo/gamecenter/sdk/common/IDispatcherCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic iH:I

.field private final synthetic jh:Ljava/lang/String;

.field private final synthetic jk:Ljava/lang/String;

.field private final synthetic p:Landroid/content/Context;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$10;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$10;->jh:Ljava/lang/String;

    iput p3, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$10;->iH:I

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$10;->jk:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$10;->p:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "KunlunProxyStubImpl4qihoodanji"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "360PayCallback, data is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "error_code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$10;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v3, 0x1

    const-string v4, "qihoo onPaymentFail"

    invoke-interface {v0, v3, v4}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move v0, v1

    :goto_1
    if-nez v0, :cond_1

    const-string v0, "KunlunProxyStubImpl4qihoodanji"

    const-string v1, "\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_0
    :try_start_1
    const-string v3, "content"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$10;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " onPaymentSuccess"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v3, "offline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "channel"

    const-string v4, "qihoodanji"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "order_id"

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$10;->jh:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "price"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$10;->iH:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "token"

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$10;->jk:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "time"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pay_partners_order_id"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getPartenersOrderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$10;->p:Landroid/content/Context;

    invoke-static {v3}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->getInstance(Landroid/content/Context;)Lcom/kunlun/platform/android/KunlunOrderListUtil;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->platFormPurchase(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v3, "KunlunProxyStubImpl4qihoodanji"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$10;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v3, "qihoo onPaymentError"

    invoke-interface {v0, v1, v3}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    move v0, v2

    goto/16 :goto_1

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$10;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v3, 0x2

    const-string v4, "qihoo onPaymentCancled"

    invoke-interface {v0, v3, v4}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
