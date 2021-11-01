.class public Lcom/kunlun/platform/android/KunlunOrderListUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/platform/android/KunlunOrderListUtil$a;
    }
.end annotation


# static fields
.field private static final bq:[I

.field private static bs:Lcom/kunlun/platform/android/KunlunOrderListUtil;

.field private static key:I


# instance fields
.field private br:Ljava/io/File;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->bq:[I

    const/4 v0, 0x0

    sput v0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->key:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1388
        0x1388
        0x2710
        0x2710
        0x2710
        0x4e20
        0x4e20
        0x9c40
        0xea60
        0x1d4c0
        0x493e0
        0x927c0
        0x124f80
        0x1b7740
    .end array-data
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->timer:Ljava/util/Timer;

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->br:Ljava/io/File;

    return-void
.end method

.method private declared-synchronized a(Landroid/os/Bundle;)Ljava/io/File;
    .locals 6

    monitor-enter p0

    :try_start_0
    const-string v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "user_id"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "user_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "user_name"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "rid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "rid"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "KunlunOrderListUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":saveOrderDate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/io/File;

    const-string v1, "filePath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v0, "time"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->br:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->writeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "KunlunOrderListUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":writeFile:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v1, "ac_id"

    const-string v2, "acid"

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pid"

    const-string v2, "pid"

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "package"

    const-string v2, "package"

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pay_platform"

    const-string v2, "domain"

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uniqueIdentifier"

    const-string v2, "openUDID"

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "filePath"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v2, 0x0

    :try_start_2
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v2

    :goto_2
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x240c8400

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunOrderListUtil;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->br:Ljava/io/File;

    return-object v0
.end method

.method static synthetic b(Lcom/kunlun/platform/android/KunlunOrderListUtil;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->timer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic b(I)V
    .locals 0

    sput p0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->key:I

    return-void
.end method

.method static synthetic bg()I
    .locals 1

    sget v0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->key:I

    return v0
.end method

.method static synthetic bh()[I
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->bq:[I

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/kunlun/platform/android/KunlunOrderListUtil;
    .locals 4

    const-class v1, Lcom/kunlun/platform/android/KunlunOrderListUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->bs:Lcom/kunlun/platform/android/KunlunOrderListUtil;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/kunlun_order_list/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Lcom/kunlun/platform/android/KunlunOrderListUtil;

    invoke-direct {v2, v0}, Lcom/kunlun/platform/android/KunlunOrderListUtil;-><init>(Ljava/io/File;)V

    sput-object v2, Lcom/kunlun/platform/android/KunlunOrderListUtil;->bs:Lcom/kunlun/platform/android/KunlunOrderListUtil;

    :cond_0
    sget-object v0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->bs:Lcom/kunlun/platform/android/KunlunOrderListUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/io/File;)Lcom/kunlun/platform/android/KunlunOrderListUtil;
    .locals 2

    const-class v1, Lcom/kunlun/platform/android/KunlunOrderListUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->bs:Lcom/kunlun/platform/android/KunlunOrderListUtil;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/kunlun/platform/android/KunlunOrderListUtil;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/KunlunOrderListUtil;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->bs:Lcom/kunlun/platform/android/KunlunOrderListUtil;

    :cond_0
    sget-object v0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->bs:Lcom/kunlun/platform/android/KunlunOrderListUtil;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public doUnFinishedPurchase()V
    .locals 6

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->timer:Ljava/util/Timer;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->timer:Ljava/util/Timer;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->timer:Ljava/util/Timer;

    new-instance v2, Lcom/kunlun/platform/android/KunlunOrderListUtil$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/kunlun/platform/android/KunlunOrderListUtil$a;-><init>(Lcom/kunlun/platform/android/KunlunOrderListUtil;B)V

    sget-object v3, Lcom/kunlun/platform/android/KunlunOrderListUtil;->bq:[I

    const/4 v4, 0x0

    sput v4, Lcom/kunlun/platform/android/KunlunOrderListUtil;->key:I

    aget v3, v3, v4

    int-to-long v4, v3

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getOrderListId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil;->br:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_2

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    aget-object v4, v2, v0

    invoke-static {v4}, Lcom/kunlun/platform/android/KunlunUtil;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kunlun/platform/android/KunlunUtil;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "user_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "rid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    const-string v5, "order_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public platFormPurchase(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 10

    const/4 v7, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v0, "-1:Parameters is null."

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "channel"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "-2:Channel is null."

    goto :goto_0

    :cond_1
    const-string v1, "ucpay"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v0

    :goto_1
    if-nez v1, :cond_3

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "user_id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v0, "-3:UserId is empty."

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/kunlun/platform/android/KunlunConf;->getConf()Lcom/kunlun/platform/android/KunlunConf;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kunlun/platform/android/KunlunConf;->I()Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "location"

    aput-object v6, v5, v0

    invoke-virtual {v4, v5}, Lcom/kunlun/platform/android/KunlunConf$T;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&channel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v0, "-4:Url is empty."

    goto :goto_0

    :cond_4
    const-string v4, "googleplay"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-array v4, v7, [Ljava/lang/String;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunConf;->getConf()Lcom/kunlun/platform/android/KunlunConf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kunlun/platform/android/KunlunConf;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const-string v0, "/payinterfacev3.php"

    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    const-string v4, "naver"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-array v4, v7, [Ljava/lang/String;

    aput-object v3, v4, v0

    const-string v0, "/payinterface.php"

    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string v4, "kt"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-array v4, v7, [Ljava/lang/String;

    aput-object v3, v4, v0

    const-string v0, "/payinterface2047.php"

    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_7
    const-string v4, "kakao"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    new-array v4, v7, [Ljava/lang/String;

    aput-object v3, v4, v0

    const-string v0, "/payinterface.php"

    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_8
    const-string v4, "tstore"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    new-array v4, v7, [Ljava/lang/String;

    aput-object v3, v4, v0

    const-string v0, "/payinterface.php"

    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_9
    const-string v4, "twmobile"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    new-array v4, v7, [Ljava/lang/String;

    aput-object v3, v4, v0

    const-string v0, "/payinterfacev11816.php"

    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_a
    const-string v4, "amazon"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-array v4, v7, [Ljava/lang/String;

    aput-object v3, v4, v0

    const-string v0, "/payinterface.php"

    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_b
    const-string v4, "ucpay"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    new-array v4, v7, [Ljava/lang/String;

    aput-object v3, v4, v0

    const-string v0, "/payinterface.php"

    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_c
    const-string v4, "qihoodanji"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    new-array v4, v7, [Ljava/lang/String;

    aput-object v3, v4, v0

    const-string v0, "/payinterface.php"

    aput-object v0, v4, v2

    invoke-static {v4}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_d
    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->getChannel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "/sms/payinterface.php"

    aput-object v4, v2, v0

    invoke-static {v2}, Lcom/kunlun/platform/android/Kunlun;->getPayInterfaceUrl([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_e
    const-string v0, "https://pay-region.kunlun.com/checkorder.php"

    goto/16 :goto_2

    :cond_f
    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->a(Landroid/os/Bundle;)Ljava/io/File;

    move-result-object v2

    const-string v4, "https://pay-region.kunlun.com/checkorder.php"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_10

    :try_start_0
    const-string v4, "time"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    const-wide/32 v6, 0x6ddd00

    cmp-long v4, v4, v6

    if-lez v4, :cond_10

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_10
    :goto_3
    :try_start_1
    const-string v4, "POST"

    const-string v5, ""

    invoke-static {v0, v4, p1, v5}, Lcom/kunlun/platform/android/KunlunUtil;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "retcode"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "retmsg"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v5, :cond_13

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_11

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string v7, "KunlunOrderListUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, ":delete file:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    sget-object v2, Lcom/kunlun/platform/android/Kunlun;->k:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    if-eqz v2, :cond_12

    if-nez v1, :cond_12

    sget-object v2, Lcom/kunlun/platform/android/Kunlun;->k:Lcom/kunlun/platform/android/Kunlun$PurchaseListener;

    const/4 v7, 0x0

    invoke-interface {v2, v7, v0}, Lcom/kunlun/platform/android/Kunlun$PurchaseListener;->onComplete(ILjava/lang/String;)V

    :cond_12
    if-eqz v4, :cond_13

    if-nez v1, :cond_13

    const-string v0, "pay_coins"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "history_id"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/kunlun/platform/android/KunlunSdkTracker;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "KunlunOrderListUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":platFormPurchase error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-5:Error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".Please wait."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :catch_1
    move-exception v4

    goto/16 :goto_3
.end method

.method public platFormPurchase(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 1

    new-instance v0, Lcom/kunlun/platform/android/KunlunOrderListUtil$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunOrderListUtil$1;-><init>(Lcom/kunlun/platform/android/KunlunOrderListUtil;Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunOrderListUtil$1;->start()V

    return-void
.end method
