.class final Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/egame/terminal/paysdk/EgamePayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gl:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$3;->gl:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$3;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final payCancel(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "KunlunProxyStubImpl4egame"

    const-string v1, "egame payCancel"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u53d6\u6d88\u5145\u503c"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, 0x0

    const-string v2, "egame payCancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final payFailed(Ljava/util/Map;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "KunlunProxyStubImpl4egame"

    const-string v1, "egame payFailed"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$3;->val$activity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u5931\u8d25\uff1a\u9519\u8bef\u4ee3\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final paySuccess(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const-string v0, "KunlunProxyStubImpl4egame"

    const-string v1, "egame paySuccess"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$3;->gl:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;->d(Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$3;->gl:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;->d(Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$3;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "egame paySuccess"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
