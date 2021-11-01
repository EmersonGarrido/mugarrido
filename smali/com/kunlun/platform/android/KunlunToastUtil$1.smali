.class final Lcom/kunlun/platform/android/KunlunToastUtil$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic ct:Landroid/content/Context;

.field private final synthetic cu:Ljava/lang/String;

.field private final synthetic cv:I


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunToastUtil$1;->ct:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunToastUtil$1;->cu:Ljava/lang/String;

    iput p3, p0, Lcom/kunlun/platform/android/KunlunToastUtil$1;->cv:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunToastUtil$1;->ct:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunToastUtil$1;->cu:Ljava/lang/String;

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
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bu()Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunToastUtil$1;->ct:Landroid/content/Context;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunToastUtil$1;->cu:Ljava/lang/String;

    iget v3, p0, Lcom/kunlun/platform/android/KunlunToastUtil$1;->cv:I

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunToastUtil;->a(Landroid/widget/Toast;)V

    :goto_1
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bu()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

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

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bu()Landroid/widget/Toast;

    move-result-object v0

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunToastUtil$1;->cu:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->bu()Landroid/widget/Toast;

    move-result-object v0

    iget v2, p0, Lcom/kunlun/platform/android/KunlunToastUtil$1;->cv:I

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setDuration(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
