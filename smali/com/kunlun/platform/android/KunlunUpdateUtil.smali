.class public Lcom/kunlun/platform/android/KunlunUpdateUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/platform/android/KunlunUpdateUtil$UpdateListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static c:Lcom/kunlun/platform/android/KunlunLang;

.field private static cx:Lcom/kunlun/platform/android/KunlunUpdateUtil$UpdateListener;

.field private static mActivity:Landroid/app/Activity;

.field private static mAppId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.kunlun.platform.android.KunlunUpdateUtil"

    sput-object v0, Lcom/kunlun/platform/android/KunlunUpdateUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/kunlun/platform/android/KunlunUpdateUtil;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/KunlunUpdateUtil;->cx:Lcom/kunlun/platform/android/KunlunUpdateUtil$UpdateListener;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/kunlun/platform/android/KunlunUpdateUtil;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/kunlun/platform/android/KunlunUpdateUtil$3;

    invoke-direct {v1, p0, p1}, Lcom/kunlun/platform/android/KunlunUpdateUtil$3;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-object v6, Lcom/kunlun/platform/android/KunlunUpdateUtil;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4;

    move-object v1, p4

    move v2, p1

    move v3, p2

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunUpdateUtil$4;-><init>(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic bA()V
    .locals 2

    sget-object v0, Lcom/kunlun/platform/android/KunlunUpdateUtil;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/kunlun/platform/android/KunlunUpdateUtil$2;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunUpdateUtil$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic bB()Landroid/app/Activity;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunUpdateUtil;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic bC()Lcom/kunlun/platform/android/KunlunLang;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunUpdateUtil;->c:Lcom/kunlun/platform/android/KunlunLang;

    return-object v0
.end method

.method static synthetic bD()V
    .locals 0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bx()V

    return-void
.end method

.method static synthetic bE()Lcom/kunlun/platform/android/KunlunUpdateUtil$UpdateListener;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunUpdateUtil;->cx:Lcom/kunlun/platform/android/KunlunUpdateUtil$UpdateListener;

    return-object v0
.end method

.method private static bx()V
    .locals 3

    sget-object v0, Lcom/kunlun/platform/android/KunlunUpdateUtil;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    sget-object v2, Lcom/kunlun/platform/android/KunlunUpdateUtil;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunLang;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/kunlun/platform/android/KunlunUpdateUtil$1;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunUpdateUtil$1;-><init>()V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunUpdateUtil$1;->start()V

    return-void
.end method

.method static synthetic by()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunUpdateUtil;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bz()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunUpdateUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static checkUpdate(Landroid/app/Activity;Ljava/lang/String;Lcom/kunlun/platform/android/KunlunUpdateUtil$UpdateListener;)V
    .locals 1

    sput-object p0, Lcom/kunlun/platform/android/KunlunUpdateUtil;->mActivity:Landroid/app/Activity;

    sput-object p2, Lcom/kunlun/platform/android/KunlunUpdateUtil;->cx:Lcom/kunlun/platform/android/KunlunUpdateUtil$UpdateListener;

    sput-object p1, Lcom/kunlun/platform/android/KunlunUpdateUtil;->mAppId:Ljava/lang/String;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunLang;->getInstance()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v0

    sput-object v0, Lcom/kunlun/platform/android/KunlunUpdateUtil;->c:Lcom/kunlun/platform/android/KunlunLang;

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bx()V

    return-void
.end method

.method private static k(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    sget-object v0, Lcom/kunlun/platform/android/KunlunUpdateUtil;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v5

    array-length v2, v6

    if-le v0, v2, :cond_1

    array-length v0, v5

    :goto_0
    move v4, v1

    :goto_1
    if-lt v4, v0, :cond_2

    :cond_0
    :goto_2
    move v0, v1

    :goto_3
    return v0

    :cond_1
    array-length v0, v6

    goto :goto_0

    :cond_2
    :try_start_0
    array-length v2, v5

    if-lt v4, v2, :cond_3

    move v3, v1

    :goto_4
    array-length v2, v6

    if-lt v4, v2, :cond_4

    move v2, v1

    :goto_5
    if-le v2, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    aget-object v2, v5, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v3, v2

    goto :goto_4

    :cond_4
    aget-object v2, v6, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_5

    :cond_5
    if-ge v2, v3, :cond_6

    move v0, v1

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method static synthetic l(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->k(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic m(Ljava/lang/String;)V
    .locals 3

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget-object v0, Lcom/kunlun/platform/android/KunlunUpdateUtil;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
