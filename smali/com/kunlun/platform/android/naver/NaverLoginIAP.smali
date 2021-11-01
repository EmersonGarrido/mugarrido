.class public Lcom/kunlun/platform/android/naver/NaverLoginIAP;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static activity:Landroid/app/Activity;

.field private static fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private static kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private static mOAuthLoginHandler:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

.field private static mo:Lcom/nhn/android/naverlogin/OAuthLogin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kunlun/platform/android/naver/NaverLoginIAP$1;

    invoke-direct {v0}, Lcom/kunlun/platform/android/naver/NaverLoginIAP$1;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->mOAuthLoginHandler:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "accessToken\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refreshToken\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "expiresAt\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tokenType\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "naver"

    sget-object v2, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\ub85c\ub4dc \uc911..."

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/naver/NaverLoginIAP$2;

    invoke-direct {v4}, Lcom/kunlun/platform/android/naver/NaverLoginIAP$2;-><init>()V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method

.method static synthetic bZ()Lcom/nhn/android/naverlogin/OAuthLogin;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->mo:Lcom/nhn/android/naverlogin/OAuthLogin;

    return-object v0
.end method

.method static synthetic ca()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic cb()Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method private static init(Landroid/content/Context;)V
    .locals 6

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    sput-object v0, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-static {}, Lcom/nhn/android/naverlogin/OAuthLogin;->getInstance()Lcom/nhn/android/naverlogin/OAuthLogin;

    move-result-object v0

    sput-object v0, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->mo:Lcom/nhn/android/naverlogin/OAuthLogin;

    sget-object v0, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "naver.client_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "naver.client_secret"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "naver.client_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "naver.oauth_callback_intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->mo:Lcom/nhn/android/naverlogin/OAuthLogin;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/nhn/android/naverlogin/OAuthLogin;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected static naverLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    sput-object p0, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->activity:Landroid/app/Activity;

    sput-object p1, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-static {p0}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->mo:Lcom/nhn/android/naverlogin/OAuthLogin;

    sget-object v1, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->mOAuthLoginHandler:Lcom/nhn/android/naverlogin/OAuthLoginHandler;

    invoke-virtual {v0, p0, v1}, Lcom/nhn/android/naverlogin/OAuthLogin;->startOauthLoginActivity(Landroid/app/Activity;Lcom/nhn/android/naverlogin/OAuthLoginHandler;)V

    return-void
.end method

.method public static naverLogout(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->mo:Lcom/nhn/android/naverlogin/OAuthLogin;

    invoke-virtual {v0, p0}, Lcom/nhn/android/naverlogin/OAuthLogin;->logout(Landroid/content/Context;)V

    return-void
.end method

.method public static naverLogoutAndDeleteToken(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/kunlun/platform/android/naver/NaverLoginIAP;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/kunlun/platform/android/naver/NaverLoginIAP$3;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/naver/NaverLoginIAP$3;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/naver/NaverLoginIAP$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
