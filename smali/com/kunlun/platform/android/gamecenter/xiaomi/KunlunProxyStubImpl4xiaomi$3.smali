.class final Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/xiaomi/gamecenter/sdk/OnPayProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic hp:Landroid/app/Activity;

.field private synthetic kz:Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$3;->kz:Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$3;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$3;->hp:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishPayProcess(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x2

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "mi onPayment error"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$3;->kz:Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->a(Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$3;->kz:Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;->a(Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$3;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "mi onPaymentCompleted"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$3;->hp:Landroid/app/Activity;

    const-string v1, "\u8d2d\u4e70\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "mi onPayment error"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xiaomi/KunlunProxyStubImpl4xiaomi$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "mi onPayment cancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x4654 -> :sswitch_1
        -0x4653 -> :sswitch_2
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
