.class public Lcom/kunlun/platform/android/google/GoogleActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private action:Ljava/lang/String;

.field private context:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setWaitScreen(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->getInstance()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->loading()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x1

    const/16 v6, -0x65

    const/4 v5, -0x1

    const/16 v4, -0x66

    const-string v0, "kunlun.GoogleActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult:requestCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/google/GoogleActivity;->finish()V

    const/16 v0, 0x232d

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lB:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_5

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lB:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    const-string v1, "Login cancel."

    invoke-interface {v0, v6, v1}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    :cond_2
    :goto_1
    const/16 v0, 0x2329

    if-ne p1, v0, :cond_3

    if-nez p2, :cond_9

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lB:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lB:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    const-string v1, "Login cancel."

    invoke-interface {v0, v6, v1}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    :cond_3
    :goto_2
    const/16 v0, 0x232a

    if-eq p1, v0, :cond_4

    const/16 v0, 0x232b

    if-ne p1, v0, :cond_0

    :cond_4
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    goto :goto_0

    :cond_5
    if-ne p2, v5, :cond_6

    if-nez p3, :cond_7

    :cond_6
    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lB:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    const-string v1, "Login error,please try again later."

    invoke-interface {v0, v4, v1}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    goto :goto_1

    :cond_7
    if-ne p2, v5, :cond_2

    sget-object v0, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {v0, p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInResultFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GoogleActivity;->context:Landroid/app/Activity;

    const-string v2, "kunlun.GoogleSdk"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "account"

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;->getSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getEmail()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-direct {p0, v7}, Lcom/kunlun/platform/android/google/GoogleActivity;->setWaitScreen(Z)V

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/kunlun/platform/android/google/GoogleSdk;->lB:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    invoke-static {v0, v7, v1}, Lcom/kunlun/platform/android/google/GoogleSdk;->connectGoogle(Landroid/content/Context;ZLcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lB:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    const-string v1, "Login error,please try again later."

    invoke-interface {v0, v4, v1}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    goto :goto_1

    :cond_9
    if-eq p2, v5, :cond_a

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lB:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lB:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    const-string v1, "Login error,please try again later."

    invoke-interface {v0, v4, v1}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    goto :goto_2

    :cond_a
    if-ne p2, v5, :cond_3

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnecting()Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto/16 :goto_2

    :cond_b
    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lB:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lB:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    const-string v1, "Login error,please try again later."

    invoke-interface {v0, v4, v1}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/kunlun/platform/android/google/GoogleActivity;->context:Landroid/app/Activity;

    invoke-virtual {p0, v3}, Lcom/kunlun/platform/android/google/GoogleActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/kunlun/platform/android/google/GoogleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v3}, Lcom/kunlun/platform/android/google/GoogleActivity;->setWaitScreen(Z)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/google/GoogleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/google/GoogleActivity;->action:Ljava/lang/String;

    const-string v0, "login"

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GoogleActivity;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestEmail()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestScopes(Lcom/google/android/gms/common/api/Scope;[Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/google/android/gms/auth/api/Auth;->GOOGLE_SIGN_IN_API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/auth/api/Auth;->GoogleSignInApi:Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;

    invoke-interface {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInApi;->getSignInIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x232d

    invoke-virtual {p0, v0, v1}, Lcom/kunlun/platform/android/google/GoogleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/google/GoogleActivity;->action:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, ""

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GoogleActivity;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, v2}, Lcom/kunlun/platform/android/google/GoogleActivity;->setWaitScreen(Z)V

    const-string v0, "kunlun.GoogleActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doConnected:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/google/GoogleActivity;->action:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "showAchievements"

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GoogleActivity;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1}, Lcom/google/android/gms/games/achievement/Achievements;->getAchievementsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x232a

    invoke-virtual {p0, v0, v1}, Lcom/kunlun/platform/android/google/GoogleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    const-string v0, "showLeaderboards"

    iget-object v1, p0, Lcom/kunlun/platform/android/google/GoogleActivity;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kunlun/platform/android/google/GoogleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "leaderboardId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v2, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getLeaderboardIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x232b

    invoke-virtual {p0, v0, v1}, Lcom/kunlun/platform/android/google/GoogleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lC:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lC:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_4

    :try_start_0
    const-string v0, "kunlun.GoogleActivity"

    const-string v1, "GoogleApiClient onConnectionFailed startIntentSenderForResult"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/google/GoogleActivity;->setWaitScreen(Z)V

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lC:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/16 v2, 0x2329

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/kunlun/platform/android/google/GoogleActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-object v7, Lcom/kunlun/platform/android/google/GoogleSdk;->lC:Lcom/google/android/gms/common/ConnectionResult;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "kunlun.GoogleActivity"

    const-string v2, "GoogleApiClient onConnectionFailed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lB:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/kunlun/platform/android/google/GoogleActivity;->finish()V

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lB:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    const/16 v1, -0x64

    const-string v2, "Error."

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/kunlun/platform/android/google/GoogleActivity;->setWaitScreen(Z)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
