.class final Lcom/appsflyer/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/appsflyer/g;->sID:Ljava/lang/String;

    return-void
.end method

.method private static generateId(Ljava/lang/ref/WeakReference;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized id(Ljava/lang/ref/WeakReference;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const-class v1, Lcom/appsflyer/g;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 30
    sget-object v0, Lcom/appsflyer/g;->sID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :goto_0
    monitor-exit v1

    return-object v0

    .line 32
    :cond_0
    :try_start_1
    sget-object v0, Lcom/appsflyer/g;->sID:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 33
    invoke-static {p0}, Lcom/appsflyer/g;->readInstallationSP(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    sput-object v0, Lcom/appsflyer/g;->sID:Ljava/lang/String;

    .line 50
    :goto_1
    sget-object v0, Lcom/appsflyer/g;->sID:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 51
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v0

    const-string v2, "uid"

    sget-object v3, Lcom/appsflyer/g;->sID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    sget-object v0, Lcom/appsflyer/g;->sID:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    :cond_2
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v3, "AF_INSTALLATION"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    .line 40
    invoke-static {p0}, Lcom/appsflyer/g;->generateId(Ljava/lang/ref/WeakReference;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/g;->sID:Ljava/lang/String;

    .line 45
    :goto_2
    sget-object v0, Lcom/appsflyer/g;->sID:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/appsflyer/g;->writeInstallationSP(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    :try_start_3
    const-string v2, "Error getting AF unique ID"

    invoke-static {v2, v0}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 42
    :cond_3
    :try_start_4
    invoke-static {v2}, Lcom/appsflyer/g;->readInstallationFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/g;->sID:Ljava/lang/String;

    .line 43
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method private static readInstallationFile(Ljava/io/File;)Ljava/lang/String;
    .locals 7
    .param p0, "installation"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 58
    .line 61
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int v0, v4

    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 64
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 70
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 76
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/String;

    if-eqz v0, :cond_2

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 72
    :catch_0
    move-exception v1

    .line 73
    const-string v2, "Exception while trying to close the InstallationFile"

    invoke-static {v2, v1}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 66
    :goto_2
    :try_start_4
    const-string v3, "Exception while reading InstallationFile: "

    invoke-static {v3, v1}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 69
    if-eqz v2, :cond_0

    .line 70
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 72
    :catch_2
    move-exception v1

    .line 73
    const-string v2, "Exception while trying to close the InstallationFile"

    invoke-static {v2, v1}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 68
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 69
    :goto_3
    if-eqz v2, :cond_1

    .line 70
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 74
    :cond_1
    :goto_4
    throw v0

    .line 72
    :catch_3
    move-exception v1

    .line 73
    const-string v2, "Exception while trying to close the InstallationFile"

    invoke-static {v2, v1}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 76
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_1

    .line 68
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 65
    :catch_4
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method private static readInstallationSP(Ljava/lang/ref/WeakReference;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 116
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "appsflyer-data"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    const-string v2, "AF_INSTALLATION"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static writeInstallationSP(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 3
    .param p1, "sId"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CommitPrefEdits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 125
    .local p0, "context":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "appsflyer-data"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 126
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 127
    const-string v1, "AF_INSTALLATION"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 128
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 129
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
