.class Lcom/tianmashikong/notification/NetPushService$ServiceThread;
.super Ljava/lang/Thread;
.source "NetPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tianmashikong/notification/NetPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceThread"
.end annotation


# instance fields
.field public _msgId:I

.field i:I

.field test:Ljava/lang/Boolean;

.field final synthetic this$0:Lcom/tianmashikong/notification/NetPushService;


# direct methods
.method private constructor <init>(Lcom/tianmashikong/notification/NetPushService;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 334
    iput-object p1, p0, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->this$0:Lcom/tianmashikong/notification/NetPushService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 335
    iput v1, p0, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->i:I

    .line 336
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->test:Ljava/lang/Boolean;

    .line 337
    iput v1, p0, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->_msgId:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 346
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->i:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->i:I

    .line 347
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->i:I

    move/from16 v25, v0

    const v26, 0x98967f

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_0

    .line 348
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->i:I

    .line 349
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->test:Ljava/lang/Boolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_2

    .line 353
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "set push"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->i:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->this$0:Lcom/tianmashikong/notification/NetPushService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/tianmashikong/notification/NetPushService;->GetNetPushInfo()Ljava/lang/String;

    .line 466
    :cond_1
    :goto_1
    const-wide/32 v26, 0x3a980

    :try_start_0
    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 467
    :catch_0
    move-exception v5

    .line 469
    .local v5, "e":Ljava/lang/Exception;
    const-string v25, "sleep error"

    invoke-static/range {v25 .. v25}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 470
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 359
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "net push="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->i:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->this$0:Lcom/tianmashikong/notification/NetPushService;

    move-object/from16 v25, v0

    const-string v26, "lastpushid"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Lcom/tianmashikong/notification/NetPushService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 361
    .local v21, "sh":Landroid/content/SharedPreferences;
    const-string v23, "http://192.167.12.3/pullMessage.aspx"

    .line 362
    .local v23, "url":Ljava/lang/String;
    const-string v10, "HWjKO26fJvZ2f8v0QuEGZ3k3hFO4Ct8A"

    .line 363
    .local v10, "md5key":Ljava/lang/String;
    sget-object v11, Lcom/tianmashikong/notification/NetPushService;->_lastMsgId:Ljava/lang/String;

    .line 364
    .local v11, "message_id":Ljava/lang/String;
    const-string v6, "CQ"

    .line 365
    .local v6, "game":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->this$0:Lcom/tianmashikong/notification/NetPushService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/tianmashikong/notification/NetPushService;->GetVersion()Ljava/lang/String;

    move-result-object v24

    .line 366
    .local v24, "version":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->isEmpty()Z

    move-result v25

    if-eqz v25, :cond_3

    .line 367
    const-string v24, "*"

    .line 368
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->this$0:Lcom/tianmashikong/notification/NetPushService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/tianmashikong/notification/NetPushService;->GetChannel()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "channel":Ljava/lang/String;
    const-string v2, "land"

    .line 370
    .local v2, "area":Ljava/lang/String;
    const-string v17, "Android"

    .line 371
    .local v17, "platform":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 372
    .local v4, "device":Ljava/lang/String;
    const-string v18, ""

    .line 373
    .local v18, "postdata":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 377
    .local v7, "js":Lorg/json/JSONObject;
    :cond_4
    const-wide/16 v26, 0x2710

    :try_start_1
    invoke-static/range {v26 .. v27}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 384
    :goto_2
    :try_start_2
    const-string v25, "message_id"

    sget-object v26, Lcom/tianmashikong/notification/NetPushService;->_lastMsgId:Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string v25, "game"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 386
    const-string v25, "version"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    const-string v25, "channel"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    const-string v25, "area"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    const-string v25, "platform"

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    const-string v25, "device"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "message_id="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v26, Lcom/tianmashikong/notification/NetPushService;->_lastMsgId:Ljava/lang/String;

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "&game="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "&version="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "&channel="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "&area="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "&platform="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "&device="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 404
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "request="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "&"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/tianmashikong/tool/HttpUtils;->Post(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 407
    .local v19, "ret":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "ret="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 409
    :try_start_3
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 410
    .local v20, "retjs":Lorg/json/JSONObject;
    const-string v25, "message"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 412
    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "message="

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v26, "message"

    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 413
    new-instance v14, Lorg/json/JSONObject;

    const-string v25, "message"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 417
    .local v14, "msgjs":Lorg/json/JSONObject;
    const-string v25, "messageID"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 418
    .local v13, "msgid":Ljava/lang/String;
    const-string v25, "startTime"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 419
    .local v22, "starttime":Ljava/lang/String;
    const-string v25, "expireTime"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 420
    .local v16, "overDate":Ljava/lang/String;
    const-string v25, "interval"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 421
    .local v8, "interval":J
    const-string v25, "messageText"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 423
    .local v12, "msg":Ljava/lang/String;
    new-instance v15, Lcom/tianmashikong/notification/NetNotification;

    invoke-direct {v15}, Lcom/tianmashikong/notification/NetNotification;-><init>()V

    .line 425
    .local v15, "nno":Lcom/tianmashikong/notification/NetNotification;
    iput-object v12, v15, Lcom/tianmashikong/notification/NetNotification;->_content:Ljava/lang/String;

    .line 426
    move-object/from16 v0, v16

    iput-object v0, v15, Lcom/tianmashikong/notification/NetNotification;->_endTime:Ljava/lang/String;

    .line 427
    iput-wide v8, v15, Lcom/tianmashikong/notification/NetNotification;->_interval:J

    .line 428
    const/16 v25, 0x1

    move/from16 v0, v25

    iput v0, v15, Lcom/tianmashikong/notification/NetNotification;->_mode:I

    .line 429
    iput-object v13, v15, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    .line 430
    move-object/from16 v0, v22

    iput-object v0, v15, Lcom/tianmashikong/notification/NetNotification;->_startTime:Ljava/lang/String;

    .line 431
    const-string v25, "title"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    iput-object v0, v15, Lcom/tianmashikong/notification/NetNotification;->_title:Ljava/lang/String;

    .line 442
    sget-object v25, Lcom/tianmashikong/notification/NetPushPlugin;->_Notificationlist:Ljava/util/Hashtable;

    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    invoke-static {}, Lcom/tianmashikong/notification/NetPushPlugin;->save()V

    .line 445
    invoke-static {v15}, Lcom/tianmashikong/notification/NetPushPlugin;->SetPush(Lcom/tianmashikong/notification/NetNotification;)V

    .line 446
    const-string v25, "111111111111"

    invoke-static/range {v25 .. v25}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 447
    const-string v25, "messageID"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    sput-object v25, Lcom/tianmashikong/notification/NetPushService;->_lastMsgId:Ljava/lang/String;

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tianmashikong/notification/NetPushService$ServiceThread;->this$0:Lcom/tianmashikong/notification/NetPushService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/tianmashikong/notification/NetPushService;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    sget-object v26, Lcom/tianmashikong/notification/NetPushService;->_lastMsgId:Ljava/lang/String;

    invoke-static/range {v25 .. v26}, Lcom/tianmashikong/notification/NetPushPlugin;->SaveLastMsgId(Landroid/content/Context;Ljava/lang/String;)V

    .line 451
    const-string v25, "last_one"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "1"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 453
    const-string v25, "get net push over"

    invoke-static/range {v25 .. v25}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 457
    .end local v8    # "interval":J
    .end local v12    # "msg":Ljava/lang/String;
    .end local v13    # "msgid":Ljava/lang/String;
    .end local v14    # "msgjs":Lorg/json/JSONObject;
    .end local v15    # "nno":Lcom/tianmashikong/notification/NetNotification;
    .end local v16    # "overDate":Ljava/lang/String;
    .end local v20    # "retjs":Lorg/json/JSONObject;
    .end local v22    # "starttime":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 459
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 378
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v19    # "ret":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 380
    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v25, "sleep2 error"

    invoke-static/range {v25 .. v25}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 399
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 401
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method
