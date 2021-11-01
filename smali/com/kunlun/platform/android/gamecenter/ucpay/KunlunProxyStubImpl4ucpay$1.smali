.class final Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/uc/paysdk/face/commons/SDKCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jR:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;->jR:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;)Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;->jR:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;

    return-object v0
.end method


# virtual methods
.method public final onErrorResponse(Lcn/uc/paysdk/face/commons/SDKError;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;->val$activity:Landroid/app/Activity;

    const-string v1, "\u652f\u4ed8\u521d\u59cb\u5316\u5931\u8d25!"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final onSuccessful(ILcn/uc/paysdk/face/commons/Response;)V
    .locals 2

    invoke-virtual {p2}, Lcn/uc/paysdk/face/commons/Response;->getType()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    const-string v0, "KunlunProxyStubImpl4ucpay"

    const-string v1, "\u652f\u4ed8\u521d\u59cb\u5316\u6210\u529f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcn/uc/paysdk/face/commons/Response;->getType()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    const-string v0, "00"

    invoke-virtual {p2, v0}, Lcn/uc/paysdk/face/commons/Response;->setMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;->jR:Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;->a(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1$1;

    invoke-direct {v1, p0, p2}, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$1;Lcn/uc/paysdk/face/commons/Response;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
