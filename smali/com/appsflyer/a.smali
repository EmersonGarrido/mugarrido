.class final Lcom/appsflyer/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppsFlyer_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/appsflyer/AppsFlyerLib;->SERVER_BUILD_NUMBER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/appsflyer/AppsFlyerLib;->SDK_BUILD_NUMBER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/a;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method static afDebugLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "debugLogMessage"    # Ljava/lang/String;

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/appsflyer/a;->afDebugLog(Ljava/lang/String;Z)V

    .line 68
    return-void
.end method

.method static afDebugLog(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "debugLogMessage"    # Ljava/lang/String;
    .param p1, "shouldRemoteDebug"    # Z

    .prologue
    .line 24
    invoke-static {}, Lcom/appsflyer/a;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/appsflyer/a;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    invoke-static {}, Lcom/appsflyer/h;->getInstance()Lcom/appsflyer/h;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/h;->addLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_1
    return-void
.end method

.method static afLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 71
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/appsflyer/a;->afLog(Ljava/lang/String;Z)V

    .line 72
    return-void
.end method

.method static afLog(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "logMessage"    # Ljava/lang/String;
    .param p1, "shouldRemoteDebug"    # Z

    .prologue
    .line 15
    invoke-static {}, Lcom/appsflyer/a;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Lcom/appsflyer/a;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :cond_0
    if-eqz p1, :cond_1

    .line 19
    invoke-static {}, Lcom/appsflyer/h;->getInstance()Lcom/appsflyer/h;

    move-result-object v0

    const-string v1, "I"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/h;->addLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_1
    return-void
.end method

.method static afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "errorLogMessage"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 75
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 76
    return-void
.end method

.method static afLogE(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .locals 1
    .param p0, "errorLogMessage"    # Ljava/lang/String;
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "shouldRemoteDebug"    # Z
    .param p3, "shouldOutputToLog"    # Z

    .prologue
    .line 34
    invoke-static {}, Lcom/appsflyer/a;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 35
    sget-object v0, Lcom/appsflyer/a;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    :cond_0
    if-eqz p2, :cond_1

    .line 38
    invoke-static {}, Lcom/appsflyer/h;->getInstance()Lcom/appsflyer/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appsflyer/h;->addExceptionEvent(Ljava/lang/Throwable;)V

    .line 40
    :cond_1
    return-void
.end method

.method static afLogM(Ljava/lang/String;)V
    .locals 2
    .param p0, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {}, Lcom/appsflyer/a;->noLogsAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/appsflyer/a;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_0
    invoke-static {}, Lcom/appsflyer/h;->getInstance()Lcom/appsflyer/h;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/h;->addLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method static afWarnLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "warningLogMessage"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/appsflyer/a;->afWarnLog(Ljava/lang/String;Z)V

    .line 80
    return-void
.end method

.method static afWarnLog(Ljava/lang/String;Z)V
    .locals 2
    .param p0, "warningLogMessage"    # Ljava/lang/String;
    .param p1, "shouldRemoteDebug"    # Z

    .prologue
    .line 43
    invoke-static {}, Lcom/appsflyer/a;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/appsflyer/a;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_0
    if-eqz p1, :cond_1

    .line 47
    invoke-static {}, Lcom/appsflyer/h;->getInstance()Lcom/appsflyer/h;

    move-result-object v0

    const-string v1, "W"

    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/h;->addLogEntry(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_1
    return-void
.end method

.method private static noLogsAllowed()Z
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerProperties;->isLogsDisabledCompletely()Z

    move-result v0

    return v0
.end method

.method private static shouldLog()Z
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerProperties;->isEnableLog()Z

    move-result v0

    return v0
.end method
