.class final Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unicom/dcLoader/Utils$UnipayPayResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kd:Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay$3;->kd:Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final PayResult(Ljava/lang/String;IILjava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "KunlunProxyStubImpl4unipay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doSdkPay PayResult:paycode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":flag2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "unipay onPayComplete"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay$3;->kd:Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay;->b(Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay$3;->kd:Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay;->b(Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay$3;->kd:Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay;->a(Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay$3;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u5145\u503c\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay$3;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/unipay/KunlunProxyStubImpl4unipay$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u53d6\u6d88\u5145\u503c"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
