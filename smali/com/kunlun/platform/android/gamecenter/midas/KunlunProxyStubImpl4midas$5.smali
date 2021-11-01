.class final Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/midas/api/IAPMidasPayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic iz:Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$5;->iz:Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$5;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final MidasPayCallBack(Lcom/tencent/midas/api/APMidasResponse;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/tencent/midas/api/APMidasResponse;->getResultCode()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$5;->iz:Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;->b(Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$5;->iz:Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;->b(Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$5;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "midas onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/midas/api/APMidasResponse;->getResultCode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "midas onPayment cancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x2

    const-string v2, "midas onPayment Faild"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public final MidasPayNeedLogin()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x2

    const-string v2, "midas onPayment Faild"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$5;->iz:Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;->b(Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas$5;->iz:Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;->b(Lcom/kunlun/platform/android/gamecenter/midas/KunlunProxyStubImpl4midas;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
