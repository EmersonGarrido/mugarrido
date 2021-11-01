.class public Lcom/appsflyer/InstanceIDListener;
.super Lcom/google/android/gms/iid/InstanceIDListenerService;
.source "SourceFile"


# instance fields
.field private _refreshedToken:Ljava/lang/String;

.field private _tokenTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenRefresh()V
    .locals 6

    .prologue
    .line 19
    invoke-super {p0}, Lcom/google/android/gms/iid/InstanceIDListenerService;->onTokenRefresh()V

    .line 20
    const-string v0, "onTokenRefresh called"

    invoke-static {v0}, Lcom/appsflyer/a;->afLog(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "gcmProjectNumber"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {p0}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v1

    .line 25
    :try_start_0
    const-string v2, "GCM"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/InstanceIDListener;->_refreshedToken:Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/InstanceIDListener;->_tokenTimestamp:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    :goto_0
    iget-object v0, p0, Lcom/appsflyer/InstanceIDListener;->_refreshedToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appsflyer/InstanceIDListener;->_refreshedToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/a;->afLog(Ljava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "gcmToken"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v1

    const-string v2, "gcmInstanceId"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "gcmTokenTimestamp"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 39
    new-instance v3, Lcom/appsflyer/e;

    invoke-direct {v3, v2, v0, v1}, Lcom/appsflyer/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v0, Lcom/appsflyer/e;

    iget-wide v4, p0, Lcom/appsflyer/InstanceIDListener;->_tokenTimestamp:J

    iget-object v2, p0, Lcom/appsflyer/InstanceIDListener;->_refreshedToken:Ljava/lang/String;

    invoke-direct {v0, v4, v5, v2, v1}, Lcom/appsflyer/e;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3, v0}, Lcom/appsflyer/e;->update(Lcom/appsflyer/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    invoke-virtual {v0, v3, p0}, Lcom/appsflyer/AppsFlyerLib;->updateServerGcmToken(Lcom/appsflyer/e;Landroid/content/Context;)V

    .line 45
    :cond_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v1, "Could not load registration ID"

    invoke-static {v1, v0}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 30
    :catch_1
    move-exception v0

    .line 31
    const-string v1, "Error registering for uninstall feature"

    invoke-static {v1, v0}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
