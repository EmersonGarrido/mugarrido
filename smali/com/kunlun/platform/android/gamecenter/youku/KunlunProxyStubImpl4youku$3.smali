.class final Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/youku/gamesdk/act/YKCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;Lcom/kunlun/platform/android/Kunlun$LoginListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;->kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x64

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onSuccess(Lcom/youku/gamesdk/data/Bean;)V
    .locals 6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;->kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->a(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;Lcom/youku/gamesdk/data/Bean;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;->kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->b(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)Lcom/youku/gamesdk/data/Bean;

    move-result-object v0

    check-cast v0, Lcom/youku/gamesdk/data/YKGameUser;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appkey\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;->kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    invoke-static {v3}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->a(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "YKGAME_APPKEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "token\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/youku/gamesdk/data/YKGameUser;->getSession()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;->kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->c(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;->kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->d(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)Lcom/youku/gamesdk/act/YKCallBackWithContext;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/youku/gamesdk/act/YKPlatform;->startYKFloat(Landroid/content/Context;Lcom/youku/gamesdk/act/YKCallBackWithContext;)V

    :goto_0
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;->kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    invoke-static {}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->bU()V

    const-string v1, "youku"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v4, v5}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$3;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/youku/gamesdk/act/YKPlatform;->startYKFloat(Landroid/content/Context;)V

    goto :goto_0
.end method
