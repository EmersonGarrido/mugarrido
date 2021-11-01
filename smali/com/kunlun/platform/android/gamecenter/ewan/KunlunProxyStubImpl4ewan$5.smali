.class Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/ewan/supersdk/open/SuperPayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$5;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$5;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/16 v1, -0x65

    const-string v2, "\u53d6\u6d88\u5145\u503c"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public onComplete()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$5;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->a(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$5;->this$0:Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;->a(Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$5;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "\u5b8c\u6210\u5145\u503c"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public onFail(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ewan/KunlunProxyStubImpl4ewan$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u652f\u4ed8\u5931\u8d25:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
