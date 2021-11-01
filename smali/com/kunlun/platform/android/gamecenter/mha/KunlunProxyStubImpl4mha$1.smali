.class final Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huanju/wanka/paysdk/ILoginCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic il:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1;->il:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1;)Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1;->il:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;

    return-object v0
.end method


# virtual methods
.method public final onLoginFailed(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    const-string v0, "KunlunProxyStubImpl4mha"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoginFailed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1;->il:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->c(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1;->il:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->c(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x64

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u767b\u5f55\u5931\u8d25:"

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

.method public final onLoginSuccess(Lcom/huanju/wanka/paysdk/UserInfo;Ljava/lang/String;)V
    .locals 4

    const-string v0, "KunlunProxyStubImpl4mha"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoginSuccess:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1;->il:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->a(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;Ljava/lang/String;)V

    const-string v0, "mha"

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1;->il:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->b(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, ""

    const-string v3, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v1, v2, v3}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1;->il:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->b(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v2

    new-instance v3, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1$1;

    invoke-direct {v3, p0}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1;)V

    invoke-static {v1, p2, v0, v2, v3}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method

.method public final onLogout(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4mha"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLogout:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1;->il:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->a(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha$1;->il:Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;->a(Lcom/kunlun/platform/android/gamecenter/mha/KunlunProxyStubImpl4mha;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    invoke-interface {v0, p1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
