.class public Lcom/kunlun/platform/android/KunlunUser;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GAME_NAME:Ljava/lang/String; = "gameName"

.field public static final REMARK:Ljava/lang/String; = "remark"

.field public static final ROLE_ID:Ljava/lang/String; = "roleId"

.field public static final ROLE_IS_NEW_CREATE:Ljava/lang/String; = "roleIsNewCreate"

.field public static final ROLE_LEVEL:Ljava/lang/String; = "roleLevel"

.field public static final ROLE_NAME:Ljava/lang/String; = "roleName"

.field public static final ROLE_POWER:Ljava/lang/String; = "rolePower"

.field public static final ROLE_SCORE:Ljava/lang/String; = "roleScore"

.field public static final ROLE_VIP_LEVEL:Ljava/lang/String; = "vipLevel"

.field private static final cM:Lcom/kunlun/platform/android/KunlunUser;


# instance fields
.field private cD:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private cE:I

.field private cF:I

.field private cG:Ljava/lang/String;

.field private cH:Ljava/lang/String;

.field private cI:Ljava/lang/String;

.field private cJ:I

.field private cK:I

.field private cL:I

.field private exitUrl:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field private interval:I

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/kunlun/platform/android/KunlunUser;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunUser;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunUser;->cM:Lcom/kunlun/platform/android/KunlunUser;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunUser;->handler:Landroid/os/Handler;

    iput v3, p0, Lcom/kunlun/platform/android/KunlunUser;->cE:I

    iput v3, p0, Lcom/kunlun/platform/android/KunlunUser;->cF:I

    iput v2, p0, Lcom/kunlun/platform/android/KunlunUser;->cK:I

    iput v2, p0, Lcom/kunlun/platform/android/KunlunUser;->cL:I

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunUser;)I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/KunlunUser;->t:I

    return v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunUser;I)V
    .locals 0

    iput p1, p0, Lcom/kunlun/platform/android/KunlunUser;->t:I

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunUser;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_5

    :cond_0
    :goto_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunUser;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p3}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunUser;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_2
    :goto_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunUser;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p1, p3}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunUser;->isRunning()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_4
    :goto_2
    return-void

    :cond_5
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/app/Notification;->flags:I

    iget v0, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v1, Landroid/app/Notification;->flags:I

    const/4 v0, -0x1

    iput v0, v1, Landroid/app/Notification;->defaults:I

    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->getApplicationIcon(Landroid/content/Context;)I

    move-result v0

    iput v0, v1, Landroid/app/Notification;->icon:I

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "Kunlun.Notification.icon"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "Kunlun.Notification.icon"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Landroid/app/Notification;->icon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/app/Notification;->when:J

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->getLauncherIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    :cond_7
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, p1, p5, p3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iget v2, p0, Lcom/kunlun/platform/android/KunlunUser;->cL:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/kunlun/platform/android/KunlunUser;->cL:I

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget v1, p0, Lcom/kunlun/platform/android/KunlunUser;->cL:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/kunlun/platform/android/KunlunUser;->cL:I

    add-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/KunlunUser$6;

    invoke-direct {v1, p1, p4}, Lcom/kunlun/platform/android/KunlunUser$6;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_a
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/KunlunUser$7;

    invoke-direct {v1, p1, p4}, Lcom/kunlun/platform/android/KunlunUser$7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunUser;Landroid/content/Context;Ljava/lang/String;II)V
    .locals 11

    const/16 v5, 0xa

    const/4 v1, 0x0

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/kunlun/platform/android/KunlunReceiver;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.kunlun.platform.android.UserService.GetMsg"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    const/high16 v3, 0x8000000

    invoke-static {p1, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-string v0, "KunlunUser"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    iget v2, v0, Landroid/text/format/Time;->year:I

    const v3, 0x186a0

    mul-int/2addr v2, v3

    iget v3, v0, Landroid/text/format/Time;->month:I

    mul-int/lit16 v3, v3, 0x3e8

    add-int/2addr v2, v3

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    mul-int/lit8 v0, v0, 0xa

    add-int/2addr v0, v2

    const-string v2, "show_start_times"

    invoke-interface {v7, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ge v8, v0, :cond_1

    move v8, v0

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/2addr v0, p3

    if-lt v8, v0, :cond_2

    if-lt p3, v5, :cond_3

    :cond_2
    if-lt p4, v5, :cond_4

    :cond_3
    invoke-virtual {p0, p1}, Lcom/kunlun/platform/android/KunlunUser;->n(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "start/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/kunlun/platform/android/KunlunUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/index.html"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->getCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    move v9, v1

    :goto_1
    iget-object v10, p0, Lcom/kunlun/platform/android/KunlunUser;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/kunlun/platform/android/KunlunUser$2;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/kunlun/platform/android/KunlunUser$2;-><init>(Lcom/kunlun/platform/android/KunlunUser;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;IILandroid/content/SharedPreferences;I)V

    int-to-long v2, v9

    invoke-virtual {v10, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_5
    const/16 v0, 0x3e8

    move v9, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunUser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunUser;->cI:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/KunlunUser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser;->cI:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/kunlun/platform/android/common/ThreadPool;->INSTANCE:Lcom/kunlun/platform/android/common/ThreadPool;

    new-instance v1, Lcom/kunlun/platform/android/KunlunUser$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/kunlun/platform/android/KunlunUser$3;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/common/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/kunlun/platform/android/KunlunUser;I)V
    .locals 0

    iput p1, p0, Lcom/kunlun/platform/android/KunlunUser;->cJ:I

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/KunlunUser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunUser;->exitUrl:Ljava/lang/String;

    return-void
.end method

.method static bF()Lcom/kunlun/platform/android/KunlunUser;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunUser;->cM:Lcom/kunlun/platform/android/KunlunUser;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/KunlunUser;)I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/KunlunUser;->cJ:I

    return v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/KunlunUser;I)V
    .locals 0

    iput p1, p0, Lcom/kunlun/platform/android/KunlunUser;->cF:I

    return-void
.end method

.method static synthetic c(Lcom/kunlun/platform/android/KunlunUser;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunUser;->cH:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/kunlun/platform/android/KunlunUser;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser;->exitUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/KunlunUser;I)V
    .locals 0

    iput p1, p0, Lcom/kunlun/platform/android/KunlunUser;->cK:I

    return-void
.end method

.method static synthetic e(Lcom/kunlun/platform/android/KunlunUser;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunUser;->cD:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic f(Lcom/kunlun/platform/android/KunlunUser;)I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/KunlunUser;->cK:I

    return v0
.end method

.method static synthetic g(Lcom/kunlun/platform/android/KunlunUser;)Z
    .locals 1

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunUser;->isRunning()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/kunlun/platform/android/KunlunUser;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser;->cD:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private isRunning()Z
    .locals 1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isLogin()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunUser;->cD:Ljava/lang/ref/WeakReference;

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser;->cD:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser;->cD:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method final a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4

    iget v0, p0, Lcom/kunlun/platform/android/KunlunUser;->cF:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser;->cH:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "product_id"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "server_id"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getServerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "user_id"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "user_name"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "klsso"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getKLSSO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_id"

    invoke-static {p1}, Lcom/kunlun/platform/android/Kunlun;->getOpenUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_type"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_token"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sdk_version"

    const-string v2, "5.3.34"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roleId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "role_id"

    const-string v2, "roleId"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roleId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_1
    const-string v1, "roleName"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "role_name"

    const-string v2, "roleName"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roleName"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_2
    const-string v1, "roleLevel"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "role_level_1"

    const-string v2, "roleLevel"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roleLevel"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_3
    const-string v1, "rolePower"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "role_level_2"

    const-string v2, "rolePower"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "rolePower"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_4
    const-string v1, "vipLevel"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "role_level_3"

    const-string v2, "vipLevel"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "vipLevel"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser;->cH:Ljava/lang/String;

    const-string v2, "POST"

    new-instance v3, Lcom/kunlun/platform/android/KunlunUser$8;

    invoke-direct {v3}, Lcom/kunlun/platform/android/KunlunUser$8;-><init>()V

    invoke-static {v1, v0, v2, v3}, Lcom/kunlun/platform/android/Kunlun;->asyncRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V

    goto/16 :goto_0

    :cond_2
    const-string v1, "role_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v1, "role_name"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const-string v1, "role_level_1"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v1, "role_level_2"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    const-string v1, "role_level_3"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method final a(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 4

    const-string v0, "KunlunUser"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "exit_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunUser;->exitUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser;->exitUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exit/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser;->exitUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/index.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->getCacheFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/kunlun/platform/android/KunLunLoginDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/kunlun/platform/android/KunLunLoginDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunUser$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunUser$4;-><init>(Lcom/kunlun/platform/android/KunlunUser;Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V

    invoke-virtual {v1, v0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->showDialog(Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    goto :goto_0
.end method

.method final init(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunConf;->getConf()Lcom/kunlun/platform/android/KunlunConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunConf;->J()Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunlunConf$T;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunUser;->cD:Ljava/lang/ref/WeakReference;

    const-string v0, "KunlunUser"

    invoke-virtual {p1, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "klsso"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getKLSSO()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "klperson"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getKLPERSON()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pid"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "fbappid"

    const-string v3, "fbappid"

    invoke-static {v3}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "fbtoken"

    const-string v3, "fbtoken"

    invoke-static {v3}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    invoke-static {}, Lcom/kunlun/platform/android/KunlunConf;->getConf()Lcom/kunlun/platform/android/KunlunConf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunConf;->J()Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "location,lang,pid,package,v"

    aput-object v3, v2, v6

    const/4 v3, 0x1

    const-string v4, "&devicetype=1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&deviceid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->getLocalAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&t="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "t"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "&klsso="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "klsso"

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/kunlun/platform/android/KunlunConf$T;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kunlun/platform/android/common/ThreadPool;->INSTANCE:Lcom/kunlun/platform/android/common/ThreadPool;

    new-instance v3, Lcom/kunlun/platform/android/KunlunUser$1;

    invoke-direct {v3, p0, v1, p1, v0}, Lcom/kunlun/platform/android/KunlunUser$1;-><init>(Lcom/kunlun/platform/android/KunlunUser;Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v3}, Lcom/kunlun/platform/android/common/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method final n(Landroid/content/Context;)V
    .locals 7

    const/4 v4, 0x0

    const-string v0, "KunlunUser"

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "push_on"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/kunlun/platform/android/KunlunUser;->cE:I

    const-string v1, "push_url"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/KunlunUser;->cG:Ljava/lang/String;

    const-string v1, "interval_time"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/kunlun/platform/android/KunlunUser;->interval:I

    iget v0, p0, Lcom/kunlun/platform/android/KunlunUser;->cE:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser;->cG:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/kunlun/platform/android/KunlunUser;->interval:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v4, p0, Lcom/kunlun/platform/android/KunlunUser;->cK:I

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/kunlun/platform/android/KunlunReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "com.kunlun.platform.android.UserService.GetMsg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_2

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_2
    const/high16 v2, 0x8000000

    invoke-static {p1, v4, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v1, 0x2

    iget v4, p0, Lcom/kunlun/platform/android/KunlunUser;->interval:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    const-string v0, "KunlunUser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startLoopBroadcast:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/kunlun/platform/android/KunlunUser;->interval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method final o(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/kunlun/platform/android/common/ThreadPool;->INSTANCE:Lcom/kunlun/platform/android/common/ThreadPool;

    new-instance v1, Lcom/kunlun/platform/android/KunlunUser$5;

    invoke-direct {v1, p0, p1}, Lcom/kunlun/platform/android/KunlunUser$5;-><init>(Lcom/kunlun/platform/android/KunlunUser;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/common/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
