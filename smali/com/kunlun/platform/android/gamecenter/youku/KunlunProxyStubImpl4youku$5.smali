.class final Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/youku/gamesdk/act/YKCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$5;->kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$5;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$5;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/String;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "youku onFailed"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$5;->val$activity:Landroid/app/Activity;

    const-string v1, "\u5145\u503c\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, 0x1

    const-string v2, "youku onFailed"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Lcom/youku/gamesdk/data/Bean;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "youku onSuccess"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$5;->val$activity:Landroid/app/Activity;

    const-string v1, "\u5145\u503c\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$5;->kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->a(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$5;->kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->a(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$5;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$5;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "youku onSuccess"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
