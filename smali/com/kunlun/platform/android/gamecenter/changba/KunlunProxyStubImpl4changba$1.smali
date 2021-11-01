.class final Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/changba/callback/AuthorizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fj:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;->fj:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;)Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;->fj:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    return-object v0
.end method


# virtual methods
.method public final onCancel(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;->fj:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;->fj:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u53d6\u6d88\u767b\u5f55"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    return-void
.end method

.method public final onComplete(Lcom/changba/aidl/AccessToken;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;->fj:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->b(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Lcom/changba/SSOClient;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;

    invoke-direct {v1, p0, p1}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;Lcom/changba/aidl/AccessToken;)V

    invoke-interface {v0, v1}, Lcom/changba/SSOClient;->getUserInfo(Lcom/changba/callback/UserInfoListener;)V

    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;->fj:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;->fj:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u767b\u5f55\u5931\u8d25"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    return-void
.end method
