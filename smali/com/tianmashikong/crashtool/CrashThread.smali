.class Lcom/tianmashikong/crashtool/CrashThread;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field curVerCode:I

.field mFiles:[Ljava/io/File;

.field mPort:I

.field mPwd:Ljava/lang/String;

.field mRemote:Ljava/lang/String;

.field mServer:Ljava/lang/String;

.field mUser:Ljava/lang/String;


# direct methods
.method public constructor <init>(I[Ljava/io/File;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "verCode"    # I
    .param p2, "files"    # [Ljava/io/File;
    .param p3, "server"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "user"    # Ljava/lang/String;
    .param p6, "pwd"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/tianmashikong/crashtool/CrashThread;->curVerCode:I

    .line 50
    iput-object p2, p0, Lcom/tianmashikong/crashtool/CrashThread;->mFiles:[Ljava/io/File;

    .line 52
    iput-object p3, p0, Lcom/tianmashikong/crashtool/CrashThread;->mServer:Ljava/lang/String;

    .line 53
    iput p4, p0, Lcom/tianmashikong/crashtool/CrashThread;->mPort:I

    .line 54
    iput-object p5, p0, Lcom/tianmashikong/crashtool/CrashThread;->mUser:Ljava/lang/String;

    .line 55
    iput-object p6, p0, Lcom/tianmashikong/crashtool/CrashThread;->mPwd:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method canUpload(Ljava/io/File;)Z
    .locals 13
    .param p1, "arg0"    # Ljava/io/File;

    .prologue
    const/4 v10, 0x1

    .line 60
    const/4 v5, 0x0

    .line 61
    .local v5, "input":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 62
    .local v7, "inr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 65
    .local v0, "bufr":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .end local v5    # "input":Ljava/io/InputStream;
    .local v6, "input":Ljava/io/InputStream;
    :try_start_1
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    .end local v7    # "inr":Ljava/io/InputStreamReader;
    .local v8, "inr":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v11, 0x400

    invoke-direct {v1, v8, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 69
    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .local v1, "bufr":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v9

    .line 70
    .local v9, "str2":Ljava/lang/String;
    :goto_0
    if-nez v9, :cond_3

    .line 102
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    .line 103
    :cond_0
    :goto_1
    if-eqz v8, :cond_1

    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d

    .line 104
    :cond_1
    :goto_2
    if-eqz v6, :cond_e

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    move-object v0, v1

    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "inr":Ljava/io/InputStreamReader;
    .restart local v7    # "inr":Ljava/io/InputStreamReader;
    move-object v5, v6

    .line 107
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v9    # "str2":Ljava/lang/String;
    .restart local v5    # "input":Ljava/io/InputStream;
    :cond_2
    :goto_3
    const/4 v10, 0x0

    :goto_4
    return v10

    .line 72
    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v7    # "inr":Ljava/io/InputStreamReader;
    .restart local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v8    # "inr":Ljava/io/InputStreamReader;
    .restart local v9    # "str2":Ljava/lang/String;
    :cond_3
    :try_start_7
    const-string v11, "versionCode"

    invoke-virtual {v9, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_4

    .line 74
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 75
    goto :goto_0

    .line 78
    :cond_4
    const-string v11, "="

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "code":[Ljava/lang/String;
    if-eqz v3, :cond_8

    array-length v11, v3

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    const/4 v11, 0x1

    aget-object v11, v3, v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v11, :cond_8

    .line 83
    const/4 v11, 0x1

    :try_start_8
    aget-object v11, v3, v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "c":Ljava/lang/String;
    iget v11, p0, Lcom/tianmashikong/crashtool/CrashThread;->curVerCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result v12

    if-ne v11, v12, :cond_8

    .line 102
    if-eqz v1, :cond_5

    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 103
    :cond_5
    :goto_5
    if-eqz v8, :cond_6

    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 104
    :cond_6
    :goto_6
    if-eqz v6, :cond_7

    :try_start_b
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :cond_7
    :goto_7
    move-object v0, v1

    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "inr":Ljava/io/InputStreamReader;
    .restart local v7    # "inr":Ljava/io/InputStreamReader;
    move-object v5, v6

    .line 85
    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    goto :goto_4

    .line 87
    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .end local v2    # "c":Ljava/lang/String;
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v7    # "inr":Ljava/io/InputStreamReader;
    .restart local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v8    # "inr":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v4

    .line 89
    .local v4, "e":Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    move-result-object v9

    goto :goto_0

    .line 96
    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .end local v3    # "code":[Ljava/lang/String;
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v8    # "inr":Ljava/io/InputStreamReader;
    .end local v9    # "str2":Ljava/lang/String;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v7    # "inr":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v4

    .line 98
    .restart local v4    # "e":Ljava/lang/Exception;
    :goto_8
    :try_start_d
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 102
    if-eqz v0, :cond_9

    :try_start_e
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_7

    .line 103
    :cond_9
    :goto_9
    if-eqz v7, :cond_a

    :try_start_f
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 104
    :cond_a
    :goto_a
    if-eqz v5, :cond_2

    :try_start_10
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2

    goto :goto_3

    :catch_2
    move-exception v10

    goto :goto_3

    .line 101
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 102
    :goto_b
    if-eqz v0, :cond_b

    :try_start_11
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_9

    .line 103
    :cond_b
    :goto_c
    if-eqz v7, :cond_c

    :try_start_12
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    .line 104
    :cond_c
    :goto_d
    if-eqz v5, :cond_d

    :try_start_13
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    .line 105
    :cond_d
    :goto_e
    throw v10

    .line 104
    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v7    # "inr":Ljava/io/InputStreamReader;
    .restart local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v8    # "inr":Ljava/io/InputStreamReader;
    .restart local v9    # "str2":Ljava/lang/String;
    :catch_3
    move-exception v10

    move-object v0, v1

    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "inr":Ljava/io/InputStreamReader;
    .restart local v7    # "inr":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    goto :goto_3

    .line 102
    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v7    # "inr":Ljava/io/InputStreamReader;
    .restart local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v2    # "c":Ljava/lang/String;
    .restart local v3    # "code":[Ljava/lang/String;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v8    # "inr":Ljava/io/InputStreamReader;
    :catch_4
    move-exception v11

    goto :goto_5

    .line 103
    :catch_5
    move-exception v11

    goto :goto_6

    .line 104
    :catch_6
    move-exception v11

    goto :goto_7

    .line 102
    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .end local v2    # "c":Ljava/lang/String;
    .end local v3    # "code":[Ljava/lang/String;
    .end local v6    # "input":Ljava/io/InputStream;
    .end local v8    # "inr":Ljava/io/InputStreamReader;
    .end local v9    # "str2":Ljava/lang/String;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v5    # "input":Ljava/io/InputStream;
    .restart local v7    # "inr":Ljava/io/InputStreamReader;
    :catch_7
    move-exception v10

    goto :goto_9

    .line 103
    :catch_8
    move-exception v10

    goto :goto_a

    .line 102
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v11

    goto :goto_c

    .line 103
    :catch_a
    move-exception v11

    goto :goto_d

    .line 104
    :catch_b
    move-exception v11

    goto :goto_e

    .line 102
    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v7    # "inr":Ljava/io/InputStreamReader;
    .restart local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v8    # "inr":Ljava/io/InputStreamReader;
    .restart local v9    # "str2":Ljava/lang/String;
    :catch_c
    move-exception v10

    goto/16 :goto_1

    .line 103
    :catch_d
    move-exception v10

    goto/16 :goto_2

    .line 101
    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .end local v8    # "inr":Ljava/io/InputStreamReader;
    .end local v9    # "str2":Ljava/lang/String;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    .restart local v7    # "inr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    goto :goto_b

    .end local v5    # "input":Ljava/io/InputStream;
    .end local v7    # "inr":Ljava/io/InputStreamReader;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v8    # "inr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v10

    move-object v7, v8

    .end local v8    # "inr":Ljava/io/InputStreamReader;
    .restart local v7    # "inr":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    goto :goto_b

    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v7    # "inr":Ljava/io/InputStreamReader;
    .restart local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v8    # "inr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v10

    move-object v0, v1

    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "inr":Ljava/io/InputStreamReader;
    .restart local v7    # "inr":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    goto :goto_b

    .line 96
    .end local v5    # "input":Ljava/io/InputStream;
    .restart local v6    # "input":Ljava/io/InputStream;
    :catch_e
    move-exception v4

    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    goto :goto_8

    .end local v5    # "input":Ljava/io/InputStream;
    .end local v7    # "inr":Ljava/io/InputStreamReader;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v8    # "inr":Ljava/io/InputStreamReader;
    :catch_f
    move-exception v4

    move-object v7, v8

    .end local v8    # "inr":Ljava/io/InputStreamReader;
    .restart local v7    # "inr":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    goto :goto_8

    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v7    # "inr":Ljava/io/InputStreamReader;
    .restart local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v8    # "inr":Ljava/io/InputStreamReader;
    :catch_10
    move-exception v4

    move-object v0, v1

    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "inr":Ljava/io/InputStreamReader;
    .restart local v7    # "inr":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    goto :goto_8

    .end local v0    # "bufr":Ljava/io/BufferedReader;
    .end local v5    # "input":Ljava/io/InputStream;
    .end local v7    # "inr":Ljava/io/InputStreamReader;
    .restart local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v6    # "input":Ljava/io/InputStream;
    .restart local v8    # "inr":Ljava/io/InputStreamReader;
    .restart local v9    # "str2":Ljava/lang/String;
    :cond_e
    move-object v0, v1

    .end local v1    # "bufr":Ljava/io/BufferedReader;
    .restart local v0    # "bufr":Ljava/io/BufferedReader;
    move-object v7, v8

    .end local v8    # "inr":Ljava/io/InputStreamReader;
    .restart local v7    # "inr":Ljava/io/InputStreamReader;
    move-object v5, v6

    .end local v6    # "input":Ljava/io/InputStream;
    .restart local v5    # "input":Ljava/io/InputStream;
    goto/16 :goto_3
.end method

.method public run()V
    .locals 10

    .prologue
    .line 113
    iget-object v5, p0, Lcom/tianmashikong/crashtool/CrashThread;->mFiles:[Ljava/io/File;

    array-length v0, v5

    .line 114
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 139
    return-void

    .line 116
    :cond_0
    iget-object v5, p0, Lcom/tianmashikong/crashtool/CrashThread;->mFiles:[Ljava/io/File;

    aget-object v2, v5, v3

    .line 117
    .local v2, "f":Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 114
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {p0, v2}, Lcom/tianmashikong/crashtool/CrashThread;->canUpload(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 122
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 128
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tianmashikong/crashtool/CrashThread;->mServer:Ljava/lang/String;

    iget v7, p0, Lcom/tianmashikong/crashtool/CrashThread;->mPort:I

    iget-object v8, p0, Lcom/tianmashikong/crashtool/CrashThread;->mUser:Ljava/lang/String;

    iget-object v9, p0, Lcom/tianmashikong/crashtool/CrashThread;->mPwd:Ljava/lang/String;

    invoke-static {v5, v6, v7, v8, v9}, Lcom/tianmashikong/tool/FtpUtil;->Send2Server(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 129
    .local v4, "ok":Z
    if-eqz v4, :cond_4

    .line 130
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 132
    :cond_4
    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 134
    .end local v4    # "ok":Z
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
