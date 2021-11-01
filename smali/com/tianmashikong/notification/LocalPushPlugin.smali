.class public Lcom/tianmashikong/notification/LocalPushPlugin;
.super Ljava/lang/Object;
.source "LocalPushPlugin.java"


# static fields
.field public static _nation:Lcom/tianmashikong/notification/LocalPushNotification; = null

.field private static final monday:Ljava/lang/String; = "2015-3-1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/tianmashikong/notification/LocalPushPlugin;->_nation:Lcom/tianmashikong/notification/LocalPushNotification;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CancelAllPush()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/tianmashikong/notification/LocalPushPlugin;->_nation:Lcom/tianmashikong/notification/LocalPushNotification;

    if-eqz v0, :cond_0

    .line 37
    sget-object v0, Lcom/tianmashikong/notification/LocalPushPlugin;->_nation:Lcom/tianmashikong/notification/LocalPushNotification;

    invoke-virtual {v0}, Lcom/tianmashikong/notification/LocalPushNotification;->cancelAllLocals()V

    .line 39
    :cond_0
    return-void
.end method

.method public static Init(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 21
    sget-object v0, Lcom/tianmashikong/notification/LocalPushPlugin;->_nation:Lcom/tianmashikong/notification/LocalPushNotification;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/tianmashikong/notification/LocalPushNotification;

    invoke-direct {v0, p0}, Lcom/tianmashikong/notification/LocalPushNotification;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/tianmashikong/notification/LocalPushPlugin;->_nation:Lcom/tianmashikong/notification/LocalPushNotification;

    .line 24
    :cond_0
    return-void
.end method

.method public static InitBySerivice(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "clazName"    # Ljava/lang/String;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/tianmashikong/notification/LocalPushPlugin;->_nation:Lcom/tianmashikong/notification/LocalPushNotification;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/tianmashikong/notification/LocalPushNotification;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/tianmashikong/notification/LocalPushNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Landroid/content/Context;)V

    sput-object v0, Lcom/tianmashikong/notification/LocalPushPlugin;->_nation:Lcom/tianmashikong/notification/LocalPushNotification;

    .line 32
    :cond_0
    return-void
.end method

.method public static SetCallUserBackPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 12
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "year"    # I
    .param p4, "month"    # I
    .param p5, "day"    # I
    .param p6, "hour"    # I
    .param p7, "minute"    # I
    .param p8, "second"    # I

    .prologue
    .line 114
    sget-object v0, Lcom/tianmashikong/notification/LocalPushPlugin;->_nation:Lcom/tianmashikong/notification/LocalPushNotification;

    const-string v10, ""

    const/4 v11, 0x1

    move v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move-object v7, p0

    move-object v8, p1

    move-object v9, p2

    invoke-virtual/range {v0 .. v11}, Lcom/tianmashikong/notification/LocalPushNotification;->scheduleLocal(IIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    return-void
.end method

.method public static SetDailyPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 24
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .param p6, "overDate"    # Ljava/lang/String;

    .prologue
    .line 65
    const v9, 0x15180

    .line 66
    .local v9, "durtime":I
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 72
    .local v20, "bartDateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v22

    .line 73
    .local v22, "dd":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v21

    check-cast v21, Ljava/util/GregorianCalendar;

    .line 74
    .local v21, "date":Ljava/util/GregorianCalendar;
    invoke-virtual/range {v21 .. v22}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 75
    sget-object v2, Lcom/tianmashikong/notification/LocalPushPlugin;->_nation:Lcom/tianmashikong/notification/LocalPushNotification;

    const/16 v3, 0x7df

    const/4 v4, 0x3

    const/16 v5, 0x10

    .line 76
    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    const/4 v6, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    add-int/lit8 v11, v6, 0x1

    const/4 v6, 0x5

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    const/16 v6, 0xb

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v13

    const/16 v6, 0xc

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v14

    const/16 v6, 0xd

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v15

    .line 77
    const-string v19, ""

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    .line 75
    invoke-virtual/range {v2 .. v19}, Lcom/tianmashikong/notification/LocalPushNotification;->scheduleLocalRepeat(IIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v21    # "date":Ljava/util/GregorianCalendar;
    .end local v22    # "dd":Ljava/util/Date;
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v23

    .line 81
    .local v23, "e":Ljava/text/ParseException;
    invoke-virtual/range {v23 .. v23}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static SetPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 26
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "starttime"    # Ljava/lang/String;
    .param p4, "overDate"    # Ljava/lang/String;
    .param p5, "durtime"    # I

    .prologue
    .line 43
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 48
    .local v20, "bartDateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v24

    .line 49
    .local v24, "st":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v25

    check-cast v25, Ljava/util/GregorianCalendar;

    .line 50
    .local v25, "stdate":Ljava/util/GregorianCalendar;
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 51
    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v22

    .line 52
    .local v22, "dd":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v21

    check-cast v21, Ljava/util/GregorianCalendar;

    .line 53
    .local v21, "date":Ljava/util/GregorianCalendar;
    invoke-virtual/range {v21 .. v22}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 54
    sget-object v2, Lcom/tianmashikong/notification/LocalPushPlugin;->_nation:Lcom/tianmashikong/notification/LocalPushNotification;

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    const/16 v6, 0xb

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    const/16 v7, 0xc

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    const/16 v8, 0xd

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v8

    .line 55
    const/4 v9, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    const/4 v9, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v9

    add-int/lit8 v11, v9, 0x1

    const/4 v9, 0x5

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    const/16 v9, 0xb

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v13

    const/16 v9, 0xc

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v14

    const/16 v9, 0xd

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v15

    .line 56
    const-string v19, ""

    move/from16 v9, p5

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    .line 54
    invoke-virtual/range {v2 .. v19}, Lcom/tianmashikong/notification/LocalPushNotification;->scheduleLocalRepeat(IIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .end local v21    # "date":Ljava/util/GregorianCalendar;
    .end local v22    # "dd":Ljava/util/Date;
    .end local v24    # "st":Ljava/util/Date;
    .end local v25    # "stdate":Ljava/util/GregorianCalendar;
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v23

    .line 60
    .local v23, "e":Ljava/text/ParseException;
    invoke-virtual/range {v23 .. v23}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static SetWeakPush(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
    .locals 25
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "weekday"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .param p7, "overDate"    # Ljava/lang/String;

    .prologue
    .line 89
    const v9, 0x93a80

    .line 90
    .local v9, "durtime":I
    const-string v2, "2015-3-1"

    const-string v6, "-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 91
    .local v24, "temp":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 92
    .local v3, "yea":I
    const/4 v2, 0x1

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 93
    .local v4, "mon":I
    const/4 v2, 0x2

    aget-object v2, v24, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int v5, v2, p3

    .line 95
    .local v5, "day":I
    new-instance v20, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 97
    .local v20, "bartDateFormat":Ljava/text/SimpleDateFormat;
    :try_start_0
    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v22

    .line 98
    .local v22, "dd":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v21

    check-cast v21, Ljava/util/GregorianCalendar;

    .line 99
    .local v21, "date":Ljava/util/GregorianCalendar;
    invoke-virtual/range {v21 .. v22}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 100
    sget-object v2, Lcom/tianmashikong/notification/LocalPushPlugin;->_nation:Lcom/tianmashikong/notification/LocalPushNotification;

    .line 101
    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v10

    const/4 v6, 0x2

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    add-int/lit8 v11, v6, 0x1

    const/4 v6, 0x5

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v12

    const/16 v6, 0xb

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v13

    const/16 v6, 0xc

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v14

    const/16 v6, 0xd

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v15

    .line 102
    const-string v19, ""

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    .line 100
    invoke-virtual/range {v2 .. v19}, Lcom/tianmashikong/notification/LocalPushNotification;->scheduleLocalRepeat(IIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v21    # "date":Ljava/util/GregorianCalendar;
    .end local v22    # "dd":Ljava/util/Date;
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v23

    .line 106
    .local v23, "e":Ljava/text/ParseException;
    invoke-virtual/range {v23 .. v23}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public static onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 1
    .param p0, "father"    # Landroid/app/Activity;
    .param p1, "hasFocus"    # Z

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 119
    if-eqz p1, :cond_0

    .line 121
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tianmashikong/notification/AlarmReceiver;->mAppRunning:Z

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tianmashikong/notification/AlarmReceiver;->mAppRunning:Z

    goto :goto_0
.end method
