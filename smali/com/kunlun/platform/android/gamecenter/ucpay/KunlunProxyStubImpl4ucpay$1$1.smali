.class final Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;->onSuccessful(ILcn/uc/paysdk/face/commons/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jS:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;

.field private final synthetic jT:Lcn/uc/paysdk/face/commons/Response;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;Lcn/uc/paysdk/face/commons/Response;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1$1;->jS:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1$1;->jT:Lcn/uc/paysdk/face/commons/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1$1;->jS:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;->a(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;)Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1$1;->jT:Lcn/uc/paysdk/face/commons/Response;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;->a(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;Lcn/uc/paysdk/face/commons/Response;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1$1;->jS:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;->a(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;)Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;->b(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v1

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1$1;->jS:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;->a(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;)Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;->b(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v1

    iget-object v1, v1, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/16 v2, 0x64

    invoke-interface {v1, v2, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
