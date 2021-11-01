.class final Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/cmgame/billing/api/GameInterface$IPayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fr:Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$4;->fr:Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$4;->val$orderId:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "cmgame pay close"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$4;->fr:Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;->a(Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$4;->fr:Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;->a(Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$4;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "KunlunProxyStubImpl4cmgame"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u652f\u4ed8\u5931\u8d25 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , arg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, -0x1

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "KunlunProxyStubImpl4cmgame"

    const-string v1, "\u53d6\u6d88\u5145\u503c"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$4;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/16 v1, -0x65

    const-string v2, "\u53d6\u6d88\u5145\u503c"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
