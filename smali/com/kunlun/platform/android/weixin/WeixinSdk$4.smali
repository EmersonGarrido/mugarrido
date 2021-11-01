.class final Lcom/kunlun/platform/android/weixin/WeixinSdk$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$GetOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/weixin/WeixinSdk;->getKunlunOrder(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

.field private final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/weixin/WeixinSdk;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    iput-object p2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->p:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
    .locals 4

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    new-instance v1, Lcom/tencent/mm/sdk/modelpay/PayReq;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/modelpay/PayReq;-><init>()V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(Lcom/kunlun/platform/android/weixin/WeixinSdk;Lcom/tencent/mm/sdk/modelpay/PayReq;)V

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunDataEntity;->getData()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "PayParams"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v2}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->m(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/tencent/mm/sdk/modelpay/PayReq;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v3}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->a(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->appId:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v2}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->m(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/tencent/mm/sdk/modelpay/PayReq;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v3}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->n(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->partnerId:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v2}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->m(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/tencent/mm/sdk/modelpay/PayReq;

    move-result-object v2

    const-string v3, "prepayid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->prepayId:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v2}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->m(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/tencent/mm/sdk/modelpay/PayReq;

    move-result-object v2

    const-string v3, "package"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->packageValue:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v2}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->m(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/tencent/mm/sdk/modelpay/PayReq;

    move-result-object v2

    const-string v3, "noncestr"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->nonceStr:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v2}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->m(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/tencent/mm/sdk/modelpay/PayReq;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->timeStamp:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v2}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->m(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/tencent/mm/sdk/modelpay/PayReq;

    move-result-object v2

    const-string v3, "sign"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/tencent/mm/sdk/modelpay/PayReq;->sign:Ljava/lang/String;

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v1}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->m(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/tencent/mm/sdk/modelpay/PayReq;

    move-result-object v1

    const-string v2, "order_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/modelpay/PayReq;->extData:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v0}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->i(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Landroid/content/Context;

    move-result-object v0

    const-string v1, ""

    const-string v2, "\u8bf7\u7a0d\u540e..."

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->mW:Lcom/kunlun/platform/android/weixin/WeixinSdk;

    invoke-static {v1}, Lcom/kunlun/platform/android/weixin/WeixinSdk;->l(Lcom/kunlun/platform/android/weixin/WeixinSdk;)Lcom/kunlun/platform/android/common/KunlunActivityControl;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunActivity;->start(Landroid/content/Context;Lcom/kunlun/platform/android/common/KunlunActivityControl;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->p:Landroid/content/Context;

    const-string v1, "\u751f\u6210\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, -0x1

    const-string v1, "weixin create order error"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/weixin/WeixinSdk$4;->p:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "weixin create order error"

    invoke-static {p1, v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto :goto_0
.end method
