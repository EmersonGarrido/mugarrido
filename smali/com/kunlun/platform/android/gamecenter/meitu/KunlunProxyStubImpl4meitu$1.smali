.class final Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/weedong/gamesdk/listener/WdLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ie:Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$1;->ie:Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$1;)Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$1;->ie:Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;

    return-object v0
.end method


# virtual methods
.method public final onCallBack(ILcom/weedong/gamesdk/bean/UserInfo;)V
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$1;->ie:Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->a(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/weedong/gamesdk/bean/UserInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/weedong/gamesdk/bean/UserInfo;->getSessionid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "meitu"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$1;->ie:Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->b(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$1;->ie:Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->b(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$1$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$1;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$1;->ie:Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->c(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x67

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu$1;->ie:Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;->c(Lcom/kunlun/platform/android/gamecenter/meitu/KunlunProxyStubImpl4meitu;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x68

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method
