.class final Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$GetOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;->purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->val$itemName:Ljava/lang/String;

    iput p5, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->val$price:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;)Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    return-object v0
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
    .locals 7

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunDataEntity;->getData()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "order_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->val$activity:Landroid/app/Activity;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4$1;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->val$itemName:Ljava/lang/String;

    iget v4, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->val$price:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4$1;-><init>(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->val$activity:Landroid/app/Activity;

    const-string v1, "\u751f\u6210\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "\u751f\u6210\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-interface {v0, p1, p2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
