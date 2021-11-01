.class final Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli$3;
.super Lcom/gionee/gamesdk/GamePayer$GamePayCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gT:Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli;Lcom/gionee/gamesdk/GamePayer;Landroid/app/Activity;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli$3;->gT:Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli$3;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli$3;->val$orderId:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0, p2}, Lcom/gionee/gamesdk/GamePayer$GamePayCallback;-><init>(Lcom/gionee/gamesdk/GamePayer;)V

    return-void
.end method


# virtual methods
.method public final onPayCancel()V
    .locals 3

    invoke-super {p0}, Lcom/gionee/gamesdk/GamePayer$GamePayCallback;->onPayCancel()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "jinli pay cancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final onPayFail(Ljava/lang/String;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/gionee/gamesdk/GamePayer$GamePayCallback;->onPayFail(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u5145\u503c\u5931\u8d25\uff01"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final onPaySuccess()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/gionee/gamesdk/GamePayer$GamePayCallback;->onPaySuccess()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli$3;->val$activity:Landroid/app/Activity;

    const-string v1, "\u5145\u503c\u5b8c\u6210"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli$3;->gT:Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli;->a(Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli$3;->gT:Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli;->a(Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli$3;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinli/KunlunProxyStubImpl4jinli$3;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "jinli pay success"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
