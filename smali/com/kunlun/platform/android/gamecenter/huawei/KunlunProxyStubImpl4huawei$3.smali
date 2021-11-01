.class final Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gM:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;->gM:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, -0x2

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "KunlunProxyStubImpl4huawei"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GET PAY RESULT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "returnCode"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "errMsg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "\u652f\u4ed8\u6210\u529f\uff01"

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;->gM:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;->d(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v1

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;->gM:Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;->d(Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v1

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;->val$orderId:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v2, 0x0

    const-string v3, "huawei onPaymentCompleted"

    invoke-interface {v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string v1, "30000"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "200001"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "\u53d6\u6d88\u652f\u4ed8"

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v2, -0x1

    const-string v3, "huawei onPayment cancel"

    invoke-interface {v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u7cfb\u7edf\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "huawei onPayment error"

    invoke-interface {v0, v4, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v2, -0x2

    const-string v3, "huawei onPayment error"

    invoke-interface {v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u7cfb\u7edf\u9519\u8bef"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/huawei/KunlunProxyStubImpl4huawei$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x2

    const-string v2, "huawei onPayment error"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
