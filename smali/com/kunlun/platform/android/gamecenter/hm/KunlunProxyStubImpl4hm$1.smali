.class final Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/haima/loginplugin/callback/OnLoginListener;


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

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;)Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    return-object v0
.end method


# virtual methods
.method public final onLogOut()V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4hm"

    const-string v1, "onLogOut"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->d(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->d(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "logout success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onLoginFailed(Lcom/haima/loginplugin/ZHErrorInfo;)V
    .locals 4

    const-string v0, "KunlunProxyStubImpl4hm"

    invoke-virtual {p1}, Lcom/haima/loginplugin/ZHErrorInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->c(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "KunlunProxyStubImpl4hm"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6d77\u9a6c\u6e20\u9053\u767b\u5f55\u9519\u8bef\uff0cerrorCode\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/haima/loginplugin/ZHErrorInfo;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",errorInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/haima/loginplugin/ZHErrorInfo;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->c(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u767b\u5f55\u9519\u8bef :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/haima/loginplugin/ZHErrorInfo;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    return-void
.end method

.method public final onLoginSuccess(Lcom/haima/loginplugin/ZHPayUserInfo;)V
    .locals 5

    const-string v0, "KunlunProxyStubImpl4hm"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/haima/loginplugin/ZHPayUserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/haima/loginplugin/ZHPayUserInfo;->loginToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->a(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "haimawan"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->b(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;->gE:Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;->b(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/hm/KunlunProxyStubImpl4hm$1;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method
