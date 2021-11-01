.class final Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$GetOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->initComplete(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic df:Ljava/lang/String;

.field private final synthetic dk:Ljava/lang/String;

.field private final synthetic dl:Ljava/lang/String;

.field private final synthetic dm:Ljava/lang/String;

.field private final synthetic dn:Ljava/lang/String;

.field private final synthetic do:Ljava/lang/String;

.field private final synthetic dp:Ljava/lang/String;

.field private synthetic dq:Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->dq:Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;

    iput-object p2, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->dk:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->dl:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->df:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->dm:Ljava/lang/String;

    iput-object p6, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->dn:Ljava/lang/String;

    iput-object p7, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->do:Ljava/lang/String;

    iput-object p8, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->dp:Ljava/lang/String;

    iput-object p9, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
    .locals 9

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunDataEntity;->getData()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->dq:Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;->a(Lcom/kunlun/platform/android/bluePay/BluePayIAP$1;)Lcom/kunlun/platform/android/bluePay/BluePayIAP;

    move-result-object v0

    iget-object v2, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->dk:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->dl:Ljava/lang/String;

    iget-object v4, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->df:Ljava/lang/String;

    iget-object v5, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->dm:Ljava/lang/String;

    iget-object v6, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->dn:Ljava/lang/String;

    iget-object v7, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->do:Ljava/lang/String;

    iget-object v8, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->dp:Ljava/lang/String;

    invoke-static/range {v0 .. v8}, Lcom/kunlun/platform/android/bluePay/BluePayIAP;->a(Lcom/kunlun/platform/android/bluePay/BluePayIAP;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->val$activity:Landroid/app/Activity;

    const-string v1, "\u751f\u6210\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "bluePayPurchase create order error"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$1$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "bluePayPurchase create order error"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto :goto_0
.end method
