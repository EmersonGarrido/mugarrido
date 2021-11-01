.class final Lcom/kunlun/platform/android/paybyqq/PayByQQIAP$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$GetOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;->purchase(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic mx:Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;

.field private final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/paybyqq/PayByQQIAP$1;->mx:Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;

    iput-object p2, p0, Lcom/kunlun/platform/android/paybyqq/PayByQQIAP$1;->p:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunDataEntity;->getData()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/paybyqq/PayByQQIAP$1;->mx:Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;

    const-string v2, "token_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;->a(Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/paybyqq/PayByQQIAP$1;->mx:Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;

    const-string v2, "sign"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;->b(Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/paybyqq/PayByQQIAP$1;->mx:Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;

    iget-object v0, p0, Lcom/kunlun/platform/android/paybyqq/PayByQQIAP$1;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/paybyqq/PayByQQIAP$1;->mx:Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;

    invoke-static {v1}, Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;->a(Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;)Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/paybyqq/PayByQQIAP$1;->mx:Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;

    invoke-static {v1}, Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;->b(Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/paybyqq/PayByQQIAP;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kunlun/platform/android/paybyqq/PayByQQIAP$1;->p:Landroid/content/Context;

    const-string v1, "\u751f\u6210\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v1, "QQPay create order error"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/paybyqq/PayByQQIAP$1;->p:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "QQPay create order error"

    invoke-static {p1, v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto :goto_0
.end method
