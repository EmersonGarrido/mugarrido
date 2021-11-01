.class public Lcom/google/ads/conversiontracking/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:J

.field private static final b:J

.field private static c:Ljava/lang/Object;

.field private static d:Lcom/google/ads/conversiontracking/c;


# instance fields
.field private final e:J

.field private final f:J

.field private final g:Lcom/google/ads/conversiontracking/b;

.field private final h:Landroid/content/Context;

.field private final i:Landroid/os/HandlerThread;

.field private final j:Ljava/lang/Object;

.field private final k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Landroid/content/SharedPreferences;

.field private n:J

.field private o:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xe10

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/ads/conversiontracking/c;->a:J

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/ads/conversiontracking/c;->b:J

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/ads/conversiontracking/c;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;JJLcom/google/ads/conversiontracking/b;)V
    .locals 4

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/ads/conversiontracking/c;->j:Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lcom/google/ads/conversiontracking/c;->h:Landroid/content/Context;

    .line 99
    iput-wide p2, p0, Lcom/google/ads/conversiontracking/c;->f:J

    .line 100
    iput-wide p4, p0, Lcom/google/ads/conversiontracking/c;->e:J

    .line 101
    iput-object p6, p0, Lcom/google/ads/conversiontracking/c;->g:Lcom/google/ads/conversiontracking/b;

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/conversiontracking/c;->l:Ljava/util/Map;

    .line 104
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/ads/conversiontracking/c;->k:Ljava/util/Set;

    .line 106
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->h:Landroid/content/Context;

    const-string v1, "google_auto_usage"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/conversiontracking/c;->m:Landroid/content/SharedPreferences;

    .line 107
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/c;->d()V

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Google Conversion SDK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/google/ads/conversiontracking/c;->i:Landroid/os/HandlerThread;

    .line 110
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->i:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/ads/conversiontracking/c;->o:Landroid/os/Handler;

    .line 112
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/c;->c()V

    .line 113
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/ads/conversiontracking/c;
    .locals 8

    .prologue
    .line 65
    sget-object v7, Lcom/google/ads/conversiontracking/c;->c:Ljava/lang/Object;

    monitor-enter v7

    .line 66
    :try_start_0
    sget-object v0, Lcom/google/ads/conversiontracking/c;->d:Lcom/google/ads/conversiontracking/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 68
    :try_start_1
    new-instance v0, Lcom/google/ads/conversiontracking/c;

    sget-wide v2, Lcom/google/ads/conversiontracking/c;->a:J

    sget-wide v4, Lcom/google/ads/conversiontracking/c;->b:J

    new-instance v6, Lcom/google/ads/conversiontracking/b;

    invoke-direct {v6, p0}, Lcom/google/ads/conversiontracking/b;-><init>(Landroid/content/Context;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/ads/conversiontracking/c;-><init>(Landroid/content/Context;JJLcom/google/ads/conversiontracking/b;)V

    sput-object v0, Lcom/google/ads/conversiontracking/c;->d:Lcom/google/ads/conversiontracking/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 78
    sget-object v0, Lcom/google/ads/conversiontracking/c;->d:Lcom/google/ads/conversiontracking/c;

    return-object v0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    :try_start_3
    const-string v1, "GoogleConversionReporter"

    const-string v2, "Error starting automated usage thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private b()J
    .locals 6

    .prologue
    .line 206
    invoke-static {}, Lcom/google/ads/conversiontracking/g;->a()J

    move-result-wide v2

    .line 207
    const-wide/16 v0, 0x0

    .line 208
    iget-wide v4, p0, Lcom/google/ads/conversiontracking/c;->n:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 209
    iget-wide v0, p0, Lcom/google/ads/conversiontracking/c;->n:J

    sub-long v0, v2, v0

    iget-wide v2, p0, Lcom/google/ads/conversiontracking/c;->f:J

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 211
    :cond_0
    iget-wide v2, p0, Lcom/google/ads/conversiontracking/c;->n:J

    iget-wide v4, p0, Lcom/google/ads/conversiontracking/c;->f:J

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private b(J)V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->m:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "end_of_interval"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    iput-wide p1, p0, Lcom/google/ads/conversiontracking/c;->n:J

    .line 240
    return-void
.end method

.method private c()V
    .locals 6

    .prologue
    .line 215
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/c;->b()J

    move-result-wide v2

    invoke-static {}, Lcom/google/ads/conversiontracking/g;->a()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 217
    invoke-virtual {p0, v2, v3}, Lcom/google/ads/conversiontracking/c;->a(J)V

    .line 218
    monitor-exit v1

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 231
    iget-wide v0, p0, Lcom/google/ads/conversiontracking/c;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 232
    invoke-static {}, Lcom/google/ads/conversiontracking/g;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/ads/conversiontracking/c;->f:J

    add-long/2addr v0, v2

    .line 233
    iget-object v2, p0, Lcom/google/ads/conversiontracking/c;->m:Landroid/content/SharedPreferences;

    const-string v3, "end_of_interval"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/conversiontracking/c;->n:J

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(J)V
    .locals 3

    .prologue
    .line 222
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->o:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->o:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->o:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    :cond_0
    monitor-exit v1

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 120
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 122
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    invoke-virtual {p0, p1}, Lcom/google/ads/conversiontracking/c;->c(Ljava/lang/String;)V

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected a()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 247
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->h:Landroid/content/Context;

    const-string v1, "activity"

    .line 248
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 249
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->h:Landroid/content/Context;

    const-string v2, "keyguard"

    .line 250
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 251
    iget-object v2, p0, Lcom/google/ads/conversiontracking/c;->h:Landroid/content/Context;

    const-string v4, "power"

    .line 252
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 255
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 257
    if-nez v0, :cond_0

    move v0, v3

    .line 272
    :goto_0
    return v0

    .line 261
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 262
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v6, :cond_1

    .line 263
    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v0, v5, :cond_1

    .line 266
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    .line 272
    goto :goto_0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 131
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    monitor-exit v1

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 142
    iget-object v1, p0, Lcom/google/ads/conversiontracking/c;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->k:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->l:Ljava/util/Map;

    .line 144
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    :cond_0
    monitor-exit v1

    .line 151
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->g:Lcom/google/ads/conversiontracking/b;

    iget-wide v2, p0, Lcom/google/ads/conversiontracking/c;->n:J

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/ads/conversiontracking/b;->a(Ljava/lang/String;J)V

    .line 149
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->l:Ljava/util/Map;

    iget-wide v2, p0, Lcom/google/ads/conversiontracking/c;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/google/ads/conversiontracking/c;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-wide v0, p0, Lcom/google/ads/conversiontracking/c;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/google/ads/conversiontracking/c;->a(J)V

    .line 198
    :goto_0
    return-void

    .line 184
    :cond_0
    iget-object v3, p0, Lcom/google/ads/conversiontracking/c;->j:Ljava/lang/Object;

    monitor-enter v3

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 189
    iget-wide v8, p0, Lcom/google/ads/conversiontracking/c;->n:J

    cmp-long v2, v6, v8

    if-gez v2, :cond_1

    .line 190
    iget-wide v6, p0, Lcom/google/ads/conversiontracking/c;->n:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/google/ads/conversiontracking/c;->g:Lcom/google/ads/conversiontracking/b;

    iget-wide v6, p0, Lcom/google/ads/conversiontracking/c;->n:J

    invoke-virtual {v0, v1, v6, v7}, Lcom/google/ads/conversiontracking/b;->a(Ljava/lang/String;J)V

    goto :goto_1

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/c;->c()V

    .line 197
    invoke-direct {p0}, Lcom/google/ads/conversiontracking/c;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/conversiontracking/c;->b(J)V

    goto :goto_0
.end method
