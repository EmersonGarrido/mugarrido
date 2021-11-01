.class final Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/payPlugin/callback/OnPayCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$4;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPayCancel()V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4hm"

    const-string v1, "============================="

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$4;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->e(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$4;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->e(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "haima onPayment cancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
