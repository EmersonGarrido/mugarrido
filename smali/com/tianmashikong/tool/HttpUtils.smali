.class public Lcom/tianmashikong/tool/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "jsonmsg"    # Ljava/lang/String;

    .prologue
    .line 17
    const/4 v7, 0x0

    .line 18
    .local v7, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .line 21
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 22
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v5, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 24
    .local v5, "request":Lorg/apache/http/client/methods/HttpPost;
    new-instance v8, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v8, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 25
    .local v8, "se":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v5, v8}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 26
    invoke-interface {v0, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 27
    .local v6, "response":Lorg/apache/http/HttpResponse;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 28
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 27
    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v9, Ljava/lang/StringBuffer;

    const-string v10, ""

    invoke-direct {v9, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 31
    .local v9, "strBuffer":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 32
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 35
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v7

    .line 40
    if-eqz v4, :cond_3

    .line 42
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 43
    const/4 v3, 0x0

    .line 50
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "se":Lorg/apache/http/entity/StringEntity;
    .end local v9    # "strBuffer":Ljava/lang/StringBuffer;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-object v7

    .line 33
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "se":Lorg/apache/http/entity/StringEntity;
    .restart local v9    # "strBuffer":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_3
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 37
    .end local v2    # "line":Ljava/lang/String;
    .end local v9    # "strBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 38
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "se":Lorg/apache/http/entity/StringEntity;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 40
    if-eqz v3, :cond_0

    .line 42
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 43
    const/4 v3, 0x0

    goto :goto_1

    .line 44
    :catch_1
    move-exception v1

    .line 45
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 39
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 40
    :goto_3
    if-eqz v3, :cond_2

    .line 42
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 43
    const/4 v3, 0x0

    .line 48
    :cond_2
    :goto_4
    throw v10

    .line 44
    :catch_2
    move-exception v1

    .line 45
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 44
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    .restart local v8    # "se":Lorg/apache/http/entity/StringEntity;
    .restart local v9    # "strBuffer":Ljava/lang/StringBuffer;
    :catch_3
    move-exception v1

    .line 45
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 39
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "strBuffer":Ljava/lang/StringBuffer;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 37
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    .end local v8    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_4
    move-exception v1

    goto :goto_2
.end method
