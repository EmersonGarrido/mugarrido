.class Lcom/appsflyer/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appsflyer/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AdvertisingIdClient$b;,
        Lcom/appsflyer/AdvertisingIdClient$a;,
        Lcom/appsflyer/AdvertisingIdClient$AdInfo;
    }
.end annotation


# static fields
.field private static devKey:Ljava/lang/String;

.field private static replacedKey:Ljava/lang/String;


# instance fields
.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;


# direct methods
.method constructor <init>(Lcom/appsflyer/AppsFlyerLib;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsflyer/AppsFlyerLib;

    .prologue
    .line 1282
    iput-object p1, p0, Lcom/appsflyer/AdvertisingIdClient;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/appsflyer/AdvertisingIdClient$AdInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 46
    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    new-instance v1, Lcom/appsflyer/AdvertisingIdClient$a;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/appsflyer/AdvertisingIdClient$a;-><init>(Lcom/appsflyer/AdvertisingIdClient;)V

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    const-string v2, "com.google.android.gms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const/4 v2, 0x1

    :try_start_1
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Lcom/appsflyer/AdvertisingIdClient$b;

    invoke-virtual {v1}, Lcom/appsflyer/AdvertisingIdClient$a;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/appsflyer/AdvertisingIdClient$b;-><init>(Landroid/os/IBinder;)V

    .line 57
    new-instance v2, Lcom/appsflyer/AdvertisingIdClient$AdInfo;

    invoke-virtual {v0}, Lcom/appsflyer/AdvertisingIdClient$b;->getId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/appsflyer/AdvertisingIdClient$b;->isLimitAdTrackingEnabled(Z)Z

    move-result v0

    invoke-direct {v2, v3, v0}, Lcom/appsflyer/AdvertisingIdClient$AdInfo;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    if-eqz p0, :cond_1

    .line 64
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 58
    :cond_1
    return-object v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    throw v0

    .line 63
    :cond_2
    if-eqz p0, :cond_3

    .line 64
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 67
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Google Play connection failed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :catch_1
    move-exception v0

    .line 61
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :catchall_0
    move-exception v0

    if-eqz p0, :cond_4

    .line 64
    invoke-virtual {p0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_4
    throw v0
.end method

.method public static logMessageMaskKey(Ljava/lang/String;)V
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 2044
    sget-object v0, Lcom/appsflyer/AdvertisingIdClient;->devKey:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2045
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v1, "AppsFlyerKey"

    invoke-virtual {v0, v1}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/AdvertisingIdClient;->setDevKey(Ljava/lang/String;)V

    .line 2052
    :cond_0
    :goto_0
    return-void

    .line 2048
    :cond_1
    sget-object v0, Lcom/appsflyer/AdvertisingIdClient;->devKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/appsflyer/AdvertisingIdClient;->devKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2049
    sget-object v0, Lcom/appsflyer/AdvertisingIdClient;->devKey:Ljava/lang/String;

    sget-object v1, Lcom/appsflyer/AdvertisingIdClient;->replacedKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/a;->afLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDevKey(Ljava/lang/String;)V
    .locals 3
    .param p0, "aDevKey"    # Ljava/lang/String;

    .prologue
    .line 2027
    sput-object p0, Lcom/appsflyer/AdvertisingIdClient;->devKey:Ljava/lang/String;

    .line 2029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2031
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 2032
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    if-le v0, v2, :cond_1

    .line 2033
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2031
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2036
    :cond_1
    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 2039
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/AdvertisingIdClient;->replacedKey:Ljava/lang/String;

    .line 2040
    return-void
.end method


# virtual methods
.method public onBecameBackground(Ljava/lang/ref/WeakReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1290
    .local p1, "currentActivity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/app/Activity;>;"
    const-string v0, "onBecameBackground"

    invoke-static {v0}, Lcom/appsflyer/a;->afLog(Ljava/lang/String;)V

    .line 1291
    const-string v0, "callStatsBackground background call"

    invoke-static {v0}, Lcom/appsflyer/a;->afLog(Ljava/lang/String;)V

    .line 1292
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1293
    iget-object v0, p0, Lcom/appsflyer/AdvertisingIdClient;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->access$200(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/ref/WeakReference;)V

    .line 1294
    invoke-static {}, Lcom/appsflyer/h;->getInstance()Lcom/appsflyer/h;

    move-result-object v2

    .line 1295
    invoke-virtual {v2}, Lcom/appsflyer/h;->isRemoteDebuggingEnabledFromServer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1296
    invoke-virtual {v2}, Lcom/appsflyer/h;->stopRemoteDebuggingMode()V

    .line 1297
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1298
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1299
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1300
    invoke-virtual {v2, v3, v0}, Lcom/appsflyer/h;->sendRemoteDebuggingData(Ljava/lang/String;Landroid/content/pm/PackageManager;)V

    .line 1302
    :cond_0
    invoke-virtual {v2}, Lcom/appsflyer/h;->releaseRemoteDebugging()V

    .line 1306
    :goto_0
    return-void

    .line 1304
    :cond_1
    const-string v0, "RD status is OFF"

    invoke-static {v0}, Lcom/appsflyer/a;->afDebugLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBecameForeground(Landroid/app/Activity;)V
    .locals 4
    .param p1, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 1284
    const-string v0, "onBecameForeground"

    invoke-static {v0}, Lcom/appsflyer/a;->afLog(Ljava/lang/String;)V

    .line 1285
    iget-object v0, p0, Lcom/appsflyer/AdvertisingIdClient;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/appsflyer/AppsFlyerLib;->access$002(Lcom/appsflyer/AppsFlyerLib;J)J

    .line 1286
    iget-object v0, p0, Lcom/appsflyer/AdvertisingIdClient;->this$0:Lcom/appsflyer/AppsFlyerLib;

    invoke-static {v0, p1, v1, v1}, Lcom/appsflyer/AppsFlyerLib;->access$100(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 1287
    return-void
.end method
