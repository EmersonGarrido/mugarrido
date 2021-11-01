.class final Lcom/kunlun/platform/android/bluePay/BluePayIAP$a;
.super Lcom/bluepay/pay/IPayCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/bluePay/BluePayIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic dj:Lcom/kunlun/platform/android/bluePay/BluePayIAP;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/bluePay/BluePayIAP;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$a;->dj:Lcom/kunlun/platform/android/bluePay/BluePayIAP;

    invoke-direct {p0}, Lcom/bluepay/pay/IPayCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(ILcom/bluepay/pay/BlueMessage;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "bluePayPurchase  success"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$a;->dj:Lcom/kunlun/platform/android/bluePay/BluePayIAP;

    invoke-static {v0}, Lcom/kunlun/platform/android/bluePay/BluePayIAP;->a(Lcom/kunlun/platform/android/bluePay/BluePayIAP;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bluepay/pay/BlueMessage;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bluePayPurchase  error,message code :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bluepay/pay/BlueMessage;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message Desc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bluepay/pay/BlueMessage;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$a;->dj:Lcom/kunlun/platform/android/bluePay/BluePayIAP;

    invoke-static {v0}, Lcom/kunlun/platform/android/bluePay/BluePayIAP;->a(Lcom/kunlun/platform/android/bluePay/BluePayIAP;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bluePayPurchase  error"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "bluePayPurchase user cancel"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/bluePay/BluePayIAP$a;->dj:Lcom/kunlun/platform/android/bluePay/BluePayIAP;

    invoke-static {v0}, Lcom/kunlun/platform/android/bluePay/BluePayIAP;->a(Lcom/kunlun/platform/android/bluePay/BluePayIAP;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bluePayPurchase cancel"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
