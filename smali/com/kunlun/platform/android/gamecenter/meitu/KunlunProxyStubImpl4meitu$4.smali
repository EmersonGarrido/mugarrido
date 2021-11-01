.class final Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/weedong/gamesdk/listener/WdPayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/weedong/gamesdk/listener/WdPayListener",
        "<",
        "Lcom/weedong/gamesdk/bean/OrderInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ie:Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;->ie:Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onCallBack(ILjava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;->ie:Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->d(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;->ie:Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->d(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "meitu onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "meitu onPay cancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;->val$activity:Landroid/app/Activity;

    const-string v1, "\u53d6\u6d88\u652f\u4ed8"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x2

    const-string v2, "meitu onPay error"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$4;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
