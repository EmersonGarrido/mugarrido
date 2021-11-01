.class public Lcom/tianmashikong/notification/NetPushService;
.super Landroid/app/Service;
.source "NetPushService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tianmashikong/notification/NetPushService$ServiceThread;
    }
.end annotation


# static fields
.field public static _channel:Ljava/lang/String;

.field public static _intent:Landroid/content/Intent;

.field public static _lastMsgId:Ljava/lang/String;

.field public static _mainClass:Ljava/lang/String;

.field public static _notificationId:I

.field public static _serviceThread:Lcom/tianmashikong/notification/NetPushService$ServiceThread;

.field public static _url:Ljava/lang/String;

.field public static _version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/tianmashikong/notification/NetPushService;->_serviceThread:Lcom/tianmashikong/notification/NetPushService$ServiceThread;

    .line 48
    sput-object v0, Lcom/tianmashikong/notification/NetPushService;->_intent:Landroid/content/Intent;

    .line 49
    const/4 v0, 0x0

    sput v0, Lcom/tianmashikong/notification/NetPushService;->_notificationId:I

    .line 50
    const-string v0, "0"

    sput-object v0, Lcom/tianmashikong/notification/NetPushService;->_lastMsgId:Ljava/lang/String;

    .line 51
    const-string v0, "*"

    sput-object v0, Lcom/tianmashikong/notification/NetPushService;->_version:Ljava/lang/String;

    .line 52
    const-string v0, "TM"

    sput-object v0, Lcom/tianmashikong/notification/NetPushService;->_channel:Ljava/lang/String;

    .line 53
    const-string v0, ""

    sput-object v0, Lcom/tianmashikong/notification/NetPushService;->_mainClass:Ljava/lang/String;

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/tianmashikong/notification/NetPushService;->_url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static Open(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 76
    return-void
.end method

.method public static Open2(Landroid/content/Context;)V
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 79
    sget-object v0, Lcom/tianmashikong/notification/NetPushService;->_serviceThread:Lcom/tianmashikong/notification/NetPushService$ServiceThread;

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/tianmashikong/notification/NetPushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sput-object v0, Lcom/tianmashikong/notification/NetPushService;->_intent:Landroid/content/Intent;

    .line 84
    sget-object v0, Lcom/tianmashikong/notification/NetPushService;->_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method public GetChannel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    const-string v1, "tmsk_sdkname"

    invoke-static {p0, v1}, Lcom/tianmashikong/tool/TMUtils;->GetAppMetaValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "value":Ljava/lang/String;
    return-object v0
.end method

.method public GetClassName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    const-string v1, "tmsk_mainclass"

    invoke-static {p0, v1}, Lcom/tianmashikong/tool/TMUtils;->GetAppMetaValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "value":Ljava/lang/String;
    return-object v0
.end method

.method public GetNetPushInfo()Ljava/lang/String;
    .locals 16

    .prologue
    .line 240
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v11, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 241
    .local v1, "dataformat":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 242
    .local v0, "c":Ljava/util/Calendar;
    const-string v11, "%04d%02d%02d%02d"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x2

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const/4 v14, 0x5

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    const/16 v14, 0xb

    invoke-virtual {v0, v14}, Ljava/util/Calendar;->get(I)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 243
    .local v10, "v":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "url="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/tianmashikong/notification/NetPushService;->_url:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "?V="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 244
    new-instance v9, Ljava/net/URL;

    new-instance v11, Ljava/lang/StringBuilder;

    sget-object v12, Lcom/tianmashikong/notification/NetPushService;->_url:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "?V="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 245
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v6

    .line 246
    .local v6, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v11, "utf8"

    invoke-direct {v5, v6, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 249
    .local v5, "ins":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 251
    .local v2, "dis":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 252
    .local v7, "line":Ljava/lang/String;
    :goto_0
    if-nez v7, :cond_0

    .line 331
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "dataformat":Ljava/text/SimpleDateFormat;
    .end local v2    # "dis":Ljava/io/BufferedReader;
    .end local v5    # "ins":Ljava/io/InputStreamReader;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "v":Ljava/lang/String;
    :goto_1
    const-string v11, ""

    return-object v11

    .line 254
    .restart local v0    # "c":Ljava/util/Calendar;
    .restart local v1    # "dataformat":Ljava/text/SimpleDateFormat;
    .restart local v2    # "dis":Ljava/io/BufferedReader;
    .restart local v5    # "ins":Ljava/io/InputStreamReader;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "url":Ljava/net/URL;
    .restart local v10    # "v":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "line="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 257
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "line0="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 259
    goto :goto_0

    .line 261
    :cond_1
    const-string v11, "="

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 262
    .local v8, "temp":[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "temp length="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v12, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " temp[0]="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v8, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 263
    array-length v11, v8

    const/4 v12, 0x1

    if-le v11, v12, :cond_b

    const/4 v11, 0x0

    aget-object v11, v8, v11

    const-string v12, "id"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 266
    new-instance v4, Lcom/tianmashikong/notification/NetNotification;

    invoke-direct {v4}, Lcom/tianmashikong/notification/NetNotification;-><init>()V

    .line 267
    .local v4, "info":Lcom/tianmashikong/notification/NetNotification;
    const/4 v11, 0x1

    aget-object v11, v8, v11

    iput-object v11, v4, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    .line 268
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 269
    :goto_2
    if-nez v7, :cond_3

    .line 311
    :cond_2
    sget-object v11, Lcom/tianmashikong/notification/NetPushPlugin;->_Notificationlist:Ljava/util/Hashtable;

    iget-object v12, v4, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    invoke-virtual {v11, v12, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-static {}, Lcom/tianmashikong/notification/NetPushPlugin;->save()V

    .line 313
    invoke-static {v4}, Lcom/tianmashikong/notification/NetPushPlugin;->SetPush(Lcom/tianmashikong/notification/NetNotification;)V

    .line 314
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "messageid="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v4, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 315
    iget-object v11, v4, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    sput-object v11, Lcom/tianmashikong/notification/NetPushService;->_lastMsgId:Ljava/lang/String;

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/tianmashikong/notification/NetPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Lcom/tianmashikong/notification/NetPushService;->_lastMsgId:Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/tianmashikong/notification/NetPushPlugin;->SaveLastMsgId(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 326
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v1    # "dataformat":Ljava/text/SimpleDateFormat;
    .end local v2    # "dis":Ljava/io/BufferedReader;
    .end local v4    # "info":Lcom/tianmashikong/notification/NetNotification;
    .end local v5    # "ins":Ljava/io/InputStreamReader;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "temp":[Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    .end local v10    # "v":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 328
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 271
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "c":Ljava/util/Calendar;
    .restart local v1    # "dataformat":Ljava/text/SimpleDateFormat;
    .restart local v2    # "dis":Ljava/io/BufferedReader;
    .restart local v4    # "info":Lcom/tianmashikong/notification/NetNotification;
    .restart local v5    # "ins":Ljava/io/InputStreamReader;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "temp":[Ljava/lang/String;
    .restart local v9    # "url":Ljava/net/URL;
    .restart local v10    # "v":Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 273
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 274
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "1line="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    goto :goto_2

    .line 277
    :cond_4
    const-string v11, "="

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 278
    const/4 v11, 0x0

    aget-object v11, v8, v11

    const-string v12, "id"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 283
    const/4 v11, 0x0

    aget-object v11, v8, v11

    const-string v12, "title"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 285
    const/4 v11, 0x1

    aget-object v11, v8, v11

    iput-object v11, v4, Lcom/tianmashikong/notification/NetNotification;->_title:Ljava/lang/String;

    .line 307
    :cond_5
    :goto_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 308
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "2line="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " count="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Lcom/tianmashikong/notification/NetNotification;->_count:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 287
    :cond_6
    const/4 v11, 0x0

    aget-object v11, v8, v11

    const-string v12, "msg"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 289
    const/4 v11, 0x1

    aget-object v11, v8, v11

    iput-object v11, v4, Lcom/tianmashikong/notification/NetNotification;->_content:Ljava/lang/String;

    goto :goto_3

    .line 291
    :cond_7
    const/4 v11, 0x0

    aget-object v11, v8, v11

    const-string v12, "start"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 293
    const/4 v11, 0x1

    aget-object v11, v8, v11

    iput-object v11, v4, Lcom/tianmashikong/notification/NetNotification;->_startTime:Ljava/lang/String;

    goto :goto_3

    .line 295
    :cond_8
    const/4 v11, 0x0

    aget-object v11, v8, v11

    const-string v12, "end"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 297
    const/4 v11, 0x1

    aget-object v11, v8, v11

    iput-object v11, v4, Lcom/tianmashikong/notification/NetNotification;->_endTime:Ljava/lang/String;

    goto :goto_3

    .line 299
    :cond_9
    const/4 v11, 0x0

    aget-object v11, v8, v11

    const-string v12, "interval"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 301
    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    iput-wide v12, v4, Lcom/tianmashikong/notification/NetNotification;->_interval:J

    goto :goto_3

    .line 303
    :cond_a
    const/4 v11, 0x0

    aget-object v11, v8, v11

    const-string v12, "count"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 305
    const/4 v11, 0x1

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v4, Lcom/tianmashikong/notification/NetNotification;->_count:I

    goto/16 :goto_3

    .line 318
    .end local v4    # "info":Lcom/tianmashikong/notification/NetNotification;
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "line3:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 320
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "line3-1:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public GetVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/tianmashikong/notification/NetPushService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 90
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 92
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/tianmashikong/notification/NetPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 97
    :goto_0
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v3

    .line 93
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public SendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "msgid"    # Ljava/lang/String;

    .prologue
    .line 176
    :try_start_0
    sget-object v8, Lcom/tianmashikong/notification/NetPushService;->_mainClass:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/tianmashikong/notification/NetPushService;->GetClassName()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/tianmashikong/notification/NetPushService;->_mainClass:Ljava/lang/String;

    .line 182
    :cond_0
    sget-object v8, Lcom/tianmashikong/notification/NetPushService;->_mainClass:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 183
    .local v0, "aa":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v2, "intent":Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0}, Lcom/tianmashikong/notification/NetPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2, v8, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 186
    const/high16 v8, 0x10200000

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0}, Lcom/tianmashikong/notification/NetPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "pkgname":Ljava/lang/String;
    const-string v8, "notification"

    invoke-virtual {p0, v8}, Lcom/tianmashikong/notification/NetPushService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 193
    .local v3, "manager":Landroid/app/NotificationManager;
    new-instance v5, Landroid/app/Notification;

    invoke-virtual {p0}, Lcom/tianmashikong/notification/NetPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "ic_launcher"

    const-string v10, "drawable"

    invoke-virtual {v8, v9, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    const-string v9, "123123"

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 193
    invoke-direct {v5, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 195
    .local v5, "notification":Landroid/app/Notification;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcom/tianmashikong/notification/NetPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    .local v4, "notbuild":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {p0}, Lcom/tianmashikong/notification/NetPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "ic_launcher"

    const-string v10, "drawable"

    invoke-virtual {v8, v9, v10, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 197
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 199
    const/4 v8, 0x1

    iput v8, v5, Landroid/app/Notification;->defaults:I

    .line 200
    const/16 v8, 0x10

    iput v8, v5, Landroid/app/Notification;->flags:I

    .line 209
    invoke-virtual {p0}, Lcom/tianmashikong/notification/NetPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 211
    .local v6, "pi":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/tianmashikong/notification/NetPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v5, v8, p1, p2, v6}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 215
    sget v8, Lcom/tianmashikong/notification/NetPushService;->_notificationId:I

    add-int/lit8 v9, v8, 0x1

    sput v9, Lcom/tianmashikong/notification/NetPushService;->_notificationId:I

    invoke-virtual {v3, v8, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v0    # "aa":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "manager":Landroid/app/NotificationManager;
    .end local v4    # "notbuild":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v5    # "notification":Landroid/app/Notification;
    .end local v6    # "pi":Landroid/app/PendingIntent;
    .end local v7    # "pkgname":Ljava/lang/String;
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sendmessage error="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 141
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 155
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 156
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method
