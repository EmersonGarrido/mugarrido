.class final Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/xxwan/sdkall/frame/listener/OnXXwanAPiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kI:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;

.field private final synthetic val$orderId:Ljava/lang/String;

.field private final synthetic val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1$1;->kI:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1$1;->val$orderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFial(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const/4 v1, 0x0

    const-string v2, "xxwan onPaymentCompleted"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1$1;->kI:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->a(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;)Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;->a(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;)Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->a(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1$1;->kI:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;->a(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1;)Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;->a(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3;)Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->a(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1$1;->val$orderId:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$3$1$1;->val$purchaseDialogListener:Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    const-string v1, "xxwan onPaymentCompleted"

    invoke-interface {v0, v2, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
