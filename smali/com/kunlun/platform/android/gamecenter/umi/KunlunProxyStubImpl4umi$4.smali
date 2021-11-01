.class final Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/ouwan/umipay/android/api/PayCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$4;->ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$4;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPay(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$4;->ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;->a(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$4;->ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;->a(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$4;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$4;->ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;->e(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$4;->ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;->e(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const-string v1, "umi onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$4;->val$activity:Landroid/app/Activity;

    const-string v1, "\u5145\u503c\u5173\u95ed"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
