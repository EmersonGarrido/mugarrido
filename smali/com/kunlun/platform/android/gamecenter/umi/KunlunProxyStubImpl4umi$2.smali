.class final Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/ouwan/umipay/android/api/AccountCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$2;->ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$2;)Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$2;->ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

    return-object v0
.end method


# virtual methods
.method public final onLogin(ILnet/ouwan/umipay/android/api/GameUserInfo;)V
    .locals 5

    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    invoke-static {}, Lnet/ouwan/umipay/android/api/UmipayFloatMenu;->getInstance()Lnet/ouwan/umipay/android/api/UmipayFloatMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$2;->ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;->b(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/ouwan/umipay/android/api/UmipayFloatMenu;->show(Landroid/app/Activity;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$2;->ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;->a(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.umi.appId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/ouwan/umipay/android/api/GameUserInfo;->getOpenId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timestamp\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/ouwan/umipay/android/api/GameUserInfo;->getTimestamp_s()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "KunlunProxyStubImpl4umi"

    invoke-virtual {p2}, Lnet/ouwan/umipay/android/api/GameUserInfo;->getSign()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lnet/ouwan/umipay/android/api/GameUserInfo;->getSign()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "umi"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$2;->ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;->b(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$2;->ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;->b(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$2$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$2$1;-><init>(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$2;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$2;->ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;->c(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$2;->ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;->c(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x64

    const-string v2, "\u53d6\u6d88\u767b\u9646"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method

.method public final onLogout(ILjava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$2;->ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;->a(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi$2;->ka:Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;->a(Lcom/kunlun/platform/android/gamecenter/umi/KunlunProxyStubImpl4umi;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
