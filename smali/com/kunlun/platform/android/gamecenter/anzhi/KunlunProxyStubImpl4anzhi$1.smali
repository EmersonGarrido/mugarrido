.class final Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anzhi/usercenter/sdk/inter/KeybackCall;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$1;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final KeybackCall(Ljava/lang/String;)V
    .locals 4

    const-string v0, "KunlunProxyStubImpl4anzhi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "KeybackCall:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v0, "Login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$1;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->a(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$1;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->a(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x67

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    const-string v0, "gamePay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "AnzhiCurrent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$1;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->b(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$1;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->c(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$1;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->d(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)V

    const-string v0, "KunlunProxyStubImpl4anzhi"

    const-string v1, "anzhi onPaymentCompleted"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi$1;->eF:Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;->c(Lcom/kunlun/platform/android/gamecenter/anzhi/KunlunProxyStubImpl4anzhi;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "anzhi onPaymentCompleted"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
