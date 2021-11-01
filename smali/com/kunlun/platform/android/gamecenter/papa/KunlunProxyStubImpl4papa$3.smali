.class final Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/pay/callback/PPayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;->iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPayFinished(I)V
    .locals 3

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u5145\u503c\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "papa onFailed"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u53d6\u6d88\u5145\u503c"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x2

    const-string v2, "papa onCancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v0, "KunlunProxyStubImpl4youku"

    const-string v1, "papa onSuccess"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u5145\u503c\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;->iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->a(Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;->iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->a(Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "papa onSuccess"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e9 -> :sswitch_0
        0x3ea -> :sswitch_0
        0x3ec -> :sswitch_0
        0x3ed -> :sswitch_0
        0x3ee -> :sswitch_0
        0x3ef -> :sswitch_0
        0x3f0 -> :sswitch_0
        0x3f1 -> :sswitch_0
        0x3f2 -> :sswitch_0
        0x3f3 -> :sswitch_0
        0x3f4 -> :sswitch_0
        0x1388 -> :sswitch_2
        0x1389 -> :sswitch_0
        0x138a -> :sswitch_1
    .end sparse-switch
.end method
