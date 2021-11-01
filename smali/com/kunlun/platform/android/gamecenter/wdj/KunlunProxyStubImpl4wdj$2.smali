.class final Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wandoujia/mariosdk/plugin/api/model/callback/OnLoginFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;Lcom/kunlun/platform/android/Kunlun$LoginListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$2;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoginFinished(Lcom/wandoujia/mariosdk/plugin/api/model/model/LoginFinishType;Lcom/wandoujia/mariosdk/plugin/api/model/model/UnverifiedPlayer;)V
    .locals 6

    const/4 v3, 0x0

    const-string v0, "KunlunProxyStubImpl4wdj"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LoginFinishType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":unverifiedPlayer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/wandoujia/mariosdk/plugin/api/model/model/LoginFinishType;->CANCEL:Lcom/wandoujia/mariosdk/plugin/api/model/model/LoginFinishType;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x65

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/wandoujia/mariosdk/plugin/api/model/model/UnverifiedPlayer;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/wandoujia/mariosdk/plugin/api/model/model/UnverifiedPlayer;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "appid\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$2;->kw:Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;

    invoke-static {v4}, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;->a(Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "Kunlun.wdj.appkey_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uid\":\""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "token\":\""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "wdj"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$2;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$2;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$2$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v4, v5}, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$2$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/wdj/KunlunProxyStubImpl4wdj$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x64

    const-string v2, "\u767b\u5f55\u5931\u8d25"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto/16 :goto_0
.end method
