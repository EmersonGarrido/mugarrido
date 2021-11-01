.class final Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/weibo/game/sdk/callback/SinaGameCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jw:Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$4;->jw:Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$4;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v2, -0x3

    const-string v3, "sina onPay Error"

    invoke-interface {v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    :pswitch_0
    const-string v1, "KunlunProxyStubImpl4sina"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sina payCompleted , msg :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$4;->jw:Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;->b(Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v1

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$4;->jw:Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;->b(Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v1

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$4;->val$orderId:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v2, "sina onPaymentCompleted"

    invoke-interface {v1, v3, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v2, -0x1

    const-string v3, "sina onPay Error"

    invoke-interface {v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v2, -0x2

    const-string v3, "sina onPay Cancel"

    invoke-interface {v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sina/KunlunProxyStubImpl4sina$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v2, "sina onPay Delay"

    invoke-interface {v1, v3, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
