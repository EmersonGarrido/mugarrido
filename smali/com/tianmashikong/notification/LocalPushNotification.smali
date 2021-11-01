.class public Lcom/tianmashikong/notification/LocalPushNotification;
.super Ljava/lang/Object;
.source "LocalPushNotification.java"


# static fields
.field public static mDebug:Z = false

.field private static myContext:Landroid/content/Context; = null

.field public static final notiFileName:Ljava/lang/String; = "local_notification.dat"


# instance fields
.field private className:Ljava/lang/String;

.field private filesDir:Ljava/io/File;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field mNotifications:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tianmashikong/notification/TianMaNotification;",
            ">;"
        }
    .end annotation
.end field

.field private pkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tianmashikong/notification/LocalPushNotification;->mDebug:Z

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/tianmashikong/notification/LocalPushNotification;->myContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mAlarmManager:Landroid/app/AlarmManager;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/notification/LocalPushNotification;->className:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/notification/LocalPushNotification;->pkgName:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/tianmashikong/notification/LocalPushNotification;->filesDir:Ljava/io/File;

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mNotifications:Ljava/util/Hashtable;

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/notification/LocalPushNotification;->className:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/notification/LocalPushNotification;->pkgName:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/notification/LocalPushNotification;->filesDir:Ljava/io/File;

    .line 44
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tianmashikong/notification/LocalPushNotification;->myContext:Landroid/content/Context;

    .line 45
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mAlarmManager:Landroid/app/AlarmManager;

    .line 46
    invoke-direct {p0}, Lcom/tianmashikong/notification/LocalPushNotification;->load()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)V
    .locals 3
    .param p1, "clazName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "filesDir"    # Ljava/io/File;
    .param p4, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mAlarmManager:Landroid/app/AlarmManager;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/notification/LocalPushNotification;->className:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/notification/LocalPushNotification;->pkgName:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/tianmashikong/notification/LocalPushNotification;->filesDir:Ljava/io/File;

    .line 36
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mNotifications:Ljava/util/Hashtable;

    .line 51
    iput-object p1, p0, Lcom/tianmashikong/notification/LocalPushNotification;->className:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lcom/tianmashikong/notification/LocalPushNotification;->pkgName:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lcom/tianmashikong/notification/LocalPushNotification;->filesDir:Ljava/io/File;

    .line 54
    sput-object p4, Lcom/tianmashikong/notification/LocalPushNotification;->myContext:Landroid/content/Context;

    .line 55
    const-string v0, "tmsk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "classname="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pkname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v0, "alarm"

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mAlarmManager:Landroid/app/AlarmManager;

    .line 57
    const-string v0, "tmsk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mAlarmManager="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-direct {p0}, Lcom/tianmashikong/notification/LocalPushNotification;->load()V

    .line 59
    return-void
.end method

.method private cancelNotification(Ljava/lang/String;)V
    .locals 6
    .param p1, "todokey"    # Ljava/lang/String;

    .prologue
    .line 301
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    sget-object v3, Lcom/tianmashikong/notification/LocalPushNotification;->myContext:Landroid/content/Context;

    const-class v4, Lcom/tianmashikong/notification/AlarmReceiver;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    sget-object v3, Lcom/tianmashikong/notification/LocalPushNotification;->myContext:Landroid/content/Context;

    .line 305
    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    .line 304
    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 306
    .local v2, "pendIntent":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pendIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMills(IIIIII)J
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I

    .prologue
    const/4 v2, -0x1

    .line 541
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 542
    .local v0, "date":Ljava/util/Date;
    if-eq v2, p0, :cond_0

    .line 544
    const/16 v1, 0x76c

    if-le p0, v1, :cond_6

    .line 546
    add-int/lit16 v1, p0, -0x76c

    invoke-virtual {v0, v1}, Ljava/util/Date;->setYear(I)V

    .line 554
    :cond_0
    :goto_0
    if-eq v2, p1, :cond_1

    .line 555
    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/Date;->setMonth(I)V

    .line 557
    :cond_1
    if-eq v2, p2, :cond_2

    .line 558
    invoke-virtual {v0, p2}, Ljava/util/Date;->setDate(I)V

    .line 560
    :cond_2
    if-eq v2, p3, :cond_3

    .line 561
    invoke-virtual {v0, p3}, Ljava/util/Date;->setHours(I)V

    .line 563
    :cond_3
    if-eq v2, p4, :cond_4

    .line 564
    invoke-virtual {v0, p4}, Ljava/util/Date;->setMinutes(I)V

    .line 566
    :cond_4
    if-eq v2, p5, :cond_5

    .line 567
    invoke-virtual {v0, p5}, Ljava/util/Date;->setSeconds(I)V

    .line 569
    :cond_5
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2

    .line 550
    :cond_6
    invoke-virtual {v0, p0}, Ljava/util/Date;->setYear(I)V

    goto :goto_0
.end method

.method public static getNextAvalibleTime(IIIIIII)J
    .locals 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "interval"    # I

    .prologue
    .line 575
    invoke-static/range {p0 .. p5}, Lcom/tianmashikong/notification/LocalPushNotification;->getMills(IIIIII)J

    move-result-wide v2

    .line 576
    .local v2, "trigger":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 578
    .local v0, "curTime":J
    :goto_0
    cmp-long v4, v2, v0

    if-ltz v4, :cond_0

    .line 583
    return-wide v2

    .line 580
    :cond_0
    int-to-long v4, p6

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method private load()V
    .locals 9

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 352
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/tianmashikong/notification/LocalPushNotification;->filesDir:Ljava/io/File;

    const-string v8, "local_notification.dat"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 355
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 368
    if-eqz v1, :cond_0

    .line 370
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 372
    :cond_0
    :goto_1
    const/4 v0, 0x0

    .line 374
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :goto_2
    return-void

    .line 357
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "i":I
    .restart local v3    # "n":I
    :cond_1
    :try_start_3
    new-instance v4, Lcom/tianmashikong/notification/TianMaNotification;

    invoke-direct {v4}, Lcom/tianmashikong/notification/TianMaNotification;-><init>()V

    .line 358
    .local v4, "notification":Lcom/tianmashikong/notification/TianMaNotification;
    invoke-virtual {v4, v1}, Lcom/tianmashikong/notification/TianMaNotification;->readFrom(Ljava/io/DataInputStream;)V

    .line 359
    iget-object v5, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mNotifications:Ljava/util/Hashtable;

    iget-object v6, v4, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 355
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "notification":Lcom/tianmashikong/notification/TianMaNotification;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :catch_0
    move-exception v5

    .line 368
    :goto_3
    if-eqz v0, :cond_2

    .line 370
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 372
    :cond_2
    :goto_4
    const/4 v0, 0x0

    goto :goto_2

    .line 367
    :catchall_0
    move-exception v5

    .line 368
    :goto_5
    if-eqz v0, :cond_3

    .line 370
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 372
    :cond_3
    :goto_6
    const/4 v0, 0x0

    .line 373
    throw v5

    .line 370
    :catch_1
    move-exception v5

    goto :goto_4

    :catch_2
    move-exception v6

    goto :goto_6

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "i":I
    .restart local v3    # "n":I
    :catch_3
    move-exception v5

    goto :goto_1

    .line 367
    .end local v2    # "i":I
    .end local v3    # "n":I
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_5

    .line 362
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_4
    move-exception v5

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_3
.end method

.method public static loadEx(Ljava/io/File;Ljava/util/Hashtable;)V
    .locals 8
    .param p0, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tianmashikong/notification/TianMaNotification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "notifications":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/tianmashikong/notification/TianMaNotification;>;"
    const/4 v0, 0x0

    .line 422
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    const-string v7, "local_notification.dat"

    invoke-direct {v6, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    .line 424
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 437
    if-eqz v1, :cond_0

    .line 439
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 441
    :cond_0
    :goto_1
    const/4 v0, 0x0

    .line 443
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :goto_2
    return-void

    .line 426
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "i":I
    .restart local v3    # "n":I
    :cond_1
    :try_start_3
    new-instance v4, Lcom/tianmashikong/notification/TianMaNotification;

    invoke-direct {v4}, Lcom/tianmashikong/notification/TianMaNotification;-><init>()V

    .line 427
    .local v4, "notification":Lcom/tianmashikong/notification/TianMaNotification;
    invoke-virtual {v4, v1}, Lcom/tianmashikong/notification/TianMaNotification;->readFrom(Ljava/io/DataInputStream;)V

    .line 428
    iget-object v5, v4, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    invoke-virtual {p1, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v2    # "i":I
    .end local v3    # "n":I
    .end local v4    # "notification":Lcom/tianmashikong/notification/TianMaNotification;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :catch_0
    move-exception v5

    .line 437
    :goto_3
    if-eqz v0, :cond_2

    .line 439
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 441
    :cond_2
    :goto_4
    const/4 v0, 0x0

    goto :goto_2

    .line 436
    :catchall_0
    move-exception v5

    .line 437
    :goto_5
    if-eqz v0, :cond_3

    .line 439
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 441
    :cond_3
    :goto_6
    const/4 v0, 0x0

    .line 442
    throw v5

    .line 439
    :catch_1
    move-exception v5

    goto :goto_4

    :catch_2
    move-exception v6

    goto :goto_6

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "i":I
    .restart local v3    # "n":I
    :catch_3
    move-exception v5

    goto :goto_1

    .line 436
    .end local v2    # "i":I
    .end local v3    # "n":I
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_5

    .line 431
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_4
    move-exception v5

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_3
.end method

.method private save()V
    .locals 8

    .prologue
    .line 378
    const/4 v0, 0x0

    .line 382
    .local v0, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/tianmashikong/notification/LocalPushNotification;->filesDir:Ljava/io/File;

    const-string v7, "local_notification.dat"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v4, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mNotifications:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 385
    iget-object v4, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mNotifications:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 386
    .local v2, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/TianMaNotification;>;"
    if-eqz v2, :cond_0

    .line 388
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-nez v4, :cond_2

    .line 394
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 402
    if-eqz v1, :cond_4

    .line 404
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 405
    :goto_1
    const/4 v0, 0x0

    .line 408
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local v2    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/TianMaNotification;>;"
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    :cond_1
    :goto_2
    return-void

    .line 390
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/TianMaNotification;>;"
    :cond_2
    :try_start_3
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tianmashikong/notification/TianMaNotification;

    .line 391
    .local v3, "notification":Lcom/tianmashikong/notification/TianMaNotification;
    invoke-virtual {v3, v1}, Lcom/tianmashikong/notification/TianMaNotification;->writeTo(Ljava/io/DataOutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 396
    .end local v2    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/TianMaNotification;>;"
    .end local v3    # "notification":Lcom/tianmashikong/notification/TianMaNotification;
    :catch_0
    move-exception v4

    move-object v0, v1

    .line 402
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    :goto_3
    if-eqz v0, :cond_1

    .line 404
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 405
    :goto_4
    const/4 v0, 0x0

    goto :goto_2

    .line 401
    :catchall_0
    move-exception v4

    .line 402
    :goto_5
    if-eqz v0, :cond_3

    .line 404
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 405
    :goto_6
    const/4 v0, 0x0

    .line 407
    :cond_3
    throw v4

    .line 404
    :catch_1
    move-exception v4

    goto :goto_4

    :catch_2
    move-exception v5

    goto :goto_6

    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/TianMaNotification;>;"
    :catch_3
    move-exception v4

    goto :goto_1

    .line 401
    .end local v2    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/TianMaNotification;>;"
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    goto :goto_5

    .line 396
    :catch_4
    move-exception v4

    goto :goto_3

    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v2    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/TianMaNotification;>;"
    :cond_4
    move-object v0, v1

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    goto :goto_2
.end method

.method public static scheduleLocal4Reboot(Landroid/content/Context;Ljava/util/Hashtable;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tianmashikong/notification/TianMaNotification;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "notifications":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/tianmashikong/notification/TianMaNotification;>;"
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 450
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {p1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 451
    .local v1, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/TianMaNotification;>;"
    if-eqz v1, :cond_0

    .line 453
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    .line 459
    :cond_0
    return-void

    .line 455
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tianmashikong/notification/TianMaNotification;

    .line 456
    .local v2, "notification":Lcom/tianmashikong/notification/TianMaNotification;
    invoke-static {p0, v0, v2}, Lcom/tianmashikong/notification/LocalPushNotification;->scheduleLocal4RebootInner(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/tianmashikong/notification/TianMaNotification;)V

    goto :goto_0
.end method

.method private static scheduleLocal4RebootInner(Landroid/content/Context;Landroid/app/AlarmManager;Lcom/tianmashikong/notification/TianMaNotification;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmManager"    # Landroid/app/AlarmManager;
    .param p2, "notification"    # Lcom/tianmashikong/notification/TianMaNotification;

    .prologue
    .line 464
    move-object/from16 v0, p2

    iget v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->mode:I

    if-nez v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/tianmashikong/notification/TianMaNotification;->triggerTime:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    .line 466
    sget-boolean v2, Lcom/tianmashikong/notification/LocalPushNotification;->mDebug:Z

    if-eqz v2, :cond_0

    .line 468
    const-string v2, "tianma_notification"

    const-string v3, "scheduleLocal4RebootInner_skip:{interval: %d,todokey:%s,message:%s,desc:%s,userdata:%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 469
    move-object/from16 v0, p2

    iget v0, v0, Lcom/tianmashikong/notification/TianMaNotification;->mInterval:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/tianmashikong/notification/TianMaNotification;->mMessage:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/tianmashikong/notification/TianMaNotification;->mDesc:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v7

    const/4 v7, 0x4

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/tianmashikong/notification/TianMaNotification;->mUserData:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v7

    .line 468
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    move-object/from16 v0, p2

    iget v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->endYear:I

    if-lez v2, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->endMonth:I

    if-lez v2, :cond_2

    .line 476
    move-object/from16 v0, p2

    iget v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->endDay:I

    if-lez v2, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->endHour:I

    if-ltz v2, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->endMinute:I

    if-ltz v2, :cond_2

    move-object/from16 v0, p2

    iget v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->endSecond:I

    if-ltz v2, :cond_2

    .line 478
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 479
    .local v10, "curTime":J
    move-object/from16 v0, p2

    iget v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->endYear:I

    move-object/from16 v0, p2

    iget v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->endMonth:I

    move-object/from16 v0, p2

    iget v4, v0, Lcom/tianmashikong/notification/TianMaNotification;->endDay:I

    .line 480
    move-object/from16 v0, p2

    iget v5, v0, Lcom/tianmashikong/notification/TianMaNotification;->endHour:I

    move-object/from16 v0, p2

    iget v6, v0, Lcom/tianmashikong/notification/TianMaNotification;->endMinute:I

    move-object/from16 v0, p2

    iget v7, v0, Lcom/tianmashikong/notification/TianMaNotification;->endSecond:I

    .line 479
    invoke-static/range {v2 .. v7}, Lcom/tianmashikong/notification/LocalPushNotification;->getMills(IIIIII)J

    move-result-wide v14

    .line 482
    .local v14, "endTime":J
    cmp-long v2, v14, v10

    if-ltz v2, :cond_0

    .line 486
    .end local v10    # "curTime":J
    .end local v14    # "endTime":J
    :cond_2
    sget-boolean v2, Lcom/tianmashikong/notification/LocalPushNotification;->mDebug:Z

    if-eqz v2, :cond_3

    .line 488
    const-string v2, "tianma_notification"

    const-string v3, "scheduleLocal4RebootInner:{interval: %d,todokey:%s,message:%s,desc:%s,userdata:%s"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 489
    move-object/from16 v0, p2

    iget v0, v0, Lcom/tianmashikong/notification/TianMaNotification;->mInterval:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/tianmashikong/notification/TianMaNotification;->mMessage:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v7

    const/4 v7, 0x3

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/tianmashikong/notification/TianMaNotification;->mDesc:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v7

    const/4 v7, 0x4

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/tianmashikong/notification/TianMaNotification;->mUserData:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v6, v7

    .line 488
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_3
    :try_start_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 495
    .local v9, "bundle":Landroid/os/Bundle;
    const-string v2, "todokey"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    const-string v2, "message"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->mMessage:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const-string v2, "desc"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->mDesc:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v2, "userdata"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->mUserData:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v2, "entry"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->entry:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const-string v2, "package"

    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lcom/tianmashikong/notification/LocalPushNotification;->myContext:Landroid/content/Context;

    const-class v3, Lcom/tianmashikong/notification/AlarmReceiver;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 503
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v13, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 504
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    move-object/from16 v0, p0

    invoke-static {v0, v2, v13, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 508
    .local v8, "pendIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p2

    iget v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->mode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 511
    .restart local v10    # "curTime":J
    move-object/from16 v0, p2

    iget-wide v4, v0, Lcom/tianmashikong/notification/TianMaNotification;->triggerTime:J

    .line 513
    .local v4, "triger":J
    :goto_1
    cmp-long v2, v4, v10

    if-ltz v2, :cond_4

    .line 514
    const/4 v3, 0x0

    move-object/from16 v0, p2

    iget v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->mInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v6, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 526
    .end local v4    # "triger":J
    .end local v8    # "pendIntent":Landroid/app/PendingIntent;
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v10    # "curTime":J
    .end local v13    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v12

    .line 528
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 513
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v4    # "triger":J
    .restart local v8    # "pendIntent":Landroid/app/PendingIntent;
    .restart local v9    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "curTime":J
    .restart local v13    # "intent":Landroid/content/Intent;
    :cond_4
    :try_start_1
    move-object/from16 v0, p2

    iget v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->mInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v4, v2

    goto :goto_1

    .line 523
    .end local v4    # "triger":J
    .end local v10    # "curTime":J
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/tianmashikong/notification/TianMaNotification;->triggerTime:J

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public cancelAllLocals()V
    .locals 2

    .prologue
    .line 327
    iget-object v1, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mNotifications:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 328
    .local v0, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/TianMaNotification;>;"
    if-eqz v0, :cond_0

    .line 330
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mNotifications:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    .line 336
    return-void

    .line 332
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tianmashikong/notification/TianMaNotification;

    iget-object v1, v1, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tianmashikong/notification/LocalPushNotification;->cancelNotification(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cancelLocal(Ljava/lang/String;)V
    .locals 5
    .param p1, "todokey"    # Ljava/lang/String;

    .prologue
    .line 313
    sget-boolean v1, Lcom/tianmashikong/notification/LocalPushNotification;->mDebug:Z

    if-eqz v1, :cond_0

    .line 314
    const-string v1, "tianma_notification"

    const-string v2, "cancelLocal:{todokey:%s,"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mNotifications:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tianmashikong/notification/TianMaNotification;

    .line 318
    .local v0, "notification":Lcom/tianmashikong/notification/TianMaNotification;
    if-eqz v0, :cond_1

    .line 320
    invoke-direct {p0, p1}, Lcom/tianmashikong/notification/LocalPushNotification;->cancelNotification(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mNotifications:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    invoke-direct {p0}, Lcom/tianmashikong/notification/LocalPushNotification;->save()V

    .line 324
    :cond_1
    return-void
.end method

.method public free()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tianmashikong/notification/LocalPushNotification;->save()V

    .line 63
    return-void
.end method

.method public scheduleLocal(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 14
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "todokey"    # Ljava/lang/String;
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "desc"    # Ljava/lang/String;
    .param p10, "userdata"    # Ljava/lang/String;
    .param p11, "skipExpire"    # Z

    .prologue
    .line 75
    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/tianmashikong/notification/LocalPushNotification;->cancelLocal(Ljava/lang/String;)V

    .line 77
    invoke-static/range {p1 .. p6}, Lcom/tianmashikong/notification/LocalPushNotification;->getMills(IIIIII)J

    move-result-wide v8

    .line 78
    .local v8, "triggerTime":J
    if-eqz p11, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_0

    .line 134
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-boolean v7, Lcom/tianmashikong/notification/LocalPushNotification;->mDebug:Z

    if-eqz v7, :cond_1

    .line 85
    const-string v7, "scheduleLocal:{triggertime: %d,todokey:%s,message:%s,desc:%s,userdata:%s"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 86
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p7, v10, v11

    const/4 v11, 0x2

    aput-object p8, v10, v11

    const/4 v11, 0x3

    aput-object p9, v10, v11

    const/4 v11, 0x4

    aput-object p10, v10, v11

    .line 85
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 89
    :cond_1
    new-instance v5, Lcom/tianmashikong/notification/TianMaNotification;

    invoke-direct {v5}, Lcom/tianmashikong/notification/TianMaNotification;-><init>()V

    .line 90
    .local v5, "notification":Lcom/tianmashikong/notification/TianMaNotification;
    const/4 v7, 0x0

    iput v7, v5, Lcom/tianmashikong/notification/TianMaNotification;->mode:I

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v8, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v7, v10

    iput v7, v5, Lcom/tianmashikong/notification/TianMaNotification;->mInterval:I

    .line 92
    iput-wide v8, v5, Lcom/tianmashikong/notification/TianMaNotification;->triggerTime:J

    .line 94
    move-object/from16 v0, p7

    iput-object v0, v5, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    .line 95
    move-object/from16 v0, p8

    iput-object v0, v5, Lcom/tianmashikong/notification/TianMaNotification;->mMessage:Ljava/lang/String;

    .line 96
    move-object/from16 v0, p9

    iput-object v0, v5, Lcom/tianmashikong/notification/TianMaNotification;->mDesc:Ljava/lang/String;

    .line 97
    move-object/from16 v0, p10

    iput-object v0, v5, Lcom/tianmashikong/notification/TianMaNotification;->mUserData:Ljava/lang/String;

    .line 101
    iget-object v7, p0, Lcom/tianmashikong/notification/LocalPushNotification;->className:Ljava/lang/String;

    iput-object v7, v5, Lcom/tianmashikong/notification/TianMaNotification;->entry:Ljava/lang/String;

    .line 102
    iget-object v7, p0, Lcom/tianmashikong/notification/LocalPushNotification;->pkgName:Ljava/lang/String;

    iput-object v7, v5, Lcom/tianmashikong/notification/TianMaNotification;->pkg:Ljava/lang/String;

    .line 106
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 107
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v7, "todokey"

    iget-object v10, v5, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    invoke-virtual {v2, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v7, "message"

    iget-object v10, v5, Lcom/tianmashikong/notification/TianMaNotification;->mMessage:Ljava/lang/String;

    invoke-virtual {v2, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v7, "desc"

    iget-object v10, v5, Lcom/tianmashikong/notification/TianMaNotification;->mDesc:Ljava/lang/String;

    invoke-virtual {v2, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const-string v7, "userdata"

    iget-object v10, v5, Lcom/tianmashikong/notification/TianMaNotification;->mUserData:Ljava/lang/String;

    invoke-virtual {v2, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v7, "entry"

    iget-object v10, v5, Lcom/tianmashikong/notification/TianMaNotification;->entry:Ljava/lang/String;

    invoke-virtual {v2, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v7, "package"

    iget-object v10, v5, Lcom/tianmashikong/notification/TianMaNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v7, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v7, "mode"

    iget v10, v5, Lcom/tianmashikong/notification/TianMaNotification;->mode:I

    invoke-virtual {v2, v7, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    new-instance v4, Landroid/content/Intent;

    sget-object v7, Lcom/tianmashikong/notification/LocalPushNotification;->myContext:Landroid/content/Context;

    const-class v10, Lcom/tianmashikong/notification/AlarmReceiver;

    invoke-direct {v4, v7, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 120
    iget-object v7, v5, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    sget-object v7, Lcom/tianmashikong/notification/LocalPushNotification;->myContext:Landroid/content/Context;

    .line 123
    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    .line 122
    invoke-static {v7, v10, v4, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 125
    .local v6, "pendIntent":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v10, 0x0

    iget-wide v12, v5, Lcom/tianmashikong/notification/TianMaNotification;->triggerTime:J

    invoke-virtual {v7, v10, v12, v13, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 126
    iget-object v7, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mNotifications:Ljava/util/Hashtable;

    iget-object v10, v5, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    invoke-virtual {v7, v10, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-direct {p0}, Lcom/tianmashikong/notification/LocalPushNotification;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 130
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "pendIntent":Landroid/app/PendingIntent;
    :catch_0
    move-exception v3

    .line 132
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public scheduleLocal(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "interval"    # I
    .param p2, "todokey"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;
    .param p5, "userdata"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 139
    invoke-virtual {p0, p2}, Lcom/tianmashikong/notification/LocalPushNotification;->cancelLocal(Ljava/lang/String;)V

    .line 140
    sget-boolean v5, Lcom/tianmashikong/notification/LocalPushNotification;->mDebug:Z

    if-eqz v5, :cond_0

    .line 142
    const-string v5, "tianma_notification"

    const-string v6, "scheduleLocal:{interval: %d,todokey:%s,message:%s,desc:%s,userdata:%s"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    .line 143
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    aput-object p2, v7, v8

    const/4 v8, 0x2

    aput-object p3, v7, v8

    const/4 v8, 0x3

    aput-object p4, v7, v8

    const/4 v8, 0x4

    aput-object p5, v7, v8

    .line 142
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    invoke-static {v9, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 148
    new-instance v3, Lcom/tianmashikong/notification/TianMaNotification;

    invoke-direct {v3}, Lcom/tianmashikong/notification/TianMaNotification;-><init>()V

    .line 149
    .local v3, "notification":Lcom/tianmashikong/notification/TianMaNotification;
    iput v9, v3, Lcom/tianmashikong/notification/TianMaNotification;->mode:I

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    mul-int/lit16 v5, p1, 0x3e8

    int-to-long v8, v5

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/tianmashikong/notification/TianMaNotification;->triggerTime:J

    .line 152
    iput p1, v3, Lcom/tianmashikong/notification/TianMaNotification;->mInterval:I

    .line 153
    iput-object p2, v3, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    .line 154
    iput-object p3, v3, Lcom/tianmashikong/notification/TianMaNotification;->mMessage:Ljava/lang/String;

    .line 155
    iput-object p4, v3, Lcom/tianmashikong/notification/TianMaNotification;->mDesc:Ljava/lang/String;

    .line 156
    iput-object p5, v3, Lcom/tianmashikong/notification/TianMaNotification;->mUserData:Ljava/lang/String;

    .line 160
    iget-object v5, p0, Lcom/tianmashikong/notification/LocalPushNotification;->className:Ljava/lang/String;

    iput-object v5, v3, Lcom/tianmashikong/notification/TianMaNotification;->entry:Ljava/lang/String;

    .line 161
    iget-object v5, p0, Lcom/tianmashikong/notification/LocalPushNotification;->pkgName:Ljava/lang/String;

    iput-object v5, v3, Lcom/tianmashikong/notification/TianMaNotification;->pkg:Ljava/lang/String;

    .line 165
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "todokey"

    iget-object v6, v3, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v5, "message"

    iget-object v6, v3, Lcom/tianmashikong/notification/TianMaNotification;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v5, "desc"

    iget-object v6, v3, Lcom/tianmashikong/notification/TianMaNotification;->mDesc:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v5, "userdata"

    iget-object v6, v3, Lcom/tianmashikong/notification/TianMaNotification;->mUserData:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v5, "entry"

    iget-object v6, v3, Lcom/tianmashikong/notification/TianMaNotification;->entry:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v5, "package"

    iget-object v6, v3, Lcom/tianmashikong/notification/TianMaNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v5, "mode"

    iget v6, v3, Lcom/tianmashikong/notification/TianMaNotification;->mode:I

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 176
    new-instance v2, Landroid/content/Intent;

    sget-object v5, Lcom/tianmashikong/notification/LocalPushNotification;->myContext:Landroid/content/Context;

    const-class v6, Lcom/tianmashikong/notification/AlarmReceiver;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 179
    iget-object v5, v3, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    sget-object v5, Lcom/tianmashikong/notification/LocalPushNotification;->myContext:Landroid/content/Context;

    .line 182
    const/4 v6, 0x0

    const/high16 v7, 0x8000000

    .line 181
    invoke-static {v5, v6, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 184
    .local v4, "pendIntent":Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v6, 0x0

    iget-wide v8, v3, Lcom/tianmashikong/notification/TianMaNotification;->triggerTime:J

    invoke-virtual {v5, v6, v8, v9, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 185
    iget-object v5, p0, Lcom/tianmashikong/notification/LocalPushNotification;->mNotifications:Ljava/util/Hashtable;

    iget-object v6, v3, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    invoke-virtual {v5, v6, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-direct {p0}, Lcom/tianmashikong/notification/LocalPushNotification;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "pendIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public scheduleLocalRepeat(IIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "interval"    # I
    .param p8, "endYear"    # I
    .param p9, "endMonth"    # I
    .param p10, "endDay"    # I
    .param p11, "endHour"    # I
    .param p12, "endMinute"    # I
    .param p13, "endSecond"    # I
    .param p14, "todokey"    # Ljava/lang/String;
    .param p15, "message"    # Ljava/lang/String;
    .param p16, "desc"    # Ljava/lang/String;
    .param p17, "userdata"    # Ljava/lang/String;

    .prologue
    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Lcom/tianmashikong/notification/LocalPushNotification;->cancelLocal(Ljava/lang/String;)V

    .line 202
    sget-boolean v2, Lcom/tianmashikong/notification/LocalPushNotification;->mDebug:Z

    if-eqz v2, :cond_0

    .line 204
    const-string v2, "tianma_notification"

    const-string v3, "scheduleLocal:{interval: %d,todokey:%s,message:%s,desc:%s,userdata:%s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 205
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p14, v4, v5

    const/4 v5, 0x2

    aput-object p15, v4, v5

    const/4 v5, 0x3

    aput-object p16, v4, v5

    const/4 v5, 0x4

    aput-object p17, v4, v5

    .line 204
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 210
    .local v10, "curTime":J
    if-lez p8, :cond_1

    if-lez p9, :cond_1

    if-lez p10, :cond_1

    if-ltz p11, :cond_1

    if-ltz p12, :cond_1

    if-ltz p13, :cond_1

    .line 212
    invoke-static/range {p8 .. p13}, Lcom/tianmashikong/notification/LocalPushNotification;->getMills(IIIIII)J

    move-result-wide v14

    .line 213
    .local v14, "endTime":J
    cmp-long v2, v14, v10

    if-gez v2, :cond_1

    .line 290
    .end local v14    # "endTime":J
    :goto_0
    return-void

    .line 217
    :cond_1
    new-instance v16, Lcom/tianmashikong/notification/TianMaNotification;

    invoke-direct/range {v16 .. v16}, Lcom/tianmashikong/notification/TianMaNotification;-><init>()V

    .line 218
    .local v16, "notification":Lcom/tianmashikong/notification/TianMaNotification;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->mode:I

    .line 219
    move/from16 v0, p7

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->mInterval:I

    .line 220
    move-object/from16 v0, p14

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    .line 221
    move-object/from16 v0, p15

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->mMessage:Ljava/lang/String;

    .line 222
    move-object/from16 v0, p16

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->mDesc:Ljava/lang/String;

    .line 223
    move-object/from16 v0, p17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->mUserData:Ljava/lang/String;

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tianmashikong/notification/LocalPushNotification;->className:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->entry:Ljava/lang/String;

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tianmashikong/notification/LocalPushNotification;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v16

    iput-object v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->pkg:Ljava/lang/String;

    .line 230
    invoke-static/range {p1 .. p6}, Lcom/tianmashikong/notification/LocalPushNotification;->getMills(IIIIII)J

    move-result-wide v2

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->triggerTime:J

    .line 232
    move/from16 v0, p1

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->year:I

    .line 233
    move/from16 v0, p2

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->month:I

    .line 234
    move/from16 v0, p3

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->day:I

    .line 235
    move/from16 v0, p4

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->hour:I

    .line 236
    move/from16 v0, p5

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->minute:I

    .line 237
    move/from16 v0, p6

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->second:I

    .line 239
    move/from16 v0, p8

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->endYear:I

    .line 240
    move/from16 v0, p9

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->endMonth:I

    .line 241
    move/from16 v0, p10

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->endDay:I

    .line 242
    move/from16 v0, p11

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->endHour:I

    .line 243
    move/from16 v0, p12

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->endMinute:I

    .line 244
    move/from16 v0, p13

    move-object/from16 v1, v16

    iput v0, v1, Lcom/tianmashikong/notification/TianMaNotification;->endSecond:I

    .line 248
    :try_start_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 249
    .local v9, "bundle":Landroid/os/Bundle;
    const-string v2, "todokey"

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v2, "message"

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->mMessage:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v2, "desc"

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->mDesc:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v2, "userdata"

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->mUserData:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v2, "entry"

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->entry:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v2, "package"

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v2, "mode"

    move-object/from16 v0, v16

    iget v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->mode:I

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 257
    const-string v2, "endYear"

    move-object/from16 v0, v16

    iget v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->endYear:I

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 258
    const-string v2, "endMonth"

    move-object/from16 v0, v16

    iget v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->endMonth:I

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    const-string v2, "endDay"

    move-object/from16 v0, v16

    iget v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->endDay:I

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 260
    const-string v2, "endHour"

    move-object/from16 v0, v16

    iget v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->endHour:I

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 261
    const-string v2, "endMinute"

    move-object/from16 v0, v16

    iget v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->endMinute:I

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 262
    const-string v2, "endSecond"

    move-object/from16 v0, v16

    iget v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->endSecond:I

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 265
    new-instance v13, Landroid/content/Intent;

    sget-object v2, Lcom/tianmashikong/notification/LocalPushNotification;->myContext:Landroid/content/Context;

    const-class v3, Lcom/tianmashikong/notification/AlarmReceiver;

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .local v13, "intent":Landroid/content/Intent;
    invoke-virtual {v13, v9}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 267
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    sget-object v2, Lcom/tianmashikong/notification/LocalPushNotification;->myContext:Landroid/content/Context;

    .line 270
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    .line 269
    invoke-static {v2, v3, v13, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 276
    .local v8, "pendIntent":Landroid/app/PendingIntent;
    :goto_1
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->triggerTime:J

    cmp-long v2, v2, v10

    if-ltz v2, :cond_2

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tianmashikong/notification/LocalPushNotification;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/tianmashikong/notification/TianMaNotification;->triggerTime:J

    move-object/from16 v0, v16

    iget v6, v0, Lcom/tianmashikong/notification/TianMaNotification;->mInterval:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tianmashikong/notification/LocalPushNotification;->mNotifications:Ljava/util/Hashtable;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-direct/range {p0 .. p0}, Lcom/tianmashikong/notification/LocalPushNotification;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 286
    .end local v8    # "pendIntent":Landroid/app/PendingIntent;
    .end local v9    # "bundle":Landroid/os/Bundle;
    .end local v13    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v12

    .line 288
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 278
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v8    # "pendIntent":Landroid/app/PendingIntent;
    .restart local v9    # "bundle":Landroid/os/Bundle;
    .restart local v13    # "intent":Landroid/content/Intent;
    :cond_2
    :try_start_1
    move-object/from16 v0, v16

    iget-wide v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->triggerTime:J

    move/from16 v0, p7

    mul-int/lit16 v4, v0, 0x3e8

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, v16

    iput-wide v2, v0, Lcom/tianmashikong/notification/TianMaNotification;->triggerTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
