.class public Lcom/kunlun/platform/android/control/WeiboControl;
.super Lcom/kunlun/platform/android/common/KunlunActivityControl;
.source "SourceFile"


# instance fields
.field private appKey:Ljava/lang/String;

.field private dQ:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private dR:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

.field private dS:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

.field private dT:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;

.field private mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method public constructor <init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 1

    invoke-direct {p0}, Lcom/kunlun/platform/android/common/KunlunActivityControl;-><init>()V

    new-instance v0, Lcom/kunlun/platform/android/control/WeiboControl$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/control/WeiboControl$1;-><init>(Lcom/kunlun/platform/android/control/WeiboControl;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl;->dT:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    iput-object p1, p0, Lcom/kunlun/platform/android/control/WeiboControl;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/control/WeiboControl;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/control/WeiboControl;Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/control/WeiboControl;->dR:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/control/WeiboControl;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/control/WeiboControl;)Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl;->dR:Lcom/sina/weibo/sdk/auth/Oauth2AccessToken;

    return-object v0
.end method


# virtual methods
.method public checkBrowser(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/kunlun/platform/android/control/WeiboControl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl;->dS:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl;->dS:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl;->activity:Landroid/app/Activity;

    iput-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.weibo_appkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl;->appKey:Ljava/lang/String;

    new-instance v0, Lcom/sina/weibo/sdk/auth/AuthInfo;

    iget-object v1, p0, Lcom/kunlun/platform/android/control/WeiboControl;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/control/WeiboControl;->appKey:Ljava/lang/String;

    const-string v3, "https://api.weibo.com/oauth2/default.html"

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl;->dQ:Lcom/sina/weibo/sdk/auth/AuthInfo;

    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v1, p0, Lcom/kunlun/platform/android/control/WeiboControl;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/control/WeiboControl;->dQ:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-direct {v0, v1, v2}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl;->dS:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v0, p0, Lcom/kunlun/platform/android/control/WeiboControl;->dS:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v1, p0, Lcom/kunlun/platform/android/control/WeiboControl;->dT:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    return-void
.end method
