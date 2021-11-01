.class final Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lenovo/lsf/gamesdk/LenovoGameApi$IPayResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hy:Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;->hy:Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPayResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x3e9

    if-ne v0, p1, :cond_2

    const-string v0, "KunlunProxyStubImpl4lenovo"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "signValue = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x3

    const-string v2, "lenovo onPay signature Failed"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u5931\u8d25\uff0c\u6ca1\u6709\u7b7e\u540d\u503c"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "KunlunProxyStubImpl4lenovo"

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;->hy:Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->a(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;->hy:Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->a(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "lenovo onPaymentCompleted"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3eb

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "lenovo onpay cancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u53d6\u6d88\u652f\u4ed8"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x2

    const-string v2, "lenovo onPay failed"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
