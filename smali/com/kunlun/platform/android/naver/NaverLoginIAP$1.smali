.class final Lcom/kunlun/platform/android/naver/NaverLoginIAP$1;
.super Lcom/nhn/android/naverlogin/OAuthLoginHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/naver/NaverLoginIAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nhn/android/naverlogin/OAuthLoginHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public final run(Z)V
    .locals 6

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->bZ()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v0

    invoke-static {}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->ca()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nhn/android/naverlogin/OAuthLogin;->getAccessToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->bZ()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v1

    invoke-static {}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->ca()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nhn/android/naverlogin/OAuthLogin;->getRefreshToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->bZ()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->ca()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nhn/android/naverlogin/OAuthLogin;->getExpiresAt(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->bZ()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v4

    invoke-static {}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->ca()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nhn/android/naverlogin/OAuthLogin;->getTokenType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->bZ()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v0

    invoke-static {}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->ca()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nhn/android/naverlogin/OAuthLogin;->getLastErrorCode(Landroid/content/Context;)Lcom/nhn/android/naverlogin/data/OAuthErrorCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nhn/android/naverlogin/data/OAuthErrorCode;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->bZ()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v1

    invoke-static {}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->ca()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nhn/android/naverlogin/OAuthLogin;->getLastErrorDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "NaverLoginIAP"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "errorCode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", errorDesc:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->cb()Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v1, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method
