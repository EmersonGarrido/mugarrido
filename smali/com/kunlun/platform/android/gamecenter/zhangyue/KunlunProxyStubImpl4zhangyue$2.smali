.class final Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$GetOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;->purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic lg:Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->lg:Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$itemName:Ljava/lang/String;

    iput p3, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$price:I

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
    .locals 6

    const/4 v5, -0x1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunDataEntity;->getData()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->lg:Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;->a(Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "appId"

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->lg:Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;

    invoke-static {v3}, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;->b(Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Zhangyue.appId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "desc"

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$itemName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "merOrderId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "fee"

    iget v3, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$price:I

    div-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "merId"

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->lg:Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;

    invoke-static {v3}, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;->b(Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Zhangyue.partnerId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$itemName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "preOrderId"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->lg:Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-static {v0, v2}, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;->a(Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    new-instance v0, Lcom/zhangyue/pay/PayTask;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/zhangyue/pay/PayTask;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2$1;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {v2, v3}, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2$1;-><init>(Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/zhangyue/pay/PayTask;->pay(Ljava/lang/String;Lcom/zhangyue/pay/PayListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$activity:Landroid/app/Activity;

    const-string v1, "\u751f\u6210\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "\u751f\u6210\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-interface {v0, v5, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$activity:Landroid/app/Activity;

    const-string v1, "\u751f\u6210\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "\u751f\u6210\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-interface {v0, v5, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/zhangyue/KunlunProxyStubImpl4zhangyue$2;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-interface {v0, p1, p2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
