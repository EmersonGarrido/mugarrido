.class final Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/changba/callback/PaymentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fj:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$3;->fj:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$3;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$3;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u5931\u8d25\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x2

    const-string v2, "changba purchase error"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final onSuccess()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$3;->fj:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->f(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$3;->fj:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->f(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$3;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "changba purchase finish"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
