.class final Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun$3;
.super Lcom/dh/paysdk/listening/PayListening;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fG:Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun$3;->fG:Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun$3;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/dh/paysdk/listening/PayListening;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnFailure(ILjava/lang/String;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/dh/paysdk/listening/PayListening;->OnFailure(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun$3;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5145\u503c\u9519\u8bef\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "dianhun onPay error"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final OnSuccess(Lcom/dh/paysdk/entities/PayCallBackInfo;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/dh/paysdk/listening/PayListening;->OnSuccess(Lcom/dh/paysdk/entities/PayCallBackInfo;)V

    invoke-virtual {p1}, Lcom/dh/paysdk/entities/PayCallBackInfo;->getCallBackType()Lcom/dh/paysdk/entities/PayCallBackType;

    move-result-object v0

    sget-object v1, Lcom/dh/paysdk/entities/PayCallBackType;->PayCallBackGame:Lcom/dh/paysdk/entities/PayCallBackType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun$3;->fG:Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun;->b(Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun$3;->fG:Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun;->b(Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun$3;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "dianhun onPaymentCompleted"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/dh/paysdk/entities/PayCallBackInfo;->getCallBackType()Lcom/dh/paysdk/entities/PayCallBackType;

    move-result-object v0

    sget-object v1, Lcom/dh/paysdk/entities/PayCallBackType;->PayGiveUpOrder:Lcom/dh/paysdk/entities/PayCallBackType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "dianhun cancel"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/dianhun/KunlunProxyStubImpl4dianhun$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "dianhun error"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
