.class final Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lewanduo/sdk/activity/ILewanPayCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hO:Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;->hO:Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;->val$orderId:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPayFail(Ljava/util/TreeMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "lewan purchaseError"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final onPaySuccess(Ljava/util/TreeMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;->hO:Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->a(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;)Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;->a(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;)Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;->a(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;->hO:Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->a(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;)Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;->a(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;)Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;->a(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "Lewan onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final onSubmint(Ljava/util/TreeMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;->hO:Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->a(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;)Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;->a(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;)Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;->a(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;->hO:Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;->a(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1;)Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;->a(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2;)Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;->a(Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lewan/KunlunProxyStubImpl4lewan$2$1$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "lewan onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
