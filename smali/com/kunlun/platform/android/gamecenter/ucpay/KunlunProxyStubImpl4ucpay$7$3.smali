.class final Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7;->onErrorResponse(Lcn/uc/paysdk/face/commons/SDKError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$3;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/ucpay/KunlunProxyStubImpl4ucpay$7$3;->bu:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/4 v1, 0x1

    const-string v2, "\u652f\u4ed8\u53d6\u6d88\u6216\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
