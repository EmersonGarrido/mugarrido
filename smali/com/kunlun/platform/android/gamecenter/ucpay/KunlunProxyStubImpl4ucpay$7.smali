.class final Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/uc/paysdk/face/commons/SDKCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

.field private synthetic jR:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;->jR:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;)Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;->jR:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;

    return-object v0
.end method


# virtual methods
.method public final onErrorResponse(Lcn/uc/paysdk/face/commons/SDKError;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4ucpay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pay error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/uc/paysdk/face/commons/SDKError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;->jR:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;->a(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$3;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {v1, v2}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$3;-><init>(Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onSuccessful(ILcn/uc/paysdk/face/commons/Response;)V
    .locals 3

    invoke-virtual {p2}, Lcn/uc/paysdk/face/commons/Response;->getType()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const-string v0, "00"

    invoke-virtual {p2, v0}, Lcn/uc/paysdk/face/commons/Response;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;->jR:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;->a(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$1;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {v1, p0, p2, v2}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$1;-><init>(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;Lcn/uc/paysdk/face/commons/Response;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;->jR:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;->a(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$2;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {v1, v2}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$2;-><init>(Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
