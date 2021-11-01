.class final Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/lenovo/lsf/gamesdk/LenovoGameApi$IAuthResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hy:Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1;->hy:Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinished(ZLjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1;->hy:Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->a(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "lenovoid:realm"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1;->hy:Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->a(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "lenovoid:realm"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "realm\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "uid\":\""

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lenovo"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v4, v5}, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1;->hy:Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;->b(Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "cancel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x66

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/lenovo/KunlunProxyStubImpl4lenovo$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x65

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_1
.end method
