.class final Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/qihoo/gamecenter/sdk/common/IDispatcherCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jf:Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;

.field private final synthetic jh:Ljava/lang/String;

.field private final synthetic p:Landroid/content/Context;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$6;->jf:Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$6;->jh:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$6;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$6;->p:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "KunlunProxyStubImpl4qihoo"

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

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$6;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v4, 0x1

    const-string v5, "qihoo onPaymentFail"

    invoke-interface {v3, v4, v5}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    const-string v3, "error_msg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$6;->p:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_1
    if-nez v0, :cond_0

    const-string v0, "KunlunProxyStubImpl4qihoo"

    const-string v1, "\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u5f02\u5e38"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$6;->jf:Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;

    invoke-static {v3}, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;->a(Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v3

    iget-object v3, v3, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$6;->jf:Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;

    invoke-static {v3}, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;->a(Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v3

    iget-object v3, v3, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$6;->jh:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$6;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v4, 0x0

    const-string v5, "qihoo onPaymentCompleted"

    invoke-interface {v3, v4, v5}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "KunlunProxyStubImpl4qihoo"

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$6;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v3, "qihoo onPaymentFail"

    invoke-interface {v0, v1, v3}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    move v0, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
