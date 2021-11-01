.class final Lcom/kunlun/platform/android/KunlunToastUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic ct:Landroid/content/Context;

.field private final synthetic cu:Ljava/lang/String;

.field private final synthetic cw:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunToastUtil$2;->ct:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunToastUtil$2;->cw:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunToastUtil$2;->cu:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunToastUtil$2;->ct:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunToastUtil$2;->cw:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunToastUtil$2;->cu:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bt()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, ""

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunToastUtil$2;->cw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bv()Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bv()Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->a(Lcom/kunlun/platform/widget/KunlunProgressDialog;)V

    :cond_2
    new-instance v0, Lcom/kunlun/platform/widget/KunlunProgressDialog;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunToastUtil$2;->ct:Landroid/content/Context;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunToastUtil$2;->cu:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/kunlun/platform/widget/KunlunProgressDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->a(Lcom/kunlun/platform/widget/KunlunProgressDialog;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bv()Lcom/kunlun/platform/widget/KunlunProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunProgressDialog;->show()V

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

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

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bw()Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bw()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->a(Landroid/app/ProgressDialog;)V

    :cond_4
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunToastUtil$2;->ct:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->a(Landroid/app/ProgressDialog;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bw()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunToastUtil$2;->cw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bw()Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunToastUtil$2;->cu:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bw()Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bw()Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
