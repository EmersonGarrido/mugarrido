.class public Lcom/kunlun/platform/android/download/Downloader$MyThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/download/Downloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field private synthetic ed:Lcom/kunlun/platform/android/download/Downloader;


# direct methods
.method public constructor <init>(Lcom/kunlun/platform/android/download/Downloader;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v11, 0x1

    const/4 v1, 0x0

    const-wide/16 v12, 0x0

    const/4 v2, 0x0

    const/4 v10, -0x3

    :try_start_0
    new-instance v8, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v0}, Lcom/kunlun/platform/android/download/Downloader;->c(Lcom/kunlun/platform/android/download/Downloader;)Ljava/io/File;

    move-result-object v0

    const-string v3, "rwd"

    invoke-direct {v8, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v3}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/platform/android/download/DownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v3}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/platform/android/download/DownloadInfo;->getCompeleteSize()J

    move-result-wide v4

    cmp-long v3, v4, v12

    if-gez v3, :cond_0

    iget-object v3, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v3}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/kunlun/platform/android/download/DownloadInfo;->setCompeleteSize(J)V

    :cond_0
    const-string v3, "Range"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v5}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/kunlun/platform/android/download/DownloadInfo;->getCompeleteSize()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v3}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/platform/android/download/DownloadInfo;->getTotalSize()J

    move-result-wide v4

    cmp-long v3, v4, v12

    if-gtz v3, :cond_3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x400

    if-le v3, v6, :cond_1

    if-lez v4, :cond_1

    const-string v6, "application/octet-stream"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "application/vnd.android.package-archive"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    const/4 v3, -0x4

    invoke-static {v1, v3}, Lcom/kunlun/platform/android/download/Downloader;->a(Lcom/kunlun/platform/android/download/Downloader;I)V

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1}, Lcom/kunlun/platform/android/download/Downloader;->a(Lcom/kunlun/platform/android/download/Downloader;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v3}, Lcom/kunlun/platform/android/download/Downloader;->b(Lcom/kunlun/platform/android/download/Downloader;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v0, v10}, Lcom/kunlun/platform/android/download/Downloader;->a(Lcom/kunlun/platform/android/download/Downloader;I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v0}, Lcom/kunlun/platform/android/download/Downloader;->a(Lcom/kunlun/platform/android/download/Downloader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1}, Lcom/kunlun/platform/android/download/Downloader;->b(Lcom/kunlun/platform/android/download/Downloader;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    const/16 v5, 0x1a0

    if-ne v4, v5, :cond_c

    :goto_1
    :try_start_4
    iget-object v3, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v3}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v4}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kunlun/platform/android/download/DownloadInfo;->getCompeleteSize()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/kunlun/platform/android/download/DownloadInfo;->setTotalSize(J)V

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1}, Lcom/kunlun/platform/android/download/Downloader;->e(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadDBHelper;

    move-result-object v1

    iget-object v3, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v3}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/kunlun/platform/android/download/DownloadDBHelper;->saveInfo(Lcom/kunlun/platform/android/download/DownloadInfo;)V

    const-string v1, "com.kunlun.platform.android.download.Downloader"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "saveInfo=>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v4}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v4}, Lcom/kunlun/platform/android/download/Downloader;->b(Lcom/kunlun/platform/android/download/Downloader;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/download/DownloadInfo;->getCompeleteSize()J

    move-result-wide v4

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/download/DownloadInfo;->getTotalSize()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/download/DownloadInfo;->getCompeleteSize()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v7

    const/16 v1, 0x1000

    :try_start_5
    new-array v9, v1, [B

    :cond_4
    :goto_2
    invoke-virtual {v7, v9}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget-object v2, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v2}, Lcom/kunlun/platform/android/download/Downloader;->b(Lcom/kunlun/platform/android/download/Downloader;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-result v2

    if-eq v2, v11, :cond_9

    :cond_5
    move-object v2, v7

    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/download/DownloadInfo;->getCompeleteSize()J

    move-result-wide v4

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/download/DownloadInfo;->getTotalSize()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-ltz v1, :cond_7

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/kunlun/platform/android/download/Downloader;->a(Lcom/kunlun/platform/android/download/Downloader;I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v3}, Lcom/kunlun/platform/android/download/Downloader;->b(Lcom/kunlun/platform/android/download/Downloader;)I

    move-result v3

    iput v3, v1, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v3}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kunlun/platform/android/download/DownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v3}, Lcom/kunlun/platform/android/download/Downloader;->a(Lcom/kunlun/platform/android/download/Downloader;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_7
    if-eqz v2, :cond_8

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_8
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v0, v10}, Lcom/kunlun/platform/android/download/Downloader;->a(Lcom/kunlun/platform/android/download/Downloader;I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v0}, Lcom/kunlun/platform/android/download/Downloader;->a(Lcom/kunlun/platform/android/download/Downloader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1}, Lcom/kunlun/platform/android/download/Downloader;->b(Lcom/kunlun/platform/android/download/Downloader;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v8, v9, v2, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v2}, Lcom/kunlun/platform/android/download/Downloader;->c(Lcom/kunlun/platform/android/download/Downloader;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/kunlun/platform/android/download/DownloadInfo;->setCompeleteSize(J)V

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v2}, Lcom/kunlun/platform/android/download/Downloader;->c(Lcom/kunlun/platform/android/download/Downloader;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/kunlun/platform/android/download/DownloadInfo;->setLastModified(J)V

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1}, Lcom/kunlun/platform/android/download/Downloader;->e(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadDBHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v2}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/download/DownloadInfo;->getCompeleteSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v4}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/kunlun/platform/android/download/DownloadInfo;->getLastModified()J

    move-result-wide v4

    iget-object v6, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v6}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kunlun/platform/android/download/DownloadInfo;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/kunlun/platform/android/download/DownloadDBHelper;->updataInfos(JJLjava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1}, Lcom/kunlun/platform/android/download/Downloader;->f(Lcom/kunlun/platform/android/download/Downloader;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v2}, Lcom/kunlun/platform/android/download/Downloader;->d(Lcom/kunlun/platform/android/download/Downloader;)Lcom/kunlun/platform/android/download/DownloadInfo;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v2}, Lcom/kunlun/platform/android/download/Downloader;->a(Lcom/kunlun/platform/android/download/Downloader;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto/16 :goto_2

    :catch_2
    move-exception v1

    move-object v2, v8

    move-object v3, v0

    move-object v0, v1

    move-object v1, v7

    :goto_3
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    const/4 v4, -0x2

    invoke-static {v0, v4}, Lcom/kunlun/platform/android/download/Downloader;->a(Lcom/kunlun/platform/android/download/Downloader;I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v0}, Lcom/kunlun/platform/android/download/Downloader;->a(Lcom/kunlun/platform/android/download/Downloader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v4}, Lcom/kunlun/platform/android/download/Downloader;->b(Lcom/kunlun/platform/android/download/Downloader;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v1, :cond_a

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_a
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v0, v10}, Lcom/kunlun/platform/android/download/Downloader;->a(Lcom/kunlun/platform/android/download/Downloader;I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v0}, Lcom/kunlun/platform/android/download/Downloader;->a(Lcom/kunlun/platform/android/download/Downloader;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1}, Lcom/kunlun/platform/android/download/Downloader;->b(Lcom/kunlun/platform/android/download/Downloader;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v8, v2

    move-object v3, v2

    :goto_4
    if-eqz v2, :cond_b

    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_b
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :goto_5
    throw v0

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1, v10}, Lcom/kunlun/platform/android/download/Downloader;->a(Lcom/kunlun/platform/android/download/Downloader;I)V

    iget-object v1, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v1}, Lcom/kunlun/platform/android/download/Downloader;->a(Lcom/kunlun/platform/android/download/Downloader;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/download/Downloader$MyThread;->ed:Lcom/kunlun/platform/android/download/Downloader;

    invoke-static {v2}, Lcom/kunlun/platform/android/download/Downloader;->b(Lcom/kunlun/platform/android/download/Downloader;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    :catchall_3
    move-exception v1

    move-object v2, v7

    move-object v3, v0

    move-object v0, v1

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v8, v2

    move-object v2, v1

    goto :goto_4

    :catch_5
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v2, v8

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_3

    :catch_8
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_3

    :cond_c
    move v1, v3

    goto/16 :goto_1
.end method
