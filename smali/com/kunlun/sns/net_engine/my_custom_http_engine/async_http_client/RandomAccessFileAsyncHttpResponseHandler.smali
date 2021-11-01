.class public Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/RandomAccessFileAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/FileAsyncHttpResponseHandler;
.source "RandomAccessFileAsyncHttpResponseHandler.java"


# instance fields
.field private final seekPos:J


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 0
    .param p1, "file"    # Ljava/io/File;
    .param p2, "seekPos"    # J

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;)V

    .line 23
    iput-wide p2, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/RandomAccessFileAsyncHttpResponseHandler;->seekPos:J

    .line 24
    return-void
.end method

.method private getMyResponseData(Lorg/apache/http/HttpEntity;)[B
    .locals 12
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    if-eqz p1, :cond_1

    .line 28
    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-virtual {p0}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/RandomAccessFileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v7

    const-string v8, "rwd"

    invoke-direct {v5, v7, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 29
    .local v5, "randomAccessFile":Ljava/io/RandomAccessFile;
    iget-wide v8, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/RandomAccessFileAsyncHttpResponseHandler;->seekPos:J

    invoke-virtual {v5, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 30
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 31
    .local v3, "instream":Ljava/io/InputStream;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    .line 32
    .local v0, "contentLength":J
    if-eqz v3, :cond_1

    .line 34
    const/16 v7, 0x1000

    :try_start_0
    new-array v6, v7, [B

    .line 35
    .local v6, "tmp":[B
    const/4 v2, 0x0

    .line 37
    .local v2, "count":I
    :goto_0
    invoke-virtual {v3, v6}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, "l":I
    const/4 v7, -0x1

    if-eq v4, v7, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_2

    .line 43
    :cond_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 44
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 48
    .end local v0    # "contentLength":J
    .end local v2    # "count":I
    .end local v3    # "instream":Ljava/io/InputStream;
    .end local v4    # "l":I
    .end local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .end local v6    # "tmp":[B
    :cond_1
    const/4 v7, 0x0

    return-object v7

    .line 38
    .restart local v0    # "contentLength":J
    .restart local v2    # "count":I
    .restart local v3    # "instream":Ljava/io/InputStream;
    .restart local v4    # "l":I
    .restart local v5    # "randomAccessFile":Ljava/io/RandomAccessFile;
    .restart local v6    # "tmp":[B
    :cond_2
    add-int/2addr v2, v4

    .line 39
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v5, v6, v7, v4}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 40
    iget-wide v8, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/RandomAccessFileAsyncHttpResponseHandler;->seekPos:J

    int-to-long v10, v2

    add-long/2addr v8, v10

    long-to-int v7, v8

    iget-wide v8, p0, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/RandomAccessFileAsyncHttpResponseHandler;->seekPos:J

    add-long/2addr v8, v0

    long-to-int v8, v8

    invoke-virtual {p0, v7, v8}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/RandomAccessFileAsyncHttpResponseHandler;->sendProgressMessage(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    .end local v2    # "count":I
    .end local v4    # "l":I
    .end local v6    # "tmp":[B
    :catchall_0
    move-exception v7

    .line 43
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 44
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 45
    throw v7
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "throwable"    # Ljava/lang/Throwable;
    .param p4, "file"    # Ljava/io/File;

    .prologue
    .line 74
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "file"    # Ljava/io/File;

    .prologue
    .line 80
    return-void
.end method

.method public sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 7
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 55
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 57
    .local v1, "status":Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/RandomAccessFileAsyncHttpResponseHandler;->getMyResponseData(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 60
    .local v0, "responseBody":[B
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 61
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    .line 62
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/RandomAccessFileAsyncHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 68
    .end local v0    # "responseBody":[B
    .end local v1    # "status":Lorg/apache/http/StatusLine;
    :cond_0
    :goto_0
    return-void

    .line 64
    .restart local v0    # "responseBody":[B
    .restart local v1    # "status":Lorg/apache/http/StatusLine;
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/kunlun/sns/net_engine/my_custom_http_engine/async_http_client/RandomAccessFileAsyncHttpResponseHandler;->sendSuccessMessage(I[Lorg/apache/http/Header;[B)V

    goto :goto_0
.end method
