.class final Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Legame/terminal/usersdk/CallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;->initLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gl:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$1;->gl:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$1;)Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$1;->gl:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;

    return-object v0
.end method


# virtual methods
.method public final onCancel()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$1;->gl:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;->a(Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x64

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onFailed(I)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$1;->gl:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;->a(Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x64

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u767b\u5f55\u5931\u8d25\uff0c\u9519\u8bef\u7801\u662f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$1;->gl:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;->b(Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$1;->gl:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;->c(Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Legame/terminal/usersdk/EgameUser;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "egame"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$1;->gl:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;->c(Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$1;->gl:Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;->c(Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$1$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/egame/KunlunProxyStubImpl4egame$1;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method
