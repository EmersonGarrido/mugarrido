.class public Lcom/tianmashikong/notification/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field public static mAppRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tianmashikong/notification/AlarmReceiver;->mAppRunning:Z

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 37
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    sget-boolean v33, Lcom/tianmashikong/notification/AlarmReceiver;->mAppRunning:Z

    if-eqz v33, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_3

    .line 36
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v33

    const-string v34, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v33

    const-string v34, "android.intent.action.USER_PRESENT"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_3

    .line 39
    :cond_2
    new-instance v28, Ljava/util/Hashtable;

    invoke-direct/range {v28 .. v28}, Ljava/util/Hashtable;-><init>()V

    .line 40
    .local v28, "notifications":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/tianmashikong/notification/TianMaNotification;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/tianmashikong/notification/LocalPushNotification;->loadEx(Ljava/io/File;Ljava/util/Hashtable;)V

    .line 41
    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/tianmashikong/notification/LocalPushNotification;->scheduleLocal4Reboot(Landroid/content/Context;Ljava/util/Hashtable;)V

    .line 43
    :try_start_0
    new-instance v33, Ljava/lang/StringBuilder;

    const-string v34, "TMSK_GAMENAME="

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v34, "TMSK_GAMENAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lcom/tianmashikong/tool/TMUtils;->GetAppMetaValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 44
    const-string v33, "TMSK_GAMENAME"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/tianmashikong/tool/TMUtils;->GetAppMetaValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v34, "CQ"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_0

    .line 45
    invoke-static/range {p1 .. p1}, Lcom/tianmashikong/notification/NetPushService;->Open2(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v16

    .line 48
    .local v16, "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 54
    .end local v16    # "e":Ljava/lang/Exception;
    .end local v28    # "notifications":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Lcom/tianmashikong/notification/TianMaNotification;>;"
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    .line 56
    .local v12, "bundle":Landroid/os/Bundle;
    const-string v33, "mode"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 57
    .local v23, "mode":I
    const/16 v33, 0x1

    move/from16 v0, v23

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    .line 59
    const-string v33, "endYear"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 60
    .local v6, "endYear":I
    const-string v33, "endMonth"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 61
    .local v7, "endMonth":I
    const-string v33, "endDay"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 62
    .local v8, "endDay":I
    const-string v33, "endHour"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 63
    .local v9, "endHour":I
    const-string v33, "endMinute"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 64
    .local v10, "endMinute":I
    const-string v33, "endSecond"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 67
    .local v11, "endSecond":I
    if-lez v6, :cond_4

    if-lez v7, :cond_4

    if-lez v8, :cond_4

    if-ltz v9, :cond_4

    if-ltz v10, :cond_4

    if-ltz v11, :cond_4

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 70
    .local v14, "curTime":J
    invoke-static/range {v6 .. v11}, Lcom/tianmashikong/notification/LocalPushNotification;->getMills(IIIIII)J

    move-result-wide v18

    .line 71
    .local v18, "endTime":J
    cmp-long v33, v18, v14

    if-ltz v33, :cond_0

    .line 77
    .end local v6    # "endYear":I
    .end local v7    # "endMonth":I
    .end local v8    # "endDay":I
    .end local v9    # "endHour":I
    .end local v10    # "endMinute":I
    .end local v11    # "endSecond":I
    .end local v14    # "curTime":J
    .end local v18    # "endTime":J
    :cond_4
    const-string v33, "message"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 78
    .local v22, "message":Ljava/lang/String;
    const-string v33, "desc"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 79
    .local v13, "desc":Ljava/lang/String;
    const-string v33, "entry"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 80
    .local v17, "entry":Ljava/lang/String;
    const-string v33, "package"

    move-object/from16 v0, v33

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 82
    .local v30, "pkgname":Ljava/lang/String;
    if-eqz v22, :cond_0

    if-eqz v17, :cond_0

    .line 84
    const/16 v27, 0x0

    .line 85
    .local v27, "notification":Landroid/app/Notification;
    const-string v33, "notification"

    move-object/from16 v0, p1

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/NotificationManager;

    .line 86
    .local v26, "nm":Landroid/app/NotificationManager;
    new-instance v32, Landroid/content/Intent;

    const-string v33, "android.intent.action.MAIN"

    invoke-direct/range {v32 .. v33}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
    .local v32, "tt":Landroid/content/Intent;
    move-object/from16 v0, v32

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v33, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const/high16 v33, 0x10200000

    invoke-virtual/range {v32 .. v33}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 90
    const-string v33, "me_from"

    const-string v34, "tuisong"

    invoke-virtual/range {v32 .. v34}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v33

    move-object/from16 v2, v32

    move/from16 v3, v34

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v29

    .line 93
    .local v29, "pendingIntent":Landroid/app/PendingIntent;
    const/16 v21, 0x0

    .line 95
    .local v21, "icon":I
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const-string v34, "ic_launcher"

    const-string v35, "drawable"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v21

    .line 100
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 101
    .local v24, "nid":J
    const/16 v20, 0x1

    .line 102
    .local v20, "hasNotificationBuilder":Z
    sget-object v33, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v33

    const/16 v34, 0xb

    move/from16 v0, v33

    move/from16 v1, v34

    if-lt v0, v1, :cond_5

    .line 103
    const/16 v20, 0x0

    .line 105
    :cond_5
    if-eqz v20, :cond_6

    .line 116
    new-instance v27, Landroid/app/Notification;

    .end local v27    # "notification":Landroid/app/Notification;
    move-object/from16 v0, v27

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 118
    .restart local v27    # "notification":Landroid/app/Notification;
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v13, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 136
    :goto_2
    const-string v33, "------------------onReceive-----------44---"

    invoke-static/range {v33 .. v33}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 137
    if-eqz v27, :cond_0

    .line 140
    move-object/from16 v0, v27

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v33, v0

    or-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v27

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 146
    move-object/from16 v0, v27

    iget v0, v0, Landroid/app/Notification;->defaults:I

    move/from16 v33, v0

    or-int/lit8 v33, v33, 0x4

    move/from16 v0, v33

    move-object/from16 v1, v27

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 149
    move-object/from16 v0, v27

    iget v0, v0, Landroid/app/Notification;->flags:I

    move/from16 v33, v0

    or-int/lit8 v33, v33, 0x10

    move/from16 v0, v33

    move-object/from16 v1, v27

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 150
    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v26

    move/from16 v1, v33

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 96
    .end local v20    # "hasNotificationBuilder":Z
    .end local v24    # "nid":J
    :catch_1
    move-exception v16

    .line 97
    .restart local v16    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 121
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v20    # "hasNotificationBuilder":Z
    .restart local v24    # "nid":J
    :cond_6
    new-instance v27, Landroid/app/Notification;

    .end local v27    # "notification":Landroid/app/Notification;
    invoke-direct/range {v27 .. v27}, Landroid/app/Notification;-><init>()V

    .line 122
    .restart local v27    # "notification":Landroid/app/Notification;
    move/from16 v0, v21

    move-object/from16 v1, v27

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 123
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 126
    :try_start_2
    new-instance v31, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const-string v35, "tianma_notification_layout"

    const-string v36, "layout"

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v34

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 127
    .local v31, "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const-string v34, "tianma_notification_icon"

    const-string v35, "id"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v33

    move-object/from16 v0, v31

    move/from16 v1, v33

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v33

    const-string v34, "tianma_notification_text"

    const-string v35, "id"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v33

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    invoke-direct/range {v34 .. v35}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v35, "\n"

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move/from16 v1, v33

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 130
    move-object/from16 v0, v31

    move-object/from16 v1, v27

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 131
    .end local v31    # "remoteViews":Landroid/widget/RemoteViews;
    :catch_2
    move-exception v16

    .line 132
    .restart local v16    # "e":Ljava/lang/Exception;
    const/16 v27, 0x0

    goto/16 :goto_2
.end method
