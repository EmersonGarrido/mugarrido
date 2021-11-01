.class final Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ledi/util/LoadPayCallBackLinstener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jl:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$2;->jl:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isPayBack(Z)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4qitian"

    const-string v1, "isPayBack"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$2;->jl:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;->c(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$2;->jl:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;->c(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "qitian onPaymentCanceled"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final isloadBack(Z)V
    .locals 4

    const-string v0, "KunlunProxyStubImpl4qitian"

    const-string v1, "isloadBack"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$2;->jl:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;->b(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x64

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method
