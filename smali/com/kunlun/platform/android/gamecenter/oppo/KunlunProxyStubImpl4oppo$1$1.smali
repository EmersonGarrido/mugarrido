.class final Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nearme/game/sdk/callback/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;->onSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic iM:Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1$1;->iM:Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x66

    const-string v2, "token error"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1$1;->iM:Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;

    iget-object v1, v1, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;->iL:Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oauth_token="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "token"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&ssoid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ssoid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;->a(Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1$1;->iM:Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;

    iget-object v2, v2, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;->iL:Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;->a(Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.oppo.appKey"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "uid\":\""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1$1;->iM:Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;

    iget-object v2, v2, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;->iL:Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;->b(Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "nearme"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1$1;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1$1;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1$1$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v4, v5}, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1$1$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
