.class final Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;
.super Lvn/com/vnptepay/openID/Vnptepay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-direct {p0, p2, p3, p4}, Lvn/com/vnptepay/openID/Vnptepay;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;)Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    return-object v0
.end method


# virtual methods
.method public final onErrorVnptepay(Ljava/lang/String;)V
    .locals 4

    const-string v0, "KunlunProxyStubImpl4vmg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Vnptepay onErrorVnptepay:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->a(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lvn/com/vnptepay/openID/Vnptepay;

    move-result-object v0

    invoke-virtual {v0}, Lvn/com/vnptepay/openID/Vnptepay;->destroyView()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->b(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->c(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->a(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->d(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->d(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->d(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->b(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x64

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Login onError:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_1
    return-void
.end method

.method public final onGetUserInforComplete(Lvn/com/vnptepay/openIDlibs/UserInfor;Ljava/lang/String;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4vmg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Vnptepay onGetUserInforComplete:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->a(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lvn/com/vnptepay/openID/Vnptepay;

    move-result-object v0

    invoke-virtual {v0}, Lvn/com/vnptepay/openID/Vnptepay;->destroyView()V

    return-void
.end method

.method public final onLoginComplete(Lvn/com/vnptepay/openIDlibs/UserInfor;)V
    .locals 5

    const-string v0, "KunlunProxyStubImpl4vmg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onLoginComplete:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lvn/com/vnptepay/openIDlibs/UserInfor;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":Id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lvn/com/vnptepay/openIDlibs/UserInfor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":AccessToken:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lvn/com/vnptepay/openIDlibs/UserInfor;->getAccessTokenStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->a(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lvn/com/vnptepay/openID/Vnptepay;

    move-result-object v0

    invoke-virtual {v0}, Lvn/com/vnptepay/openID/Vnptepay;->destroyView()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->c(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->a(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;Z)V

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->e(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lvn/com/vnptepay/openIDlibs/UserInfor;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lvn/com/vnptepay/openIDlibs/UserInfor;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lvn/com/vnptepay/openIDlibs/UserInfor;->getAccessTokenStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lvn/com/vnptepay/openIDlibs/Vnptepayconfig;

    const-string v2, "sdk_Version"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lvn/com/vnptepay/openIDlibs/Vnptepayconfig;

    const-string v2, "hostandport1"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "test"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->d(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->d(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->d(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dismiss()V

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "token\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDJTmw47kVKecTGFFMnSr38Q7MiufqB2ftcZQht579iuMNt+SPQDv5MkPSeY/t2ENHlziWP1s/5D3EZWAWKEGM44MouYNHvOC3pJ8TGC6XKEherU1hHftGulr+Tgm0AoNIMlkDXnFgVjkxPUYfPSaUwSk8IOn/rVj9nr7+EYSyMQwIDAQAB"

    invoke-static {v0, v3}, Lcom/kunlun/platform/android/KunlunUtil;->encryptByPublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "vmg"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->f(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const-string v4, "Please wait..."

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;->ks:Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;->f(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/vmg/KunlunProxyStubImpl4vmg$1;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final returnPayment(Lvn/com/vnptepay/openIDlibs/PaymentInfor;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4vmg"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Vnptepay returnPayment:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
