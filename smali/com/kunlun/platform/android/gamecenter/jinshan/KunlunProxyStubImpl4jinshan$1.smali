.class final Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ijinshan/ksmglogin/inteface/IKSGameSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gY:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->gY:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;)Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->gY:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    return-object v0
.end method


# virtual methods
.method public final onLoginResult(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->gY:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->b(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "KS_SUPPLY_ID"

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

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "jinshan"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->gY:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->d(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->gY:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->d(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->gY:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->e(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->gY:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->e(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x64

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method

.method public final onLogout()V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->gY:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->b(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->gY:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->b(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "onLogout"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onPayResult(Z)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4jinshan"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPayResult:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->gY:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->b(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->gY:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->b(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->purchaseListener:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->gY:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->c(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onQuitGame()V
    .locals 2

    const-string v0, "KunlunProxyStubImpl4jinshan"

    const-string v1, "\u56de\u8c03\uff1a\u9000\u51fa\u6e38\u620f"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->gY:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->a(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan$1;->gY:Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;->a(Lcom/kunlun/platform/android/gamecenter/jinshan/KunlunProxyStubImpl4jinshan;)Lcom/kunlun/platform/android/Kunlun$ExitCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onComplete()V

    :cond_0
    return-void
.end method
