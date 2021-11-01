.class final Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$4;
.super Lcom/snailgame/mobilesdk/OnPayProcessListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic hp:Landroid/app/Activity;

.field private synthetic jy:Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;Ljava/lang/String;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$4;->jy:Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$4;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$4;->hp:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Lcom/snailgame/mobilesdk/OnPayProcessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final finishPayProcess(I)V
    .locals 3

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$4;->hp:Landroid/app/Activity;

    const-string v1, "\u8d2d\u4e70\u5931\u8d25"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "snail onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$4;->jy:Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->a(Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$4;->jy:Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;->a(Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$4;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$4;->hp:Landroid/app/Activity;

    const-string v1, "\u8d2d\u4e70\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$4;->hp:Landroid/app/Activity;

    const-string v1, "\u53d6\u6d88\u8d2d\u4e70"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/snail/KunlunProxyStubImpl4snail$4;->hp:Landroid/app/Activity;

    const-string v1, "\u53d6\u6d88\u8d2d\u4e70"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7d4 -> :sswitch_2
        -0x7d2 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
