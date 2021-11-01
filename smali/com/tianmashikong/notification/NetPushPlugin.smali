.class public Lcom/tianmashikong/notification/NetPushPlugin;
.super Ljava/lang/Object;
.source "NetPushPlugin.java"


# static fields
.field static _Notificationlist:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/tianmashikong/notification/NetNotification;",
            ">;"
        }
    .end annotation
.end field

.field static _context:Landroid/content/Context;

.field static _netpushservice:Lcom/tianmashikong/notification/NetPushService;

.field static _pushUrlpath:Ljava/lang/String;

.field static _timerlist:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field static _tmsklastmsgid:Ljava/lang/String;

.field static notiFileName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const-string v0, "tmsknetpush"

    sput-object v0, Lcom/tianmashikong/notification/NetPushPlugin;->notiFileName:Ljava/lang/String;

    .line 28
    const-string v0, "tmsklastmsgid"

    sput-object v0, Lcom/tianmashikong/notification/NetPushPlugin;->_tmsklastmsgid:Ljava/lang/String;

    .line 29
    const-string v0, "tmskurl"

    sput-object v0, Lcom/tianmashikong/notification/NetPushPlugin;->_pushUrlpath:Ljava/lang/String;

    .line 30
    sput-object v1, Lcom/tianmashikong/notification/NetPushPlugin;->_context:Landroid/content/Context;

    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tianmashikong/notification/NetPushPlugin;->_Notificationlist:Ljava/util/Hashtable;

    .line 34
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/tianmashikong/notification/NetPushPlugin;->_timerlist:Ljava/util/Hashtable;

    .line 36
    sput-object v1, Lcom/tianmashikong/notification/NetPushPlugin;->_netpushservice:Lcom/tianmashikong/notification/NetPushService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Init(Lcom/tianmashikong/notification/NetPushService;Landroid/content/Context;)V
    .locals 0
    .param p0, "ps"    # Lcom/tianmashikong/notification/NetPushService;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 39
    sput-object p1, Lcom/tianmashikong/notification/NetPushPlugin;->_context:Landroid/content/Context;

    .line 40
    sput-object p0, Lcom/tianmashikong/notification/NetPushPlugin;->_netpushservice:Lcom/tianmashikong/notification/NetPushService;

    .line 44
    return-void
.end method

.method public static LoadLastMsgId(Landroid/content/Context;)V
    .locals 8
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 137
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    sget-object v7, Lcom/tianmashikong/notification/NetPushPlugin;->_tmsklastmsgid:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_1
    const-string v4, "start LoadLastMsgId"

    invoke-static {v4}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 139
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 140
    .local v3, "id":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LoadLastMsgId "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 141
    sput-object v3, Lcom/tianmashikong/notification/NetPushService;->_lastMsgId:Ljava/lang/String;

    .line 142
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    if-eqz v1, :cond_0

    .line 154
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 156
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 158
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "id":Ljava/lang/String;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :goto_1
    return-void

    .line 144
    :catch_0
    move-exception v2

    .line 146
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LoadLastMsgId error"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 147
    const-string v4, "0"

    sput-object v4, Lcom/tianmashikong/notification/NetPushService;->_lastMsgId:Ljava/lang/String;

    .line 148
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 152
    if-eqz v0, :cond_1

    .line 154
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 156
    :cond_1
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    .line 151
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 152
    :goto_4
    if-eqz v0, :cond_2

    .line 154
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 156
    :cond_2
    :goto_5
    const/4 v0, 0x0

    .line 157
    throw v4

    .line 154
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_5

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "id":Ljava/lang/String;
    :catch_3
    move-exception v4

    goto :goto_0

    .line 151
    .end local v3    # "id":Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_4

    .line 144
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_2
.end method

.method public static LoadPushUrl(Landroid/content/Context;)V
    .locals 8
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 80
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    sget-object v7, Lcom/tianmashikong/notification/NetPushPlugin;->_pushUrlpath:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_1
    const-string v4, "start _pushUrlpath"

    invoke-static {v4}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "url":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_pushUrlpath "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 85
    sput-object v3, Lcom/tianmashikong/notification/NetPushService;->_url:Ljava/lang/String;

    .line 86
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 95
    if-eqz v1, :cond_1

    .line 97
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 99
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 101
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "url":Ljava/lang/String;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :goto_1
    return-void

    .line 88
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LoadPushUrl error"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    if-eqz v0, :cond_2

    .line 97
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 99
    :cond_2
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    .line 94
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 95
    :goto_4
    if-eqz v0, :cond_3

    .line 97
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 99
    :cond_3
    :goto_5
    const/4 v0, 0x0

    .line 100
    throw v4

    .line 97
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_5

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "url":Ljava/lang/String;
    :catch_3
    move-exception v4

    goto :goto_0

    .line 94
    .end local v3    # "url":Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_4

    .line 88
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_2
.end method

.method public static SaveLastMsgId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "con"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 108
    .local v0, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    sget-object v6, Lcom/tianmashikong/notification/NetPushPlugin;->_tmsklastmsgid:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    if-eqz v1, :cond_2

    .line 124
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 125
    :goto_0
    const/4 v0, 0x0

    .line 128
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 115
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SaveLastMsgId error"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    if-eqz v0, :cond_0

    .line 124
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 125
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    .line 121
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 122
    :goto_4
    if-eqz v0, :cond_1

    .line 124
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 125
    :goto_5
    const/4 v0, 0x0

    .line 127
    :cond_1
    throw v3

    .line 124
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_5

    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v3

    goto :goto_0

    .line 121
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    goto :goto_4

    .line 115
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    goto :goto_2

    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    :cond_2
    move-object v0, v1

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    goto :goto_1
.end method

.method public static Savepushurl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "con"    # Landroid/content/Context;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 52
    .local v0, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    sget-object v6, Lcom/tianmashikong/notification/NetPushPlugin;->_pushUrlpath:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "save_pushUrlpath success-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 66
    if-eqz v1, :cond_2

    .line 68
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 69
    :goto_0
    const/4 v0, 0x0

    .line 72
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 59
    :catch_0
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "save_pushUrlpath error"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    if-eqz v0, :cond_0

    .line 68
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 69
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    .line 65
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 66
    :goto_4
    if-eqz v0, :cond_1

    .line 68
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 69
    :goto_5
    const/4 v0, 0x0

    .line 71
    :cond_1
    throw v3

    .line 68
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_5

    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v3

    goto :goto_0

    .line 65
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    goto :goto_4

    .line 59
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    goto :goto_2

    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    :cond_2
    move-object v0, v1

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    goto :goto_1
.end method

.method public static SetPush(Lcom/tianmashikong/notification/NetNotification;)V
    .locals 26
    .param p0, "tmno"    # Lcom/tianmashikong/notification/NetNotification;

    .prologue
    .line 233
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 234
    .local v2, "timer":Ljava/util/Timer;
    sget-object v3, Lcom/tianmashikong/notification/NetPushPlugin;->_timerlist:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    sget-object v3, Lcom/tianmashikong/notification/NetPushPlugin;->_timerlist:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 239
    :cond_0
    sget-object v3, Lcom/tianmashikong/notification/NetPushPlugin;->_timerlist:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    invoke-virtual {v3, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 245
    .local v8, "bartDateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tianmashikong/notification/NetNotification;->_startTime:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    .line 246
    .local v13, "st":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    check-cast v20, Ljava/util/GregorianCalendar;

    .line 247
    .local v20, "stdate":Ljava/util/GregorianCalendar;
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 249
    invoke-virtual/range {v20 .. v20}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v16, v6, v22

    .line 250
    .local v16, "firstpush":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tianmashikong/notification/NetNotification;->_endTime:Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 251
    .local v11, "dd":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    check-cast v10, Ljava/util/GregorianCalendar;

    .line 252
    .local v10, "date":Ljava/util/GregorianCalendar;
    invoke-virtual {v10, v11}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 254
    const-wide/16 v14, 0x0

    .line 255
    .local v14, "first":J
    const-wide/16 v4, 0x0

    .line 256
    .local v4, "delay":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v10}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v22

    cmp-long v3, v6, v22

    if-lez v3, :cond_1

    .line 258
    sget-object v3, Lcom/tianmashikong/notification/NetPushPlugin;->_timerlist:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v3, Lcom/tianmashikong/notification/NetPushPlugin;->_Notificationlist:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 261
    invoke-static {}, Lcom/tianmashikong/notification/NetPushPlugin;->save()V

    .line 310
    .end local v4    # "delay":J
    .end local v10    # "date":Ljava/util/GregorianCalendar;
    .end local v11    # "dd":Ljava/util/Date;
    .end local v13    # "st":Ljava/util/Date;
    .end local v14    # "first":J
    .end local v16    # "firstpush":J
    .end local v20    # "stdate":Ljava/util/GregorianCalendar;
    :goto_0
    return-void

    .line 265
    .restart local v4    # "delay":J
    .restart local v10    # "date":Ljava/util/GregorianCalendar;
    .restart local v11    # "dd":Ljava/util/Date;
    .restart local v13    # "st":Ljava/util/Date;
    .restart local v14    # "first":J
    .restart local v16    # "firstpush":J
    .restart local v20    # "stdate":Ljava/util/GregorianCalendar;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v20 .. v20}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v22

    cmp-long v3, v6, v22

    if-lez v3, :cond_3

    .line 267
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/tianmashikong/notification/NetNotification;->_interval:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    invoke-virtual/range {v20 .. v20}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v24

    sub-long v22, v22, v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/tianmashikong/notification/NetNotification;->_interval:J

    move-wide/from16 v24, v0

    rem-long v22, v22, v24

    sub-long v4, v6, v22

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v14, v4, v6

    .line 275
    :goto_1
    invoke-virtual {v10}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long v18, v6, v14

    .line 276
    .local v18, "overpush":J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tianmashikong/notification/NetNotification;->_count:I

    move/from16 v21, v0

    .line 277
    .local v21, "tempcount":I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tianmashikong/notification/NetNotification;->_count:I

    if-gez v3, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/tianmashikong/notification/NetNotification;->_interval:J

    div-long v6, v18, v6

    long-to-int v0, v6

    move/from16 v21, v0

    .line 279
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "count="

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " delay="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " interval="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/tianmashikong/notification/NetNotification;->_interval:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 280
    move/from16 v9, v21

    .line 284
    .local v9, "count":I
    new-instance v3, Lcom/tianmashikong/notification/NetPushPlugin$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v9, v2}, Lcom/tianmashikong/notification/NetPushPlugin$1;-><init>(Lcom/tianmashikong/notification/NetNotification;ILjava/util/Timer;)V

    .line 302
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/tianmashikong/notification/NetNotification;->_interval:J

    .line 284
    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 304
    .end local v4    # "delay":J
    .end local v9    # "count":I
    .end local v10    # "date":Ljava/util/GregorianCalendar;
    .end local v11    # "dd":Ljava/util/Date;
    .end local v13    # "st":Ljava/util/Date;
    .end local v14    # "first":J
    .end local v16    # "firstpush":J
    .end local v18    # "overpush":J
    .end local v20    # "stdate":Ljava/util/GregorianCalendar;
    .end local v21    # "tempcount":I
    :catch_0
    move-exception v12

    .line 306
    .local v12, "e":Ljava/text/ParseException;
    invoke-virtual {v12}, Ljava/text/ParseException;->printStackTrace()V

    goto/16 :goto_0

    .line 271
    .end local v12    # "e":Ljava/text/ParseException;
    .restart local v4    # "delay":J
    .restart local v10    # "date":Ljava/util/GregorianCalendar;
    .restart local v11    # "dd":Ljava/util/Date;
    .restart local v13    # "st":Ljava/util/Date;
    .restart local v14    # "first":J
    .restart local v16    # "firstpush":J
    .restart local v20    # "stdate":Ljava/util/GregorianCalendar;
    :cond_3
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    sub-long v4, v6, v22

    .line 272
    invoke-virtual/range {v20 .. v20}, Ljava/util/GregorianCalendar;->getTimeInMillis()J
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v14

    goto :goto_1
.end method

.method private static load()V
    .locals 10

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 167
    .local v0, "dis":Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    sget-object v8, Lcom/tianmashikong/notification/NetPushPlugin;->_context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    sget-object v9, Lcom/tianmashikong/notification/NetPushPlugin;->notiFileName:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .local v1, "dis":Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 170
    .local v4, "n":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "read filersdir="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/tianmashikong/notification/NetPushPlugin;->_context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "n="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 188
    if-eqz v1, :cond_0

    .line 190
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 192
    :cond_0
    :goto_1
    const/4 v0, 0x0

    .line 194
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "i":I
    .end local v4    # "n":I
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :goto_2
    return-void

    .line 173
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "i":I
    .restart local v4    # "n":I
    :cond_1
    :try_start_3
    new-instance v5, Lcom/tianmashikong/notification/NetNotification;

    invoke-direct {v5}, Lcom/tianmashikong/notification/NetNotification;-><init>()V

    .line 174
    .local v5, "notification":Lcom/tianmashikong/notification/NetNotification;
    invoke-virtual {v5, v1}, Lcom/tianmashikong/notification/NetNotification;->readFrom(Ljava/io/DataInputStream;)V

    .line 175
    sget-object v6, Lcom/tianmashikong/notification/NetPushPlugin;->_Notificationlist:Ljava/util/Hashtable;

    iget-object v7, v5, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-static {v5}, Lcom/tianmashikong/notification/NetPushPlugin;->SetPush(Lcom/tianmashikong/notification/NetNotification;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "i":I
    .end local v4    # "n":I
    .end local v5    # "notification":Lcom/tianmashikong/notification/NetNotification;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "load error "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 188
    if-eqz v0, :cond_2

    .line 190
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 192
    :cond_2
    :goto_4
    const/4 v0, 0x0

    goto :goto_2

    .line 187
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 188
    :goto_5
    if-eqz v0, :cond_3

    .line 190
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 192
    :cond_3
    :goto_6
    const/4 v0, 0x0

    .line 193
    throw v6

    .line 190
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    goto :goto_4

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v7

    goto :goto_6

    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "i":I
    .restart local v4    # "n":I
    :catch_3
    move-exception v6

    goto :goto_1

    .line 187
    .end local v3    # "i":I
    .end local v4    # "n":I
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_5

    .line 181
    .end local v0    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v0    # "dis":Ljava/io/DataInputStream;
    goto :goto_3
.end method

.method public static save()V
    .locals 9

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 202
    .local v0, "dos":Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    sget-object v7, Lcom/tianmashikong/notification/NetPushPlugin;->_context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    sget-object v8, Lcom/tianmashikong/notification/NetPushPlugin;->notiFileName:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .local v1, "dos":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "save filersdir"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/tianmashikong/notification/NetPushPlugin;->_context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 204
    sget-object v5, Lcom/tianmashikong/notification/NetPushPlugin;->_Notificationlist:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 205
    sget-object v5, Lcom/tianmashikong/notification/NetPushPlugin;->_Notificationlist:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 206
    .local v3, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/NetNotification;>;"
    if-eqz v3, :cond_0

    .line 208
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_2

    .line 214
    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    if-eqz v1, :cond_4

    .line 225
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 226
    :goto_1
    const/4 v0, 0x0

    .line 229
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/NetNotification;>;"
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    :cond_1
    :goto_2
    return-void

    .line 210
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v3    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/NetNotification;>;"
    :cond_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tianmashikong/notification/NetNotification;

    .line 211
    .local v4, "notification":Lcom/tianmashikong/notification/NetNotification;
    invoke-virtual {v4, v1}, Lcom/tianmashikong/notification/NetNotification;->writeTo(Ljava/io/DataOutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 216
    .end local v3    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/NetNotification;>;"
    .end local v4    # "notification":Lcom/tianmashikong/notification/NetNotification;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 218
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "save error"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 223
    if-eqz v0, :cond_1

    .line 225
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 226
    :goto_4
    const/4 v0, 0x0

    goto :goto_2

    .line 222
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 223
    :goto_5
    if-eqz v0, :cond_3

    .line 225
    :try_start_6
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 226
    :goto_6
    const/4 v0, 0x0

    .line 228
    :cond_3
    throw v5

    .line 225
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    goto :goto_4

    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto :goto_6

    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v3    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/NetNotification;>;"
    :catch_3
    move-exception v5

    goto :goto_1

    .line 222
    .end local v3    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/NetNotification;>;"
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    goto :goto_5

    .line 216
    :catch_4
    move-exception v2

    goto :goto_3

    .end local v0    # "dos":Ljava/io/DataOutputStream;
    .restart local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v3    # "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/tianmashikong/notification/NetNotification;>;"
    :cond_4
    move-object v0, v1

    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .restart local v0    # "dos":Ljava/io/DataOutputStream;
    goto :goto_2
.end method
