.class public Lcom/kunlun/platform/android/kakao/KakaoManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static clientId:Ljava/lang/String;

.field static clientSecret:Ljava/lang/String;

.field private static lU:Lcom/kakao/api/Kakao;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAccessToken(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "KalendsSNSSDK"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "KakaoAccessToken"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static r(Landroid/content/Context;)Lcom/kakao/api/Kakao;
    .locals 6

    const/4 v0, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    sget-object v2, Lcom/kunlun/platform/android/kakao/KakaoManager;->lU:Lcom/kakao/api/Kakao;

    if-eqz v2, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/kakao/KakaoManager;->lU:Lcom/kakao/api/Kakao;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    const-string v2, "Kunlun.kakao.clientId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/kunlun/platform/android/kakao/KakaoManager;->clientId:Ljava/lang/String;

    const-string v2, "Kunlun.kakao.clientSecret"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/kunlun/platform/android/kakao/KakaoManager;->clientSecret:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kakao"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/kunlun/platform/android/kakao/KakaoManager;->clientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "://exec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/kakao/api/Kakao;

    sget-object v4, Lcom/kunlun/platform/android/kakao/KakaoManager;->clientId:Ljava/lang/String;

    sget-object v5, Lcom/kunlun/platform/android/kakao/KakaoManager;->clientSecret:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/kakao/api/Kakao;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/kunlun/platform/android/kakao/KakaoManager;->lU:Lcom/kakao/api/Kakao;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Kunlun.kakao.isDebug"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/kunlun/platform/android/kakao/KakaoManager;->lU:Lcom/kakao/api/Kakao;

    sget-object v2, Lcom/kakao/api/Kakao$LogLevel;->Debug:Lcom/kakao/api/Kakao$LogLevel;

    invoke-virtual {v1, v2}, Lcom/kakao/api/Kakao;->setLogLevel(Lcom/kakao/api/Kakao$LogLevel;)V

    :cond_2
    const-string v1, "KalendsSNSSDK"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/kakao/KakaoManager$1;

    invoke-direct {v2, v1}, Lcom/kunlun/platform/android/kakao/KakaoManager$1;-><init>(Landroid/content/SharedPreferences;)V

    sget-object v3, Lcom/kunlun/platform/android/kakao/KakaoManager;->lU:Lcom/kakao/api/Kakao;

    invoke-virtual {v3, v2}, Lcom/kakao/api/Kakao;->setTokenListener(Lcom/kakao/api/Kakao$KakaoTokenListener;)V

    const-string v2, "KakaoAccessToken"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "KakaoRefreshToken"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/kunlun/platform/android/kakao/KakaoManager;->lU:Lcom/kakao/api/Kakao;

    invoke-virtual {v1, v2, v0}, Lcom/kakao/api/Kakao;->setTokens(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kunlun/platform/android/kakao/KakaoManager;->lU:Lcom/kakao/api/Kakao;

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "com.kunlun.platform.android.kakao.KakaoManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
