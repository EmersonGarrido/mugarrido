.class public Lcom/tianmashikong/tool/FtpUtil;
.super Ljava/lang/Object;
.source "FtpUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Send2Server(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "server"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "pwd"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 16
    new-instance v2, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {v2}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    .line 17
    .local v2, "ftp":Lorg/apache/commons/net/ftp/FTPClient;
    const/4 v3, 0x0

    .line 21
    .local v3, "input":Ljava/io/InputStream;
    if-lez p2, :cond_3

    .line 23
    :try_start_0
    invoke-virtual {v2, p1, p2}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;I)V

    .line 30
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->getReplyCode()I

    move-result v6

    .line 31
    .local v6, "reply":I
    invoke-static {v6}, Lorg/apache/commons/net/ftp/FTPReply;->isPositiveCompletion(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 33
    const-string v7, "TianmaCrash"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "can\'t connect to server:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",port:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",reply:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :goto_1
    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 84
    :cond_0
    :goto_2
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 85
    :cond_1
    :goto_3
    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_d

    .line 79
    .end local v6    # "reply":I
    :cond_2
    :goto_4
    return v5

    .line 27
    :cond_3
    :try_start_4
    invoke-virtual {v2, p1}, Lorg/apache/commons/net/ftp/FTPClient;->connect(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_5
    const-string v7, "TianmaCrash"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 83
    if-eqz v3, :cond_4

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 84
    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 85
    :cond_5
    :goto_7
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_4

    :catch_1
    move-exception v7

    goto :goto_4

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "reply":I
    :cond_6
    :try_start_9
    invoke-virtual {v2, p3, p4}, Lorg/apache/commons/net/ftp/FTPClient;->login(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 40
    const-string v7, "TianmaCrash"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "can\'t login with username:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",password:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 82
    .end local v6    # "reply":I
    :catchall_0
    move-exception v7

    .line 83
    :goto_8
    if-eqz v3, :cond_7

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 84
    :cond_7
    :goto_9
    if-eqz v2, :cond_8

    :try_start_b
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    .line 85
    :cond_8
    :goto_a
    if-eqz v2, :cond_9

    :try_start_c
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a

    .line 86
    :cond_9
    :goto_b
    throw v7

    .line 44
    .restart local v6    # "reply":I
    :cond_a
    const/4 v7, 0x2

    :try_start_d
    invoke-virtual {v2, v7}, Lorg/apache/commons/net/ftp/FTPClient;->setFileType(I)Z

    .line 45
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->enterLocalPassiveMode()V

    .line 47
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "f":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 49
    .end local v3    # "input":Ljava/io/InputStream;
    .local v4, "input":Ljava/io/InputStream;
    :try_start_e
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v4}, Lorg/apache/commons/net/ftp/FTPClient;->storeFile(Ljava/lang/String;Ljava/io/InputStream;)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    move-result v5

    .line 83
    .local v5, "ok":Z
    if-eqz v4, :cond_b

    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    .line 84
    :cond_b
    :goto_c
    if-eqz v2, :cond_c

    :try_start_10
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->logout()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    .line 85
    :cond_c
    :goto_d
    if-eqz v2, :cond_d

    :try_start_11
    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-virtual {v2}, Lorg/apache/commons/net/ftp/FTPClient;->disconnect()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_c

    :cond_d
    :goto_e
    move-object v3, v4

    .line 50
    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 83
    .end local v1    # "f":Ljava/io/File;
    .end local v5    # "ok":Z
    :catch_2
    move-exception v7

    goto/16 :goto_2

    .line 84
    :catch_3
    move-exception v7

    goto/16 :goto_3

    .line 83
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "ok":Z
    :catch_4
    move-exception v7

    goto :goto_c

    .line 84
    :catch_5
    move-exception v7

    goto :goto_d

    .line 83
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v5    # "ok":Z
    .end local v6    # "reply":I
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "input":Ljava/io/InputStream;
    :catch_6
    move-exception v7

    goto/16 :goto_6

    .line 84
    :catch_7
    move-exception v7

    goto/16 :goto_7

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v8

    goto :goto_9

    .line 84
    :catch_9
    move-exception v8

    goto :goto_a

    .line 85
    :catch_a
    move-exception v8

    goto :goto_b

    .line 82
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v6    # "reply":I
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto :goto_8

    .line 75
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    :catch_b
    move-exception v0

    move-object v3, v4

    .end local v4    # "input":Ljava/io/InputStream;
    .restart local v3    # "input":Ljava/io/InputStream;
    goto/16 :goto_5

    .line 85
    .end local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "ok":Z
    :catch_c
    move-exception v7

    goto :goto_e

    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v5    # "ok":Z
    .restart local v3    # "input":Ljava/io/InputStream;
    :catch_d
    move-exception v7

    goto/16 :goto_4
.end method
