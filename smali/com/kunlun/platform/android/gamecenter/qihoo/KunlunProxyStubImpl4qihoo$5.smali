.class final Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$GetOrderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;->purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bK:Ljava/lang/String;

.field private synthetic jf:Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$appRate:I

.field private final synthetic val$itemName:Ljava/lang/String;

.field private final synthetic val$price:I

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->jf:Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput p4, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->val$price:I

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->val$itemName:Ljava/lang/String;

    iput p6, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->val$appRate:I

    iput-object p7, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->bK:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;)Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->jf:Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo;

    return-object v0
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
    .locals 10

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

    iget-object v9, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->val$activity:Landroid/app/Activity;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5$1;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->val$activity:Landroid/app/Activity;

    iget v3, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->val$price:I

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->val$itemName:Ljava/lang/String;

    iget v6, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->val$appRate:I

    iget-object v7, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->bK:Ljava/lang/String;

    iget-object v8, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5$1;-><init>(Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-virtual {v9, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->val$activity:Landroid/app/Activity;

    const-string v1, "\u751f\u6210\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "\u751f\u6210\u8ba2\u5355\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->val$activity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qihoo/KunlunProxyStubImpl4qihoo$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-interface {v0, p1, p2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
