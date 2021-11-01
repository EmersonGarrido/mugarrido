.class final Lcom/kunlun/platform/android/facebook/KunlunFbSdk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic eq:Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

.field private final synthetic er:Lcom/kunlun/platform/android/Kunlun$DialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/facebook/KunlunFbSdk;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$1;->eq:Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    iput-object p2, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$1;->er:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 3

    const-string v0, "KunlunFbSdk"

    const-string v1, "login cancel"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$1;->er:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    const/4 v1, -0x2

    const-string v2, "login cancel"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final onError(Lcom/facebook/FacebookException;)V
    .locals 3

    const-string v0, "KunlunFbSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "login error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$1;->er:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    const/4 v1, -0x1

    const-string v2, "login failed"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->getAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/AccessToken;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$1;->eq:Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    iput-object v1, v0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->accessToken:Lcom/facebook/AccessToken;

    const-string v0, "KunlunFbSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fb_token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$1;->eq:Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    iget-object v2, v2, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$1;->er:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$1;->eq:Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    iget-object v2, v2, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->accessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
