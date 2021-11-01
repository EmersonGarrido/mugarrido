.class final Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/anguotech/sdk/interfaces/LoginCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hr:Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->hr:Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoginCancel()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v1, -0x1

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onLoginFailed(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u767b\u5f55\u9519\u8bef\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onLoginSuccess(Lcom/anguotech/sdk/bean/UserInfoLogin;)V
    .locals 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->hr:Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;

    invoke-static {v0, v2}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->a(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;Z)V

    invoke-static {}, Lcom/anguotech/sdk/manager/AnGuoManager;->Instance()Lcom/anguotech/sdk/manager/AnGuoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/anguotech/sdk/manager/AnGuoManager;->isShowBobble(Landroid/app/Activity;Z)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/anguotech/sdk/bean/UserInfoLogin;->getToken_key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "kuaiyong"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v4, v5}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method

.method public final onLogoutCancel()V
    .locals 0

    return-void
.end method

.method public final onLogoutFailed(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->hr:Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->a(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->hr:Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->a(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "error"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onLogoutSuccess(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->hr:Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->a(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->hr:Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->a(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->hr:Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;

    invoke-static {v0, v2}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->a(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;Z)V

    invoke-static {}, Lcom/anguotech/sdk/manager/AnGuoManager;->Instance()Lcom/anguotech/sdk/manager/AnGuoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/anguotech/sdk/manager/AnGuoManager;->isShowBobble(Landroid/app/Activity;Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->hr:Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->b(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->hr:Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong$2;->hr:Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;->c(Lcom/kunlun/platform/android/gamecenter/kuaiyong/KunlunProxyStubImpl4kuaiyong;)V

    return-void
.end method
