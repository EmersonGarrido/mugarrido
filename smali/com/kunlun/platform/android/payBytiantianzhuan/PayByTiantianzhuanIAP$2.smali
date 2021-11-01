.class final Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twm/pt/gamecashflow/TWMGameCash$GameCashCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic mu:Ljava/lang/String;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$2;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$2;->mu:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/twm/pt/gamecashflow/model/BillItem;Lcom/twm/pt/gamecashflow/model/Result;)V
    .locals 4

    const/4 v1, -0x1

    sget-object v0, Lcom/twm/pt/gamecashflow/model/Result;->PAY_SUCCESS:Lcom/twm/pt/gamecashflow/model/Result;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$2;->val$activity:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, "\u8acb\u7a0d\u7b49..."

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "channel"

    const-string v2, "tiantianzhuan"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "trans_no"

    invoke-virtual {p1}, Lcom/twm/pt/gamecashflow/model/BillItem;->getTrans_no()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "extraInfo"

    iget-object v2, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$2;->val$orderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tiantianzhuanUserId"

    invoke-virtual {p1}, Lcom/twm/pt/gamecashflow/model/BillItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "contentPrice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/twm/pt/gamecashflow/model/BillItem;->getContentPrice()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "goods_id"

    iget-object v2, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$2;->mu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "order_id"

    iget-object v2, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$2;->val$orderId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pay_partners_order_id"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getPartenersOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$2;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->getInstance(Landroid/content/Context;)Lcom/kunlun/platform/android/KunlunOrderListUtil;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$2$1;

    iget-object v3, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$2$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->platFormPurchase(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/twm/pt/gamecashflow/model/Result;->CANCEL:Lcom/twm/pt/gamecashflow/model/Result;

    if-ne p2, v0, :cond_2

    const-string v0, "tiantianzhuan onPayment cancel"

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/twm/pt/gamecashflow/model/Result;->NOTIFY_TRANS_NO:Lcom/twm/pt/gamecashflow/model/Result;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/twm/pt/gamecashflow/model/Result;->UNKNOWN:Lcom/twm/pt/gamecashflow/model/Result;

    if-ne p2, v0, :cond_3

    const-string v0, "tiantianzhuan onPayment error"

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/twm/pt/gamecashflow/model/Result;->LOGOUT_SUCCESS:Lcom/twm/pt/gamecashflow/model/Result;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/payBytiantianzhuan/PayByTiantianzhuanIAP$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {p2}, Lcom/twm/pt/gamecashflow/model/Result;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/twm/pt/gamecashflow/model/Result;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, -0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tiantianzhuan onPayment \uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(ILjava/lang/String;)V

    return-void
.end method
