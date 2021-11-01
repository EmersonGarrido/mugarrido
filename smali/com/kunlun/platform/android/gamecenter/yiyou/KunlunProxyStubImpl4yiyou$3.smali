.class final Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yiyou/paysdk/listener/PayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kJ:Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou;Ljava/lang/String;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou$3;->kJ:Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou$3;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou$3;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancle()V
    .locals 0

    return-void
.end method

.method public final fail()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou$3;->val$activity:Landroid/app/Activity;

    const-string v1, "[\u5145\u503c\u5931\u6557]"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "yiyou onPaymentFailure"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final success()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou$3;->kJ:Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou;->a(Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou$3;->kJ:Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou;->a(Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou$3;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u5145\u503c\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/yiyou/KunlunProxyStubImpl4yiyou$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "yiyou onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
