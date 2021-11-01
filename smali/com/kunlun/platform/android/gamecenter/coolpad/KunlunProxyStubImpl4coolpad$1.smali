.class final Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coolcloud/uac/android/api/OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$1;->fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$1;->fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->b(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "login cancel"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onError(Lcom/coolcloud/uac/android/api/ErrInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$1;->fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->b(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "login error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/coolcloud/uac/android/api/ErrInfo;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onResult(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$1;->fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

    const-string v1, "code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->a(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad$1;->fB:Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;->a(Lcom/kunlun/platform/android/gamecenter/coolpad/KunlunProxyStubImpl4coolpad;)V

    return-void
.end method
