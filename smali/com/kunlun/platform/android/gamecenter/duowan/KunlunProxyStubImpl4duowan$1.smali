.class final Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duowan/sdk/listener/PlatformListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;)Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    return-object v0
.end method


# virtual methods
.method public final onBindSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onCancel(Lcom/duowan/sdk/listener/DuowanPage;)V
    .locals 4

    const-string v0, "KunlunProxyStubImpl4duowan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCancel, page:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duowan/sdk/listener/DuowanPage;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/duowan/sdk/listener/DuowanPage;->LOGIN:Lcom/duowan/sdk/listener/DuowanPage;

    if-ne p1, v0, :cond_0

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "\u7528\u6237\u53d6\u6d88\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->e(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->e(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x64

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    sget-object v0, Lcom/duowan/sdk/listener/DuowanPage;->PAY:Lcom/duowan/sdk/listener/DuowanPage;

    if-ne p1, v0, :cond_1

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "\u7528\u6237\u53d6\u6d88\u5145\u503c\u652f\u4ed8"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->g(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->g(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "duowan onPayCancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onExit()V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "onExit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->f(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    return-void
.end method

.method public final onLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "onLogin"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->b(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/duowan/sdk/DuowanApi;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->c(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duowan/sdk/DuowanApi;->showMenu(Landroid/app/Activity;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->d(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.duowan.appId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "production"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->d(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "environment"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sandbox\":\"true"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duowan"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->c(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->c(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method

.method public final onLogout()V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "onLogout"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->b(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/duowan/sdk/DuowanApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duowan/sdk/DuowanApi;->hideMenu()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->d(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->d(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "onLogout"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->c(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->e(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->c(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->e(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    :cond_1
    return-void
.end method

.method public final onPayFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4duowan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPayFail, msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->g(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->g(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "duowan onPayFail"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPaySuccess(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "KunlunProxyStubImpl4duowan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPaySuccess, orderId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->d(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->d(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    invoke-interface {v0, v3, p1}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->g(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->g(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;

    move-result-object v0

    const-string v1, "duowan onPaySuccess"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;->onComplete(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onSplashComplete()V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4duowan"

    const-string v1, "onSplashComplete"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->a(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$initCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan$1;->gf:Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;->a(Lcom/kunlun/platform/android/gamecenter/duowan/KunlunProxyStubImpl4duowan;)Lcom/kunlun/platform/android/Kunlun$initCallback;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "finish"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
