.class final Lcom/kunlun/platform/android/KunlunDownloadManager$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunlunDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic au:Lcom/kunlun/platform/android/KunlunDownloadManager;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunDownloadManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$1;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$1;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunDownloadManager;->a(Lcom/kunlun/platform/android/KunlunDownloadManager;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "loading"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    if-nez v0, :cond_4

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$1;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunDownloadManager;->b(Lcom/kunlun/platform/android/KunlunDownloadManager;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->requestWindowFeature(I)Z

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$1;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunDownloadManager;->a(Lcom/kunlun/platform/android/KunlunDownloadManager;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "loading"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$1;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunDownloadManager;->c(Lcom/kunlun/platform/android/KunlunDownloadManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$1;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunDownloadManager;->b(Lcom/kunlun/platform/android/KunlunDownloadManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunDownloadManager;->O()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$1;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunDownloadManager;->d(Lcom/kunlun/platform/android/KunlunDownloadManager;)Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    if-gez v0, :cond_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$1;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunDownloadManager;->d(Lcom/kunlun/platform/android/KunlunDownloadManager;)Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    move-result-object v0

    const/16 v1, -0x65

    const-string v2, "download fail"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$DownloadListener;->onChangeStat(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/kunlun/platform/android/download/DownloadInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$1;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunDownloadManager;->a(Lcom/kunlun/platform/android/KunlunDownloadManager;Lcom/kunlun/platform/android/download/DownloadInfo;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$1;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunDownloadManager;->a(Lcom/kunlun/platform/android/KunlunDownloadManager;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
