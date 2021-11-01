.class public Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;
.super Lcom/taiwanmobile/pt/iap/inAppPurchase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "inAPP"
.end annotation


# instance fields
.field private synthetic mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;


# direct methods
.method public constructor <init>(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    invoke-direct {p0}, Lcom/taiwanmobile/pt/iap/inAppPurchase;-><init>()V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;)Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    return-object v0
.end method


# virtual methods
.method public onReturnResult()V
    .locals 4

    invoke-virtual {p0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->getIAPType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->s(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->getRCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->t(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->getRDesc()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->getTransId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->u(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->cd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "aa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->ce()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->callBilling()V

    :goto_0
    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->ce()Ljava/lang/String;

    move-result-object v0

    const-string v1, "9301"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->finish()V

    const-string v0, "TaiWanMobileActivity onReturnResult4"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->finish()V

    const-string v0, "TaiWanMobileActivity onReturnResult"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->cd()Ljava/lang/String;

    move-result-object v0

    const-string v1, "billing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->ce()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    invoke-static {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->a(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, ""

    const-string v2, "\u8acb\u7a0d\u7b49..."

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "channel"

    const-string v2, "twmobile"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "twMobileuserId"

    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->cf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "goods_id"

    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->cg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "tid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->br()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "___"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->ch()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "order_id"

    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->ch()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pay_partners_order_id"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getPartenersOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    invoke-virtual {v1}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->getInstance(Landroid/content/Context;)Lcom/kunlun/platform/android/KunlunOrderListUtil;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP$1;

    invoke-direct {v2, p0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP$1;-><init>(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;)V

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->platFormPurchase(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->finish()V

    const-string v0, "TaiWanMobileActivity onReturnResult"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->finish()V

    const-string v0, "TaiWanMobileActivity onReturnResult3"

    invoke-static {v0}, Lcom/kunlun/platform/android/Kunlun;->purchaseClose(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
