.class final Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sogou/gamecenter/sdk/listener/RefreshUserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->dispatchMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jG:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1$2;->jG:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final refresh(Lcom/sogou/gamecenter/sdk/bean/UserInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1$2;->jG:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;)Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->f(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1$2;->jG:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;)Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->f(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "logout onSuccess"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1$2;->jG:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;)Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;Lcom/sogou/gamecenter/sdk/bean/UserInfo;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1$2;->jG:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;)Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->f(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.sougou.autoLogin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1$2;->jG:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;->a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$1;)Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->g(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)V

    :cond_1
    return-void
.end method
