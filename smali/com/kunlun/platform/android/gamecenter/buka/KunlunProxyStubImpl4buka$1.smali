.class final Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tongbulv/ITBLCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fd:Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$1;->fd:Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelLoginCallBack()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$1;->fd:Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->b(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$1;->fd:Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->b(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    return-void
.end method

.method public final cancelPayCallBack()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$1;->fd:Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->a(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$1;->fd:Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->a(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "buka onPayment cancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final loginCallBack(Lcom/tongbulv/bean/ResultMsg;)V
    .locals 4

    iget v0, p1, Lcom/tongbulv/bean/ResultMsg;->status:I

    iget-object v1, p1, Lcom/tongbulv/bean/ResultMsg;->uid:Ljava/lang/String;

    iget-object v2, p1, Lcom/tongbulv/bean/ResultMsg;->access_token:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$1;->fd:Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->b(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "\u767b\u5f55\u9519\u8bef"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$1;->fd:Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->a(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final payCallBack(Lcom/tongbulv/bean/ResultMsg;)V
    .locals 3

    iget v0, p1, Lcom/tongbulv/bean/ResultMsg;->status:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$1;->fd:Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->a(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "buka onPaymentClose"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka$1;->fd:Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;->a(Lcom/kunlun/platform/android/gamecenter/buka/KunlunProxyStubImpl4buka;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "buka onPayment error"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
