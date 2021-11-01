.class public Lcom/kunlun/platform/android/facebook/FBActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private ee:Lcom/kunlun/platform/android/Kunlun$DialogListener;

.field private ef:Lcom/kunlun/platform/android/Kunlun$RequestListener;

.field private eg:Lcom/kunlun/platform/android/Kunlun$FbInviteListener;

.field private eh:Z

.field private ei:Z

.field private ej:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v1, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->eh:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ei:Z

    iput-boolean v1, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ej:Z

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/facebook/FBActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->doAction()V

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/facebook/FBActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ei:Z

    return-void
.end method

.method private bJ()V
    .locals 3

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ef:Lcom/kunlun/platform/android/Kunlun$RequestListener;

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->getInvitableFriends(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->finish()V

    return-void
.end method

.method static synthetic c(Lcom/kunlun/platform/android/facebook/FBActivity;)Lcom/kunlun/platform/android/Kunlun$DialogListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ee:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/facebook/FBActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ej:Z

    return-void
.end method

.method private doAction()V
    .locals 3

    const/4 v2, 0x1

    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/facebook/AccessToken;->isExpired()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "act"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "login"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ej:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ej:Z

    new-instance v0, Lcom/kunlun/platform/android/facebook/FBActivity$2;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/facebook/FBActivity$2;-><init>(Lcom/kunlun/platform/android/facebook/FBActivity;)V

    invoke-static {v0}, Lcom/facebook/AccessToken;->refreshCurrentAccessTokenAsync(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "feed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->eh:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/kunlun/platform/android/facebook/FBActivity;->setRequestedOrientation(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ee:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    invoke-virtual {v1, v0, p0, v2}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->share(Landroid/os/Bundle;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    goto :goto_0

    :cond_3
    const-string v1, "request"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->eg:Lcom/kunlun/platform/android/Kunlun$FbInviteListener;

    invoke-virtual {v1, v0, p0, v2}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->invite(Landroid/os/Bundle;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$FbInviteListener;)V

    goto :goto_0

    :cond_4
    const-string v1, "getInvitableFriends"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->bJ()V

    goto :goto_0

    :cond_5
    const-string v1, "getFriends"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ef:Lcom/kunlun/platform/android/Kunlun$RequestListener;

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->getFriends(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->finish()V

    goto :goto_0

    :cond_6
    const-string v1, "getFriendsByNamePrefix"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->bJ()V

    goto :goto_0

    :cond_7
    const-string v1, "getUserInfos"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ef:Lcom/kunlun/platform/android/Kunlun$RequestListener;

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->getUserInfos(Lcom/kunlun/platform/android/Kunlun$RequestListener;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->finish()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ee:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ei:Z

    new-instance v0, Lcom/kunlun/platform/android/facebook/FBActivity$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/facebook/FBActivity$1;-><init>(Lcom/kunlun/platform/android/facebook/FBActivity;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ee:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    :cond_9
    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ee:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    invoke-virtual {v0, p0, v1}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->getCallbackManager()Lcom/facebook/CallbackManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    iget-boolean v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ei:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/kunlun/platform/android/facebook/FBActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/facebook/FBActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    invoke-virtual {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "callback"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/common/KunlunActivityUtil;->removeCallback(J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const-class v1, Lcom/kunlun/platform/android/Kunlun$DialogListener;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    check-cast v0, Lcom/kunlun/platform/android/Kunlun$DialogListener;

    iput-object v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ee:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/kunlun/platform/android/facebook/FBActivity;->doAction()V

    :cond_2
    return-void

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.facebook.katana"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->eh:Z

    goto :goto_0

    :cond_4
    const-class v1, Lcom/kunlun/platform/android/Kunlun$RequestListener;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    check-cast v0, Lcom/kunlun/platform/android/Kunlun$RequestListener;

    iput-object v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->ef:Lcom/kunlun/platform/android/Kunlun$RequestListener;

    goto :goto_1

    :cond_5
    const-class v1, Lcom/kunlun/platform/android/Kunlun$FbInviteListener;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lcom/kunlun/platform/android/Kunlun$FbInviteListener;

    iput-object v0, p0, Lcom/kunlun/platform/android/facebook/FBActivity;->eg:Lcom/kunlun/platform/android/Kunlun$FbInviteListener;

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->stopTracking()V

    invoke-static {}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->destory()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {p0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->instance(Landroid/content/Context;)Lcom/kunlun/platform/android/facebook/KunlunFbSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->startTracking()V

    return-void
.end method
