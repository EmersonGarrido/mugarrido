.class final Lcom/kunlun/platform/android/KunlunToastUtil$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bt()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bw()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bw()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->a(Landroid/app/ProgressDialog;)V

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bv()Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bv()Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->a(Lcom/kunlun/platform/widget/KunlunProgressDialog;)V

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
