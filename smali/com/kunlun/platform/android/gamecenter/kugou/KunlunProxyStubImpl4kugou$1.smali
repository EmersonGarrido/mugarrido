.class final Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kugou/game/sdk/api/common/OnPlatformEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEventOccur(ILandroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/kugou/game/sdk/api/online/KGPlatform;->showWelcomeDialog(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->b(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->c(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Lcom/kugou/game/sdk/ui/widget/ToolBar;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    new-instance v1, Lcom/kugou/game/sdk/ui/widget/ToolBar;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/kugou/game/sdk/ui/widget/ToolBar;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;Lcom/kugou/game/sdk/ui/widget/ToolBar;)V

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->c(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Lcom/kugou/game/sdk/ui/widget/ToolBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kugou/game/sdk/ui/widget/ToolBar;->show()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->c(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Lcom/kugou/game/sdk/ui/widget/ToolBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/kugou/game/sdk/ui/widget/ToolBar;->setCustomViewVisibility(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->b(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "KunlunProxyStubImpl4kugou"

    const-string v1, "ACCOUNT_CHANGED_SUCCESS"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->b(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->bQ()Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->b(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->b(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x64

    const-string v2, "\u56de\u5230\u6e38\u620f"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->d(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->d(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->bT()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->a(Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5145\u503c\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->bS()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou$1;->hv:Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;

    invoke-static {}, Lcom/kunlun/platform/android/gamecenter/kugou/KunlunProxyStubImpl4kugou;->bR()Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const-string v1, "kugou onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method
