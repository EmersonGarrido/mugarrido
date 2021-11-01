.class final Lcom/kunlun/platform/android/KunlunSmsProxy$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunSmsProxy;->a(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic ck:Z

.field private final synthetic cl:Lcom/kunlun/platform/android/Kunlun$initCallback;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/os/Looper;ZLandroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 0

    iput-boolean p2, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$1;->ck:Z

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$1;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$1;->cl:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->bm()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$1;->ck:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunSmsProxy;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunSmsProxy;->h(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->bn()V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->bo()Lcom/kunlun/platform/android/KunlunSmsProxy;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->bo()Lcom/kunlun/platform/android/KunlunSmsProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$1;->cl:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunSmsProxy;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    :cond_2
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    :goto_0
    return-void

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunSmsProxy$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunSmsProxy;->m(Landroid/content/Context;)V

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    add-int/lit8 v0, v0, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/kunlun/platform/android/KunlunSmsProxy$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
