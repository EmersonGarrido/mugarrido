.class final Lcom/kunlun/platform/android/control/WeiboControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/control/WeiboControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic dU:Lcom/kunlun/platform/android/control/WeiboControl;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/control/WeiboControl;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/control/WeiboControl$1;->dU:Lcom/kunlun/platform/android/control/WeiboControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/control/WeiboControl$1;)Lcom/kunlun/platform/android/control/WeiboControl;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl$1;->dU:Lcom/kunlun/platform/android/control/WeiboControl;

    return-object v0
.end method


# virtual methods
.method public final onCancel()V
    .locals 4

    const-string v0, "com.kunlun.platform.android.control.WeiboControl"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl$1;->dU:Lcom/kunlun/platform/android/control/WeiboControl;

    invoke-static {v0}, Lcom/kunlun/platform/android/control/WeiboControl;->a(Lcom/kunlun/platform/android/control/WeiboControl;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl$1;->dU:Lcom/kunlun/platform/android/control/WeiboControl;

    invoke-static {v0}, Lcom/kunlun/platform/android/control/WeiboControl;->a(Lcom/kunlun/platform/android/control/WeiboControl;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x64

    const-string v2, "\u5fae\u535a\u767b\u5f55\u53d6\u6d88"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl$1;->dU:Lcom/kunlun/platform/android/control/WeiboControl;

    invoke-static {v0}, Lcom/kunlun/platform/android/control/WeiboControl;->b(Lcom/kunlun/platform/android/control/WeiboControl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onComplete(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl$1;->dU:Lcom/kunlun/platform/android/control/WeiboControl;

    invoke-static {p1}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->parseAccessToken(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/control/WeiboControl;->a(Lcom/kunlun/platform/android/control/WeiboControl;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl$1;->dU:Lcom/kunlun/platform/android/control/WeiboControl;

    invoke-static {v0}, Lcom/kunlun/platform/android/control/WeiboControl;->c(Lcom/kunlun/platform/android/control/WeiboControl;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/control/WeiboControl$1;->dU:Lcom/kunlun/platform/android/control/WeiboControl;

    invoke-static {v2}, Lcom/kunlun/platform/android/control/WeiboControl;->c(Lcom/kunlun/platform/android/control/WeiboControl;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "access_token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/control/WeiboControl$1;->dU:Lcom/kunlun/platform/android/control/WeiboControl;

    invoke-static {v2}, Lcom/kunlun/platform/android/control/WeiboControl;->c(Lcom/kunlun/platform/android/control/WeiboControl;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sinaweibo"

    iget-object v2, p0, Lcom/kunlun/platform/android/control/WeiboControl$1;->dU:Lcom/kunlun/platform/android/control/WeiboControl;

    invoke-static {v2}, Lcom/kunlun/platform/android/control/WeiboControl;->b(Lcom/kunlun/platform/android/control/WeiboControl;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/control/WeiboControl$1$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/control/WeiboControl$1$1;-><init>(Lcom/kunlun/platform/android/control/WeiboControl$1;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :goto_0
    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl$1;->dU:Lcom/kunlun/platform/android/control/WeiboControl;

    invoke-static {v0}, Lcom/kunlun/platform/android/control/WeiboControl;->b(Lcom/kunlun/platform/android/control/WeiboControl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const-string v0, "code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/control/WeiboControl$1;->dU:Lcom/kunlun/platform/android/control/WeiboControl;

    invoke-static {v1}, Lcom/kunlun/platform/android/control/WeiboControl;->a(Lcom/kunlun/platform/android/control/WeiboControl;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v1

    const/16 v2, -0x66

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u767b\u5f55\u5931\u8d25\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method

.method public final onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 4

    const-string v0, "com.kunlun.platform.android.control.WeiboControl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WeiboException="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl$1;->dU:Lcom/kunlun/platform/android/control/WeiboControl;

    invoke-static {v0}, Lcom/kunlun/platform/android/control/WeiboControl;->a(Lcom/kunlun/platform/android/control/WeiboControl;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl$1;->dU:Lcom/kunlun/platform/android/control/WeiboControl;

    invoke-static {v0}, Lcom/kunlun/platform/android/control/WeiboControl;->a(Lcom/kunlun/platform/android/control/WeiboControl;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x65

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/exception/WeiboException;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl$1;->dU:Lcom/kunlun/platform/android/control/WeiboControl;

    invoke-static {v0}, Lcom/kunlun/platform/android/control/WeiboControl;->b(Lcom/kunlun/platform/android/control/WeiboControl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
