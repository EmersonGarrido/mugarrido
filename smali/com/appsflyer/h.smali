.class final Lcom/appsflyer/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static instance:Lcom/appsflyer/h;

.field private static shouldCollectPreLaunchDebugData:Z

.field private static shouldEnableRemoteDebuggingForThisApp:Z


# instance fields
.field private final APP_DATA_APP_ID:Ljava/lang/String;

.field private final APP_DATA_APP_VERSION:Ljava/lang/String;

.field private final APP_DATA_CHANNEL:Ljava/lang/String;

.field private final APP_DATA_PRE_INSTALL:Ljava/lang/String;

.field private final BQ_DATE_FORMAT:Ljava/lang/String;

.field private final CHRONOLOGICAL_EVENTS_DATA:Ljava/lang/String;

.field private final DEVICE_DATA_ANDROID_ID:Ljava/lang/String;

.field private final DEVICE_DATA_BRAND:Ljava/lang/String;

.field private final DEVICE_DATA_GAID:Ljava/lang/String;

.field private final DEVICE_DATA_IMEI:Ljava/lang/String;

.field private final DEVICE_DATA_MODEL:Ljava/lang/String;

.field private final DEVICE_DATA_PLATFORM_NAME:Ljava/lang/String;

.field private final DEVICE_DATA_PLATFORM_VERSION:Ljava/lang/String;

.field private final EVENT_DATE_FORMAT:Ljava/lang/String;

.field private final EXCEPTION:Ljava/lang/String;

.field private final PUBLIC_API_CALL:Ljava/lang/String;

.field private final REMOTE_DEBUGGING_STARTED:Ljava/lang/String;

.field private final REMOTE_DEBUGGING_STOPPED:Ljava/lang/String;

.field private final SDK_DATA_CURRENT_AF_UID:Ljava/lang/String;

.field private final SDK_DATA_DEV_KEY:Ljava/lang/String;

.field private final SDK_DATA_ORIGINAL_AF_UID:Ljava/lang/String;

.field private final SDK_DATA_SDK_VERSION:Ljava/lang/String;

.field private final SERVER_REQUEST:Ljava/lang/String;

.field private final SERVER_RESPONSE:Ljava/lang/String;

.field private final TIMESTAMP:Ljava/lang/String;

.field private chronologicalEvents:Lorg/json/JSONArray;

.field private remoteDebuggingEnabledFromServer:Z

.field private remoteDebuggingJSON:Lorg/json/JSONObject;

.field private requestSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 22
    sput-boolean v0, Lcom/appsflyer/h;->shouldCollectPreLaunchDebugData:Z

    .line 23
    sput-boolean v0, Lcom/appsflyer/h;->shouldEnableRemoteDebuggingForThisApp:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, "brand"

    iput-object v0, p0, Lcom/appsflyer/h;->DEVICE_DATA_BRAND:Ljava/lang/String;

    .line 25
    const-string v0, "model"

    iput-object v0, p0, Lcom/appsflyer/h;->DEVICE_DATA_MODEL:Ljava/lang/String;

    .line 26
    const-string v0, "platform"

    iput-object v0, p0, Lcom/appsflyer/h;->DEVICE_DATA_PLATFORM_NAME:Ljava/lang/String;

    .line 27
    const-string v0, "platform_version"

    iput-object v0, p0, Lcom/appsflyer/h;->DEVICE_DATA_PLATFORM_VERSION:Ljava/lang/String;

    .line 28
    const-string v0, "advertiserId"

    iput-object v0, p0, Lcom/appsflyer/h;->DEVICE_DATA_GAID:Ljava/lang/String;

    .line 29
    const-string v0, "imei"

    iput-object v0, p0, Lcom/appsflyer/h;->DEVICE_DATA_IMEI:Ljava/lang/String;

    .line 30
    const-string v0, "android_id"

    iput-object v0, p0, Lcom/appsflyer/h;->DEVICE_DATA_ANDROID_ID:Ljava/lang/String;

    .line 31
    const-string v0, "sdk_version"

    iput-object v0, p0, Lcom/appsflyer/h;->SDK_DATA_SDK_VERSION:Ljava/lang/String;

    .line 32
    const-string v0, "devkey"

    iput-object v0, p0, Lcom/appsflyer/h;->SDK_DATA_DEV_KEY:Ljava/lang/String;

    .line 33
    const-string v0, "originalAppsFlyerId"

    iput-object v0, p0, Lcom/appsflyer/h;->SDK_DATA_ORIGINAL_AF_UID:Ljava/lang/String;

    .line 34
    const-string v0, "uid"

    iput-object v0, p0, Lcom/appsflyer/h;->SDK_DATA_CURRENT_AF_UID:Ljava/lang/String;

    .line 35
    const-string v0, "app_id"

    iput-object v0, p0, Lcom/appsflyer/h;->APP_DATA_APP_ID:Ljava/lang/String;

    .line 36
    const-string v0, "app_version"

    iput-object v0, p0, Lcom/appsflyer/h;->APP_DATA_APP_VERSION:Ljava/lang/String;

    .line 37
    const-string v0, "channel"

    iput-object v0, p0, Lcom/appsflyer/h;->APP_DATA_CHANNEL:Ljava/lang/String;

    .line 38
    const-string v0, "preInstall"

    iput-object v0, p0, Lcom/appsflyer/h;->APP_DATA_PRE_INSTALL:Ljava/lang/String;

    .line 39
    const-string v0, "data"

    iput-object v0, p0, Lcom/appsflyer/h;->CHRONOLOGICAL_EVENTS_DATA:Ljava/lang/String;

    .line 40
    const-string v0, "timestamp"

    iput-object v0, p0, Lcom/appsflyer/h;->TIMESTAMP:Ljava/lang/String;

    .line 41
    const-string v0, "r_debugging_off"

    iput-object v0, p0, Lcom/appsflyer/h;->REMOTE_DEBUGGING_STOPPED:Ljava/lang/String;

    .line 42
    const-string v0, "r_debugging_on"

    iput-object v0, p0, Lcom/appsflyer/h;->REMOTE_DEBUGGING_STARTED:Ljava/lang/String;

    .line 43
    const-string v0, "public_api_call"

    iput-object v0, p0, Lcom/appsflyer/h;->PUBLIC_API_CALL:Ljava/lang/String;

    .line 44
    const-string v0, "exception"

    iput-object v0, p0, Lcom/appsflyer/h;->EXCEPTION:Ljava/lang/String;

    .line 45
    const-string v0, "server_request"

    iput-object v0, p0, Lcom/appsflyer/h;->SERVER_REQUEST:Ljava/lang/String;

    .line 46
    const-string v0, "server_response"

    iput-object v0, p0, Lcom/appsflyer/h;->SERVER_RESPONSE:Ljava/lang/String;

    .line 47
    const-string v0, "yyyy-MM-dd HH:mm:ssZ"

    iput-object v0, p0, Lcom/appsflyer/h;->BQ_DATE_FORMAT:Ljava/lang/String;

    .line 48
    const-string v0, "MM-dd HH:mm:ss.SSS"

    iput-object v0, p0, Lcom/appsflyer/h;->EVENT_DATE_FORMAT:Ljava/lang/String;

    .line 51
    iput v1, p0, Lcom/appsflyer/h;->requestSize:I

    .line 56
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/h;->chronologicalEvents:Lorg/json/JSONArray;

    .line 57
    iput v1, p0, Lcom/appsflyer/h;->requestSize:I

    .line 58
    iput-boolean v1, p0, Lcom/appsflyer/h;->remoteDebuggingEnabledFromServer:Z

    .line 59
    return-void
.end method

.method private varargs declared-synchronized addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "eventType"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "body"    # [Ljava/lang/String;

    .prologue
    .line 196
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/appsflyer/h;->isRemoteDebugging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/appsflyer/h;->requestSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const v1, 0x18000

    if-lt v0, v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 200
    :cond_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 201
    const-string v0, ""

    .line 202
    array-length v1, p3

    if-lez v1, :cond_3

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lez v0, :cond_2

    .line 205
    aget-object v4, p3, v0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 209
    :cond_2
    const/4 v0, 0x0

    aget-object v0, p3, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    :cond_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "MM-dd HH:mm:ss.SSS"

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 214
    if-eqz p1, :cond_4

    .line 215
    const-string v2, "%18s %5s _/%s [%s] %s %s"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "AppsFlyer_4.6.4"

    aput-object v4, v3, v1

    const/4 v1, 0x3

    aput-object p1, v3, v1

    const/4 v1, 0x4

    aput-object p2, v3, v1

    const/4 v1, 0x5

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_2
    iget-object v1, p0, Lcom/appsflyer/h;->chronologicalEvents:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 223
    iget v1, p0, Lcom/appsflyer/h;->requestSize:I

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v1

    iput v0, p0, Lcom/appsflyer/h;->requestSize:I

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    goto :goto_0

    .line 217
    :cond_4
    const-string v2, "%18s %5s %s/%s %s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    aput-object p2, v3, v1

    const/4 v1, 0x3

    const-string v4, "AppsFlyer_4.6.4"

    aput-object v4, v3, v1

    const/4 v1, 0x4

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private addStartEvent(J)V
    .locals 5
    .param p1, "startTime"    # J

    .prologue
    .line 165
    const-string v0, "r_debugging_on"

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/h;->addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private addStopEvent(J)V
    .locals 5
    .param p1, "endTime"    # J

    .prologue
    .line 170
    const-string v0, "r_debugging_off"

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/appsflyer/h;->addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method private declared-synchronized clearData()V
    .locals 1

    .prologue
    .line 304
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/appsflyer/h;->chronologicalEvents:Lorg/json/JSONArray;

    .line 305
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/h;->chronologicalEvents:Lorg/json/JSONArray;

    .line 306
    const/4 v0, 0x0

    iput v0, p0, Lcom/appsflyer/h;->requestSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static getInstance()Lcom/appsflyer/h;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/appsflyer/h;->instance:Lcom/appsflyer/h;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/appsflyer/h;

    invoke-direct {v0}, Lcom/appsflyer/h;-><init>()V

    sput-object v0, Lcom/appsflyer/h;->instance:Lcom/appsflyer/h;

    .line 65
    :cond_0
    sget-object v0, Lcom/appsflyer/h;->instance:Lcom/appsflyer/h;

    return-object v0
.end method

.method private declared-synchronized getJSONString(Z)Ljava/lang/String;
    .locals 8
    .param p1, "shouldClearData"    # Z

    .prologue
    .line 231
    monitor-enter p0

    const/4 v0, 0x0

    .line 233
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 234
    iget-object v1, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v4, "timestamp"

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ssZ"

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    iget-object v1, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v2, "data"

    iget-object v3, p0, Lcom/appsflyer/h;->chronologicalEvents:Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    iget-object v1, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    if-eqz p1, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/appsflyer/h;->clearData()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getThrowableStringData(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "stackTrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 288
    if-nez p2, :cond_0

    .line 289
    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    .line 296
    :goto_0
    return-object v0

    .line 291
    :cond_0
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 292
    aput-object p1, v1, v2

    .line 293
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 294
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 296
    goto :goto_0
.end method

.method private declared-synchronized loadStaticData(Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v7

    .line 251
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v0

    .line 252
    const-string v1, "remote_debug_static_data"

    invoke-virtual {v7, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 253
    if-eqz v1, :cond_0

    .line 255
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    :goto_0
    monitor-exit p0

    return-void

    .line 259
    :cond_0
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    .line 260
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v4, "advertiserId"

    .line 264
    invoke-virtual {v7, v4}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/appsflyer/AppsFlyerLib;->userCustomImei:Ljava/lang/String;

    iget-object v6, v0, Lcom/appsflyer/AppsFlyerLib;->userCustomAndroidId:Ljava/lang/String;

    move-object v0, p0

    .line 260
    invoke-direct/range {v0 .. v6}, Lcom/appsflyer/h;->setDeviceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v0, "4.6.4.296"

    const-string v1, "AppsFlyerKey"

    .line 269
    invoke-virtual {v7, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KSAppsFlyerId"

    .line 270
    invoke-virtual {v7, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "uid"

    .line 271
    invoke-virtual {v7, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/appsflyer/h;->setSDKData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    const/4 v0, 0x0

    :try_start_3
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 276
    const-string v1, "channel"

    invoke-virtual {v7, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    const-string v2, "preInstallName"

    invoke-virtual {v7, v2}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/appsflyer/h;->setAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    :goto_1
    :try_start_4
    const-string v0, "remote_debug_static_data"

    iget-object v1, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 257
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized setAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "appVersion"    # Ljava/lang/String;
    .param p3, "channel"    # Ljava/lang/String;
    .param p4, "preInstall"    # Ljava/lang/String;

    .prologue
    .line 147
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "app_version"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "channel"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "preInstall"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized setDeviceData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "brand"    # Ljava/lang/String;
    .param p2, "model"    # Ljava/lang/String;
    .param p3, "osVersion"    # Ljava/lang/String;
    .param p4, "gaid"    # Ljava/lang/String;
    .param p5, "imei"    # Ljava/lang/String;
    .param p6, "androidId"    # Ljava/lang/String;

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "brand"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    iget-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "model"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    iget-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "platform"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    iget-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "platform_version"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "advertiserId"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    :cond_0
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "imei"

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "android_id"

    invoke-virtual {v0, v1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized setSDKData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "devKey"    # Ljava/lang/String;
    .param p3, "originalAFUID"    # Ljava/lang/String;
    .param p4, "currentAFUID"    # Ljava/lang/String;

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "devkey"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "originalAppsFlyerId"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method final varargs addApiEvent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 175
    const-string v0, "public_api_call"

    invoke-direct {p0, v0, p1, p2}, Lcom/appsflyer/h;->addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method final addExceptionEvent(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 179
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 180
    const-string v3, "exception"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/appsflyer/h;->getThrowableStringData(Ljava/lang/String;[Ljava/lang/StackTraceElement;)[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v4, v0}, Lcom/appsflyer/h;->addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 181
    return-void

    .line 180
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    goto :goto_1
.end method

.method final addLogEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "logMessage"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v0, 0x0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/appsflyer/h;->addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method final addServerRequestEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestBody"    # Ljava/lang/String;

    .prologue
    .line 184
    const-string v0, "server_request"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/appsflyer/h;->addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 185
    return-void
.end method

.method final addServerResponseEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "responseCode"    # I
    .param p3, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string v0, "server_response"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/appsflyer/h;->addEvent(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method final disableRemoteDebuggingForThisApp()V
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x0

    sput-boolean v0, Lcom/appsflyer/h;->shouldEnableRemoteDebuggingForThisApp:Z

    .line 317
    return-void
.end method

.method final declared-synchronized dropPreLaunchDebugData()V
    .locals 1

    .prologue
    .line 311
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/appsflyer/h;->shouldCollectPreLaunchDebugData:Z

    .line 312
    invoke-direct {p0}, Lcom/appsflyer/h;->clearData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final isRemoteDebugging()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/appsflyer/h;->shouldEnableRemoteDebuggingForThisApp:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/appsflyer/h;->shouldCollectPreLaunchDebugData:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/appsflyer/h;->remoteDebuggingEnabledFromServer:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isRemoteDebuggingEnabledFromServer()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/appsflyer/h;->remoteDebuggingEnabledFromServer:Z

    return v0
.end method

.method final declared-synchronized releaseRemoteDebugging()V
    .locals 1

    .prologue
    .line 81
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/appsflyer/h;->remoteDebuggingJSON:Lorg/json/JSONObject;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/h;->chronologicalEvents:Lorg/json/JSONArray;

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/appsflyer/h;->instance:Lcom/appsflyer/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final sendRemoteDebuggingData(Ljava/lang/String;Landroid/content/pm/PackageManager;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 89
    :try_start_0
    invoke-static {}, Lcom/appsflyer/h;->getInstance()Lcom/appsflyer/h;

    move-result-object v0

    invoke-direct {v0, p1, p2}, Lcom/appsflyer/h;->loadStaticData(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 90
    invoke-static {}, Lcom/appsflyer/h;->getInstance()Lcom/appsflyer/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/appsflyer/h;->getJSONString(Z)Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Lcom/appsflyer/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appsflyer/c;-><init>(Landroid/content/Context;)V

    .line 94
    iput-object v0, v1, Lcom/appsflyer/c;->bodyAsString:Ljava/lang/String;

    .line 95
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/appsflyer/c;->setRemoteDebugMode(Z)V

    .line 96
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://monitorsdk.appsflyer.com/remote-debug?app_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/appsflyer/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method final declared-synchronized startRemoteDebuggingMode()V
    .locals 2

    .prologue
    .line 69
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/appsflyer/h;->remoteDebuggingEnabledFromServer:Z

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/appsflyer/h;->addStartEvent(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized stopRemoteDebuggingMode()V
    .locals 2

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/appsflyer/h;->addStopEvent(J)V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsflyer/h;->remoteDebuggingEnabledFromServer:Z

    .line 76
    const/4 v0, 0x0

    sput-boolean v0, Lcom/appsflyer/h;->shouldCollectPreLaunchDebugData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
