.class final Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;->onSuccessful(ILcn/uc/paysdk/face/commons/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

.field private final synthetic jT:Lcn/uc/paysdk/face/commons/Response;

.field private synthetic jY:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;Lcn/uc/paysdk/face/commons/Response;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$1;->jY:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$1;->jT:Lcn/uc/paysdk/face/commons/Response;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$1;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$1;->jY:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;->a(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;)Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$1;->jT:Lcn/uc/paysdk/face/commons/Response;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;->a(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;Lcn/uc/paysdk/face/commons/Response;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$1;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/4 v1, 0x0

    const-string v2, "\u652f\u4ed8\u6210\u529f"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$1;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/4 v1, 0x1

    const-string v2, "\u652f\u4ed8\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method
