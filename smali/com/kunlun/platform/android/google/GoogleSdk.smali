.class public Lcom/kunlun/platform/android/google/GoogleSdk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/platform/android/google/GoogleSdk$Callback;
    }
.end annotation


# static fields
.field static lA:Lcom/google/android/gms/common/api/GoogleApiClient;

.field static lB:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

.field static lC:Lcom/google/android/gms/common/ConnectionResult;

.field static lD:Z

.field static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorNotification(Landroid/content/Context;I)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->getInstance()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunLang;->notSupport()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    const-string v1, "success"

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    sput-object p0, Lcom/kunlun/platform/android/google/GoogleSdk;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/kunlun/platform/android/google/GoogleSdk;->lB:Lcom/kunlun/platform/android/google/GoogleSdk$Callback;

    const-string v2, "true"

    const-string v3, "GooglePlay.notShowConnectingPopup"

    invoke-static {p0, v3}, Lcom/kunlun/platform/android/KunlunUtil;->getMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_1
    invoke-static {}, Lcom/google/android/gms/games/Games$GamesOptions;->builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->setShowConnectingPopup(Z)Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->build()Lcom/google/android/gms/games/Games$GamesOptions;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/kunlun/platform/android/google/GoogleSdk$1;

    invoke-direct {v2, p2}, Lcom/kunlun/platform/android/google/GoogleSdk$1;-><init>(Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/google/GoogleSdk$3;

    invoke-direct {v2, p1, p0, p2}, Lcom/kunlun/platform/android/google/GoogleSdk$3;-><init>(Landroid/content/Intent;Landroid/content/Context;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/games/Games;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions$HasOptions;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    sget-boolean v1, Lcom/kunlun/platform/android/google/GoogleSdk;->lD:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/gms/plus/Plus;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/games/Games;->SCOPE_GAMES:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_LOGIN:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/plus/Plus;->SCOPE_PLUS_PROFILE:Lcom/google/android/gms/common/api/Scope;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/Scope;

    const-string v3, "https://www.googleapis.com/auth/userinfo.email"

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addScope(Lcom/google/android/gms/common/api/Scope;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v0

    sput-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;ILcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/gms/games/achievement/Achievements;->increment(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;I)V

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Achievements.increment success:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "kunlun.GoogleSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doIncrementAchievements:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0}, Lcom/kunlun/platform/android/google/GoogleSdk;->logout(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Achievements.increment error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 3

    const-string v0, "kunlun.GoogleSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "doKunlunLogin retMsg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->getInstance()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->loading()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kunlun/platform/android/google/GoogleSdk$5;

    invoke-direct {v0, p0, p2}, Lcom/kunlun/platform/android/google/GoogleSdk$5;-><init>(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/google/GoogleSdk$5;->start()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Achievements:Lcom/google/android/gms/games/achievement/Achievements;

    sget-object v1, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/games/achievement/Achievements;->unlock(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Achievements.unlock success:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "kunlun.GoogleSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doUnlockAchievements:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0}, Lcom/kunlun/platform/android/google/GoogleSdk;->logout(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Achievements.unlock error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;ILcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    sget-object v1, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    int-to-long v2, p2

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Leaderboards.submitScore success:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "kunlun.GoogleSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doSubmitScore:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {p0}, Lcom/kunlun/platform/android/google/GoogleSdk;->logout(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Leaderboards.submitScore error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Lcom/kunlun/platform/android/google/GoogleSdk$Callback;->onComplete(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static connectGoogle(Landroid/content/Context;ZLcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
    .locals 2

    invoke-static {p0}, Lcom/kunlun/platform/android/google/GoogleSdk;->q(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "kunlun.GoogleSdk"

    const-string v1, "GoogleSdk not available"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Please add google-play-services_lib."

    invoke-static {p0, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    new-instance v1, Lcom/kunlun/platform/android/google/GoogleSdk$2;

    invoke-direct {v1, p2}, Lcom/kunlun/platform/android/google/GoogleSdk$2;-><init>(Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    invoke-static {p0, v0, v1}, Lcom/kunlun/platform/android/google/GoogleSdk;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    goto :goto_0
.end method

.method public static incrementAchievements(Landroid/content/Context;Ljava/lang/String;ILcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
    .locals 2

    invoke-static {p0}, Lcom/kunlun/platform/android/google/GoogleSdk;->q(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "kunlun.GoogleSdk"

    const-string v1, "GoogleSdk not available"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Please add google-play-services_lib."

    invoke-static {p0, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/kunlun/platform/android/google/GoogleSdk$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kunlun/platform/android/google/GoogleSdk$7;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    invoke-static {p0, v0, v1}, Lcom/kunlun/platform/android/google/GoogleSdk;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    goto :goto_0
.end method

.method protected static login(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;Z)V
    .locals 3

    invoke-static {p0}, Lcom/kunlun/platform/android/google/GoogleSdk;->q(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "kunlun.GoogleSdk"

    const-string v1, "GoogleSdk not available"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Please add google-play-services_lib."

    invoke-static {p0, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, ""

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->getInstance()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->loading()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p2, Lcom/kunlun/platform/android/google/GoogleSdk;->lD:Z

    new-instance v1, Lcom/kunlun/platform/android/google/GoogleSdk$4;

    invoke-direct {v1, p0, p1}, Lcom/kunlun/platform/android/google/GoogleSdk$4;-><init>(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {p0, v0, v1}, Lcom/kunlun/platform/android/google/GoogleSdk;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    goto :goto_0
.end method

.method public static logout(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;

    sget-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->disconnect()V

    const/4 v0, 0x0

    sput-object v0, Lcom/kunlun/platform/android/google/GoogleSdk;->lA:Lcom/google/android/gms/common/api/GoogleApiClient;

    :cond_0
    return-void
.end method

.method private static q(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    const-string v0, "com.google.android.gms.version"

    invoke-static {p0, v0}, Lcom/kunlun/platform/android/KunlunUtil;->getMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.kunlun.platform.android.google.GoogleActivity"

    invoke-static {p0, v0}, Lcom/kunlun/platform/android/KunlunUtil;->getIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method public static showAchievements(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/kunlun/platform/android/google/GoogleSdk;->q(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "kunlun.GoogleSdk"

    const-string v1, "GoogleSdk not available"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Please add google-play-services_lib."

    invoke-static {p0, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/kunlun/platform/android/google/GoogleSdk$8;

    invoke-direct {v1, v0, p0}, Lcom/kunlun/platform/android/google/GoogleSdk$8;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lcom/kunlun/platform/android/google/GoogleSdk;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    goto :goto_0
.end method

.method public static showLeaderboards(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/kunlun/platform/android/google/GoogleSdk;->q(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "kunlun.GoogleSdk"

    const-string v1, "GoogleSdk not available"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Please add google-play-services_lib."

    invoke-static {p0, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/kunlun/platform/android/google/GoogleSdk$10;

    invoke-direct {v1, v0, p1, p0}, Lcom/kunlun/platform/android/google/GoogleSdk$10;-><init>(Landroid/content/Intent;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p0, v0, v1}, Lcom/kunlun/platform/android/google/GoogleSdk;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    goto :goto_0
.end method

.method public static submitScore(Landroid/content/Context;Ljava/lang/String;ILcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
    .locals 2

    invoke-static {p0}, Lcom/kunlun/platform/android/google/GoogleSdk;->q(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "kunlun.GoogleSdk"

    const-string v1, "GoogleSdk not available"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Please add google-play-services_lib."

    invoke-static {p0, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/kunlun/platform/android/google/GoogleSdk$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/kunlun/platform/android/google/GoogleSdk$9;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    invoke-static {p0, v0, v1}, Lcom/kunlun/platform/android/google/GoogleSdk;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    goto :goto_0
.end method

.method public static unlockAchievements(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V
    .locals 2

    invoke-static {p0}, Lcom/kunlun/platform/android/google/GoogleSdk;->q(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "kunlun.GoogleSdk"

    const-string v1, "GoogleSdk not available"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Please add google-play-services_lib."

    invoke-static {p0, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/kunlun/platform/android/google/GoogleSdk$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/google/GoogleSdk$6;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    invoke-static {p0, v0, v1}, Lcom/kunlun/platform/android/google/GoogleSdk;->a(Landroid/content/Context;Landroid/content/Intent;Lcom/kunlun/platform/android/google/GoogleSdk$Callback;)V

    goto :goto_0
.end method
