.class public Lcom/kunlun/platform/android/KunlunToastUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static cq:Landroid/widget/Toast;

.field private static cr:Landroid/app/ProgressDialog;

.field private static cs:Ljava/lang/Object;

.field public static handler:Landroid/os/Handler;

.field private static kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    sput-object v2, Lcom/kunlun/platform/android/KunlunToastUtil;->cq:Landroid/widget/Toast;

    sput-object v2, Lcom/kunlun/platform/android/KunlunToastUtil;->cr:Landroid/app/ProgressDialog;

    sput-object v2, Lcom/kunlun/platform/android/KunlunToastUtil;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->cs:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/app/ProgressDialog;)V
    .locals 0

    sput-object p0, Lcom/kunlun/platform/android/KunlunToastUtil;->cr:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Landroid/widget/Toast;)V
    .locals 0

    sput-object p0, Lcom/kunlun/platform/android/KunlunToastUtil;->cq:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/widget/KunlunProgressDialog;)V
    .locals 0

    sput-object p0, Lcom/kunlun/platform/android/KunlunToastUtil;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    return-void
.end method

.method static synthetic bt()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->cs:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic bu()Landroid/widget/Toast;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->cq:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic bv()Lcom/kunlun/platform/widget/KunlunProgressDialog;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    return-object v0
.end method

.method static synthetic bw()Landroid/app/ProgressDialog;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->cr:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static hideProgressDialog()V
    .locals 2

    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->cr:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->cr:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->cr:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->kpd:Lcom/kunlun/platform/widget/KunlunProgressDialog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    :cond_2
    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/KunlunToastUtil$3;

    invoke-direct {v1}, Lcom/kunlun/platform/android/KunlunToastUtil$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/KunlunToastUtil$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunToastUtil$1;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    :cond_0
    sget-object v0, Lcom/kunlun/platform/android/KunlunToastUtil;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/kunlun/platform/android/KunlunToastUtil$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/kunlun/platform/android/KunlunToastUtil$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
