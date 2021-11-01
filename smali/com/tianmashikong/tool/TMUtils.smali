.class public Lcom/tianmashikong/tool/TMUtils;
.super Ljava/lang/Object;
.source "TMUtils.java"


# static fields
.field private static IsTextToSpeechEnable:Z

.field private static MY_DATA_CHECK_CODE:I

.field static _UnsafePermission:[Ljava/lang/String;

.field static _debug:Ljava/lang/Boolean;

.field private static mFtpPort:I

.field private static mFtpPwd:Ljava/lang/String;

.field private static mFtpServer:Ljava/lang/String;

.field private static mFtpUser:Ljava/lang/String;

.field public static mTeleMgr:Landroid/telephony/TelephonyManager;

.field private static final paths:[Ljava/lang/String;

.field private static tts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 188
    const-string v0, "120.132.76.208"

    sput-object v0, Lcom/tianmashikong/tool/TMUtils;->mFtpServer:Ljava/lang/String;

    .line 189
    const/16 v0, 0x4e29

    sput v0, Lcom/tianmashikong/tool/TMUtils;->mFtpPort:I

    .line 190
    const-string v0, "mulog"

    sput-object v0, Lcom/tianmashikong/tool/TMUtils;->mFtpUser:Ljava/lang/String;

    .line 191
    const-string v0, "V4MPVoYYoijv2jFPOMhxWhm"

    sput-object v0, Lcom/tianmashikong/tool/TMUtils;->mFtpPwd:Ljava/lang/String;

    .line 252
    const/16 v0, 0x2711

    sput v0, Lcom/tianmashikong/tool/TMUtils;->MY_DATA_CHECK_CODE:I

    .line 264
    sput-boolean v2, Lcom/tianmashikong/tool/TMUtils;->IsTextToSpeechEnable:Z

    .line 438
    new-array v0, v5, [Ljava/lang/String;

    .line 439
    const-string v1, "SYSTEM_ALERT_WINDOW"

    aput-object v1, v0, v2

    .line 440
    const-string v1, "SYSTEM_OVERLAY_WINDOW"

    aput-object v1, v0, v3

    .line 441
    const-string v1, "INJECT_EVENTS"

    aput-object v1, v0, v4

    .line 438
    sput-object v0, Lcom/tianmashikong/tool/TMUtils;->_UnsafePermission:[Ljava/lang/String;

    .line 618
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "system/bin/su"

    aput-object v1, v0, v2

    const-string v1, "system/xbin/su"

    aput-object v1, v0, v3

    const-string v1, "system/sbin/su"

    aput-object v1, v0, v4

    sput-object v0, Lcom/tianmashikong/tool/TMUtils;->paths:[Ljava/lang/String;

    .line 1298
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/tianmashikong/tool/TMUtils;->_debug:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AssetsfileExist(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 1325
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1327
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1330
    .local v3, "names":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v4, :cond_0

    .line 1342
    .end local v2    # "i":I
    .end local v3    # "names":[Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4e0d\u5b58\u5728"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 1344
    const/4 v4, 0x0

    :goto_2
    return v4

    .line 1331
    .restart local v2    # "i":I
    .restart local v3    # "names":[Ljava/lang/String;
    :cond_0
    :try_start_1
    aget-object v4, v3, v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 1333
    const/4 v4, 0x1

    goto :goto_2

    .line 1330
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1338
    .end local v2    # "i":I
    .end local v3    # "names":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1340
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static ChannelName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 145
    const-string v2, "TM"

    .line 146
    .local v2, "channel":Ljava/lang/String;
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 150
    .local v0, "act":Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 151
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "tmsk_channel"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 156
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 152
    :catch_0
    move-exception v3

    .line 154
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static CheckSDCard()Z
    .locals 2

    .prologue
    .line 203
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 204
    const-string v1, "mounted"

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 204
    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static CheckUnsafeApp(Ljava/lang/String;)V
    .locals 18
    .param p0, "stridlist"    # Ljava/lang/String;

    .prologue
    .line 535
    move-object/from16 v10, p0

    .line 536
    .local v10, "ret":Ljava/lang/String;
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 539
    .local v1, "act":Landroid/app/Activity;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 541
    .local v11, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 543
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 544
    .local v2, "count":I
    const-string v14, "\\|"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 545
    .local v9, "packlist":[Ljava/lang/String;
    array-length v15, v9

    const/4 v14, 0x0

    :goto_0
    if-lt v14, v15, :cond_0

    .line 583
    const-string v14, "tmsktest"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "sb="

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v10

    .line 590
    .end local v2    # "count":I
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v9    # "packlist":[Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :goto_1
    const-string v14, "SdkPluginLayer"

    const-string v15, "FuckCallback"

    invoke-static {v14, v15, v10}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    return-void

    .line 545
    .restart local v2    # "count":I
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v9    # "packlist":[Ljava/lang/String;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    aget-object v8, v9, v14

    .line 546
    .local v8, "packageName":Ljava/lang/String;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "packageName="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 548
    const-string v16, ":"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v8, v16, v17

    .line 549
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "packageName2="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 550
    const/4 v6, 0x0

    .line 552
    .local v6, "packageInfo":Landroid/content/pm/PackageInfo;
    const/16 v16, 0x1000

    :try_start_2
    move/from16 v0, v16

    invoke-virtual {v7, v8, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    .line 558
    if-nez v6, :cond_2

    .line 560
    :try_start_3
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "packageName not found -"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 545
    :cond_1
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 553
    :catch_0
    move-exception v3

    .line 555
    .local v3, "e":Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Exception e="

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 586
    .end local v2    # "count":I
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "packlist":[Ljava/lang/String;
    .end local v11    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v3

    .line 588
    .restart local v3    # "e":Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Exception e="

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 563
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "count":I
    .restart local v6    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "packlist":[Ljava/lang/String;
    .restart local v11    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_4
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 564
    .local v5, "label":Ljava/lang/String;
    iget-object v13, v6, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 566
    .local v13, "usesPermissionsArray":[Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 568
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    array-length v0, v13

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_1

    .line 570
    aget-object v12, v13, v4

    .line 571
    .local v12, "usesPermissionName":Ljava/lang/String;
    invoke-static {v12}, Lcom/tianmashikong/tool/TMUtils;->IsUnsafePermission(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    if-nez v16, :cond_3

    .line 568
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 573
    :cond_3
    if-lez v2, :cond_4

    .line 574
    const-string v16, "*"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :cond_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "-"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 579
    add-int/lit8 v2, v2, 0x1

    .line 580
    goto :goto_2
.end method

.method public static DoDestroy(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 336
    sget-object v0, Lcom/tianmashikong/tool/TMUtils;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 338
    sget-object v0, Lcom/tianmashikong/tool/TMUtils;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 339
    const/4 v0, 0x0

    sput-object v0, Lcom/tianmashikong/tool/TMUtils;->tts:Landroid/speech/tts/TextToSpeech;

    .line 341
    :cond_0
    return-void
.end method

.method public static FuckCoinWorker(Ljava/lang/String;)V
    .locals 3
    .param p0, "stridlist"    # Ljava/lang/String;

    .prologue
    .line 455
    const-string v2, "tmsktest"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 460
    .local v0, "act":Landroid/app/Activity;
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tianmashikong/tool/TMUtils$2;

    invoke-direct {v2, p0, v0}, Lcom/tianmashikong/tool/TMUtils$2;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 516
    .local v1, "td":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    .end local v1    # "td":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 518
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static GetAppMetaValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "act"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1309
    const-string v2, ""

    .line 1314
    .local v2, "value":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1315
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1321
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 1316
    :catch_0
    move-exception v1

    .line 1319
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->PlatName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static GetAppStartType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 601
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 603
    .local v1, "it":Landroid/content/Intent;
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "pack":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "lenovo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 605
    const-string v3, "0"

    .line 615
    :goto_0
    return-object v3

    .line 606
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    .line 607
    .local v0, "cate":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.intent.category.DEFAULT"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 609
    :cond_1
    const-string v3, "0"

    goto :goto_0

    .line 611
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "me_from"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 613
    const-string v3, "0"

    goto :goto_0

    .line 615
    :cond_3
    const-string v3, "1"

    goto :goto_0
.end method

.method public static GetIsMoniqiInfo()Ljava/lang/String;
    .locals 2

    .prologue
    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->getBuildInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->getCpuInfos()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->getPhoneInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetMobileScreenSize()I
    .locals 7

    .prologue
    .line 346
    sget-object v5, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 347
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 351
    .local v0, "display":Landroid/view/Display;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xd

    if-lt v5, v6, :cond_0

    .line 352
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 353
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 354
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 355
    .local v3, "width":I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 361
    .end local v2    # "size":Landroid/graphics/Point;
    .local v1, "height":I
    :goto_0
    return v3

    .line 357
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 358
    .restart local v3    # "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method public static GetScreenHeight()I
    .locals 7

    .prologue
    .line 384
    sget-object v5, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 385
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 389
    .local v0, "display":Landroid/view/Display;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xd

    if-lt v5, v6, :cond_0

    .line 390
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 391
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 392
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 393
    .local v3, "width":I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 399
    .end local v2    # "size":Landroid/graphics/Point;
    .local v1, "height":I
    :goto_0
    return v1

    .line 395
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 396
    .restart local v3    # "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method public static GetScreenWidth()I
    .locals 7

    .prologue
    .line 365
    sget-object v5, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 366
    .local v4, "window":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 370
    .local v0, "display":Landroid/view/Display;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xd

    if-lt v5, v6, :cond_0

    .line 371
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 372
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 373
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 374
    .local v3, "width":I
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 380
    .end local v2    # "size":Landroid/graphics/Point;
    .local v1, "height":I
    :goto_0
    return v3

    .line 376
    .end local v1    # "height":I
    .end local v3    # "width":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 377
    .restart local v3    # "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .restart local v1    # "height":I
    goto :goto_0
.end method

.method public static GetUnUsedMem(Landroid/app/Activity;)J
    .locals 4
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 194
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 195
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 196
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 197
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v2
.end method

.method public static GetVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 161
    const-string v0, ""

    .line 163
    .local v0, "name":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 164
    .local v2, "pm":Landroid/content/pm/PackageManager;
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 165
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v0

    .line 166
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static IMEI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1351
    const-string v1, ""

    .line 1352
    .local v1, "imei":Ljava/lang/String;
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1353
    .local v0, "ctx":Landroid/app/Activity;
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1354
    .local v2, "tel":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 1356
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1373
    :cond_0
    return-object v1
.end method

.method public static IMSI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1377
    const-string v1, ""

    .line 1378
    .local v1, "imsi":Ljava/lang/String;
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 1379
    .local v0, "ctx":Landroid/app/Activity;
    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1380
    .local v2, "tel":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 1382
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 1384
    :cond_0
    return-object v1
.end method

.method public static InitTelephony()V
    .locals 3

    .prologue
    .line 180
    :try_start_0
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    sput-object v1, Lcom/tianmashikong/tool/TMUtils;->mTeleMgr:Landroid/telephony/TelephonyManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 184
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "tmsk"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static IsStartCpuMemLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 833
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/tianmashikong/tool/TMUtils;->startCpuMemLog(Ljava/lang/String;Landroid/app/Activity;)V

    .line 835
    return-void
.end method

.method static IsUnsafePermission(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/tianmashikong/tool/TMUtils;->_UnsafePermission:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 450
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_1
    return-object v1

    .line 447
    :cond_0
    sget-object v1, Lcom/tianmashikong/tool/TMUtils;->_UnsafePermission:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    .line 445
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static IsUploadCpumemlog(Ljava/lang/String;I)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "agr"    # I

    .prologue
    .line 823
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 826
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/tianmashikong/tool/TMUtils;->UploadCpumemlog(Ljava/lang/String;Landroid/app/Activity;)V

    .line 829
    :cond_0
    return-void
.end method

.method public static Log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1301
    sget-object v0, Lcom/tianmashikong/tool/TMUtils;->_debug:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1303
    const-string v0, "tmsk"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_0
    return-void
.end method

.method public static PlatName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 108
    const-string v3, "TM"

    .line 109
    .local v3, "plat":Ljava/lang/String;
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 113
    .local v0, "act":Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 114
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 115
    const/16 v6, 0x80

    .line 114
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 116
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "tmsk_sdkname"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 124
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v3

    .line 118
    :catch_0
    move-exception v2

    .line 121
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static SendMail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "psw"    # Ljava/lang/String;
    .param p2, "tomail"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "content"    # Ljava/lang/String;

    .prologue
    .line 1277
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/tianmashikong/tool/TMUtils$9;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tianmashikong/tool/TMUtils$9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1294
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1296
    return-void
.end method

.method public static SpeakText(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 327
    const-string v0, "TTS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "text:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v0, Lcom/tianmashikong/tool/TMUtils;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tianmashikong/tool/TMUtils;->IsTextToSpeechEnable:Z

    if-eqz v0, :cond_0

    .line 330
    sget-object v0, Lcom/tianmashikong/tool/TMUtils;->tts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 332
    :cond_0
    return-void
.end method

.method public static StartCheckTTS(Landroid/app/Activity;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 256
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 259
    .local v0, "checkIntent":Landroid/content/Intent;
    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    sget v1, Lcom/tianmashikong/tool/TMUtils;->MY_DATA_CHECK_CODE:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 261
    const-string v1, "TTS"

    const-string v2, "StartCheckTTS"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method

.method public static StartCheckTTSResult(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 8
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 267
    const-string v3, "TTS"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "StartCheckTTSResult:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "args":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 271
    aget-object v3, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 272
    .local v1, "requestCode":I
    aget-object v3, v0, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 273
    .local v2, "resultCode":I
    sget v3, Lcom/tianmashikong/tool/TMUtils;->MY_DATA_CHECK_CODE:I

    if-ne v1, v3, :cond_0

    .line 275
    if-ne v2, v7, :cond_1

    .line 277
    new-instance v3, Landroid/speech/tts/TextToSpeech;

    new-instance v4, Lcom/tianmashikong/tool/TMUtils$1;

    invoke-direct {v4}, Lcom/tianmashikong/tool/TMUtils$1;-><init>()V

    invoke-direct {v3, p0, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v3, Lcom/tianmashikong/tool/TMUtils;->tts:Landroid/speech/tts/TextToSpeech;

    .line 323
    .end local v1    # "requestCode":I
    .end local v2    # "resultCode":I
    :cond_0
    :goto_0
    return-void

    .line 316
    .restart local v1    # "requestCode":I
    .restart local v2    # "resultCode":I
    :cond_1
    sput-boolean v6, Lcom/tianmashikong/tool/TMUtils;->IsTextToSpeechEnable:Z

    .line 318
    const-string v3, "SdkPluginLayer"

    .line 319
    const-string v4, "OnCheckTTSCallback"

    const-string v5, "false"

    .line 318
    invoke-static {v3, v4, v5}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static TMGameId()Ljava/lang/String;
    .locals 7

    .prologue
    .line 129
    const-string v3, "0"

    .line 130
    .local v3, "gameid":Ljava/lang/String;
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 134
    .local v0, "act":Landroid/app/Activity;
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 135
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v6, "tmsk_gameid"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 140
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v3

    .line 136
    :catch_0
    move-exception v2

    .line 138
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static UploadCpumemlog(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/cpumem/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "dirs":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/tianmashikong/tool/TMUtils$5;

    invoke-direct {v3}, Lcom/tianmashikong/tool/TMUtils$5;-><init>()V

    invoke-virtual {v2, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 816
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/tianmashikong/tool/TMUtils;->UploadToFtp(Landroid/app/Activity;[Ljava/io/File;Ljava/lang/Boolean;)V

    .line 817
    return-void
.end method

.method public static UploadFPS(Ljava/lang/String;)V
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 752
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/tianmashikong/tool/TMUtils$3;

    invoke-direct {v2}, Lcom/tianmashikong/tool/TMUtils$3;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 761
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 766
    :goto_0
    return-void

    .line 764
    :cond_0
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/tianmashikong/tool/TMUtils;->UploadToFtp(Landroid/app/Activity;[Ljava/io/File;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public static UploadToFtp(Landroid/app/Activity;[Ljava/io/File;Ljava/lang/Boolean;)V
    .locals 2
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "files"    # [Ljava/io/File;
    .param p2, "del"    # Ljava/lang/Boolean;

    .prologue
    .line 769
    if-nez p1, :cond_0

    .line 801
    :goto_0
    return-void

    .line 772
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/tianmashikong/tool/TMUtils$4;

    invoke-direct {v1, p1, p2}, Lcom/tianmashikong/tool/TMUtils$4;-><init>([Ljava/io/File;Ljava/lang/Boolean;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 800
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static Wifi_SSID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1388
    const-string v0, ""

    .line 1389
    .local v0, "ssid":Ljava/lang/String;
    sget-object v3, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1390
    .local v2, "wifimgr":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_0

    .line 1392
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1393
    .local v1, "wif":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    .line 1394
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-le v3, v4, :cond_0

    .line 1396
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1398
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1402
    .end local v1    # "wif":Landroid/net/wifi/WifiInfo;
    :cond_0
    return-object v0
.end method

.method public static Writefile(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 404
    const-string v2, "orderrecard"

    .line 405
    .local v2, "orderfile":Ljava/lang/String;
    const/4 v0, 0x0

    .line 408
    .local v0, "dos":Ljava/io/FileWriter;
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    .end local v0    # "dos":Ljava/io/FileWriter;
    .local v1, "dos":Ljava/io/FileWriter;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 411
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 419
    if-eqz v1, :cond_2

    .line 421
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 422
    :goto_0
    const/4 v0, 0x0

    .line 425
    .end local v1    # "dos":Ljava/io/FileWriter;
    .restart local v0    # "dos":Ljava/io/FileWriter;
    :cond_0
    :goto_1
    return-void

    .line 413
    :catch_0
    move-exception v3

    .line 419
    :goto_2
    if-eqz v0, :cond_0

    .line 421
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 422
    :goto_3
    const/4 v0, 0x0

    goto :goto_1

    .line 418
    :catchall_0
    move-exception v3

    .line 419
    :goto_4
    if-eqz v0, :cond_1

    .line 421
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 422
    :goto_5
    const/4 v0, 0x0

    .line 424
    :cond_1
    throw v3

    .line 421
    :catch_1
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v4

    goto :goto_5

    .end local v0    # "dos":Ljava/io/FileWriter;
    .restart local v1    # "dos":Ljava/io/FileWriter;
    :catch_3
    move-exception v3

    goto :goto_0

    .line 418
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "dos":Ljava/io/FileWriter;
    .restart local v0    # "dos":Ljava/io/FileWriter;
    goto :goto_4

    .line 413
    .end local v0    # "dos":Ljava/io/FileWriter;
    .restart local v1    # "dos":Ljava/io/FileWriter;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "dos":Ljava/io/FileWriter;
    .restart local v0    # "dos":Ljava/io/FileWriter;
    goto :goto_2

    .end local v0    # "dos":Ljava/io/FileWriter;
    .restart local v1    # "dos":Ljava/io/FileWriter;
    :cond_2
    move-object v0, v1

    .end local v1    # "dos":Ljava/io/FileWriter;
    .restart local v0    # "dos":Ljava/io/FileWriter;
    goto :goto_1
.end method

.method static synthetic access$0()Landroid/speech/tts/TextToSpeech;
    .locals 1

    .prologue
    .line 253
    sget-object v0, Lcom/tianmashikong/tool/TMUtils;->tts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .prologue
    .line 264
    sput-boolean p0, Lcom/tianmashikong/tool/TMUtils;->IsTextToSpeechEnable:Z

    return-void
.end method

.method static synthetic access$2(Landroid/speech/tts/TextToSpeech;)V
    .locals 0

    .prologue
    .line 253
    sput-object p0, Lcom/tianmashikong/tool/TMUtils;->tts:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    sget-object v0, Lcom/tianmashikong/tool/TMUtils;->mFtpServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 189
    sget v0, Lcom/tianmashikong/tool/TMUtils;->mFtpPort:I

    return v0
.end method

.method static synthetic access$5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/tianmashikong/tool/TMUtils;->mFtpUser:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/tianmashikong/tool/TMUtils;->mFtpPwd:Ljava/lang/String;

    return-object v0
.end method

.method static cleanCpuMemLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 1148
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1149
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1151
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1154
    :cond_0
    new-instance v3, Lcom/tianmashikong/tool/TMUtils$8;

    invoke-direct {v3, p1}, Lcom/tianmashikong/tool/TMUtils$8;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 1163
    .local v2, "files":[Ljava/io/File;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 1171
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :goto_1
    return-void

    .line 1163
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "files":[Ljava/io/File;
    :cond_1
    aget-object v0, v2, v3

    .line 1165
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1168
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private static getAvailableExternalMemorySize()J
    .locals 10

    .prologue
    .line 244
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 245
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 246
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 247
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 248
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    return-wide v6
.end method

.method private static getAvailableInternalMemorySize()J
    .locals 10

    .prologue
    .line 232
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    .line 233
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 234
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 235
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 236
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    return-wide v6
.end method

.method public static getAvailableMemorySize()J
    .locals 2

    .prologue
    .line 216
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, "mounted"

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 217
    if-eqz v0, :cond_0

    .line 218
    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->getAvailableExternalMemorySize()J

    move-result-wide v0

    .line 222
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->getAvailableInternalMemorySize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static getBuildInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 676
    const-string v1, "MODEL:%s,MANUFACTURER:%s,PRODUCT:%s,SDK:%s,HARDWARE:%s,DEVICE:%s,HOST:%s"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 677
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 678
    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 679
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 680
    sget-object v4, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 681
    sget-object v4, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    .line 682
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    .line 683
    sget-object v4, Landroid/os/Build;->HOST:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 676
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 684
    .local v0, "info":Ljava/lang/String;
    return-object v0
.end method

.method public static getCpuInfos()Ljava/lang/String;
    .locals 9

    .prologue
    .line 689
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 691
    .local v1, "fr":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 694
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v7, "/proc/cpuinfo"

    invoke-direct {v2, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    .end local v1    # "fr":Ljava/io/FileReader;
    .local v2, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    const/16 v7, 0x400

    invoke-direct {v4, v2, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 697
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 698
    .local v6, "str2":Ljava/lang/String;
    :goto_0
    if-nez v6, :cond_2

    .line 705
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 713
    if-eqz v4, :cond_0

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 714
    :cond_0
    :goto_1
    if-eqz v2, :cond_6

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .line 717
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v6    # "str2":Ljava/lang/String;
    .restart local v1    # "fr":Ljava/io/FileReader;
    :cond_1
    :goto_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 700
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "str2":Ljava/lang/String;
    :cond_2
    :try_start_5
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v6

    goto :goto_0

    .line 707
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "str2":Ljava/lang/String;
    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v7, "TianMa"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 713
    if-eqz v3, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 714
    :cond_3
    :goto_4
    if-eqz v1, :cond_1

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_2

    .line 712
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 713
    :goto_5
    if-eqz v3, :cond_4

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 714
    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 715
    :cond_5
    :goto_7
    throw v7

    .line 714
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "str2":Ljava/lang/String;
    :catch_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 713
    .end local v6    # "str2":Ljava/lang/String;
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v7

    goto :goto_4

    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v8

    goto :goto_6

    .line 714
    :catch_5
    move-exception v8

    goto :goto_7

    .line 713
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "str2":Ljava/lang/String;
    :catch_6
    move-exception v7

    goto :goto_1

    .line 712
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "str2":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .line 707
    .end local v1    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v0

    move-object v1, v2

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "str2":Ljava/lang/String;
    :cond_6
    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v1    # "fr":Ljava/io/FileReader;
    goto :goto_2
.end method

.method static getCpuMemLogName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "sufix"    # Ljava/lang/String;

    .prologue
    .line 1011
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 1013
    .local v4, "time":Ljava/lang/String;
    const-string v1, ""

    .line 1014
    .local v1, "imei":Ljava/lang/String;
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1015
    .local v3, "tel":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    .line 1017
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 1020
    :cond_0
    if-eqz v1, :cond_1

    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1022
    :cond_1
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 1023
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1025
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 1029
    .end local v5    # "wm":Landroid/net/wifi/WifiManager;
    :cond_2
    if-nez v1, :cond_3

    .line 1031
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    const v7, 0xf4240

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1034
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1035
    .local v2, "pkg":Ljava/lang/String;
    const/16 v6, 0x2e

    const/16 v7, 0x5f

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 1036
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, "fileName":Ljava/lang/String;
    return-object v0
.end method

.method static getDeviceCpuInfo(Ljava/lang/StringBuilder;)V
    .locals 9
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 889
    const/4 v0, 0x0

    .line 890
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 891
    .local v5, "isr":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 894
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v7, "/proc/cpuinfo"

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 895
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 896
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .local v6, "isr":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v7, 0x100

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 898
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 912
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 913
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 914
    :cond_1
    :goto_1
    if-eqz v4, :cond_8

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v0, v1

    .line 916
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    return-void

    .line 906
    :catch_0
    move-exception v2

    .line 908
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 912
    if-eqz v0, :cond_3

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 913
    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 914
    :cond_4
    :goto_5
    if-eqz v3, :cond_2

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    :catch_1
    move-exception v7

    goto :goto_2

    .line 911
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 912
    :goto_6
    if-eqz v0, :cond_5

    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 913
    :cond_5
    :goto_7
    if-eqz v5, :cond_6

    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 914
    :cond_6
    :goto_8
    if-eqz v3, :cond_7

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 915
    :cond_7
    :goto_9
    throw v7

    .line 914
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 912
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_4

    .line 913
    :catch_4
    move-exception v7

    goto :goto_5

    .line 912
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v8

    goto :goto_7

    .line 913
    :catch_6
    move-exception v8

    goto :goto_8

    .line 914
    :catch_7
    move-exception v8

    goto :goto_9

    .line 912
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_8
    move-exception v7

    goto :goto_0

    .line 913
    :catch_9
    move-exception v7

    goto :goto_1

    .line 911
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    goto :goto_6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v7

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 906
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :cond_8
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method static getDeviceTotalMemory()Ljava/lang/String;
    .locals 10

    .prologue
    .line 861
    const-string v7, ""

    .line 863
    .local v7, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .line 864
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 865
    .local v5, "isr":Ljava/io/InputStreamReader;
    const/4 v3, 0x0

    .line 868
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/proc/meminfo"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 869
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 870
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .local v6, "isr":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v8, 0x100

    invoke-direct {v1, v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 871
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v7

    .line 879
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 880
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 881
    :cond_1
    :goto_1
    if-eqz v4, :cond_8

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v0, v1

    .line 884
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    return-object v7

    .line 873
    :catch_0
    move-exception v2

    .line 875
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 879
    if-eqz v0, :cond_3

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 880
    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 881
    :cond_4
    :goto_5
    if-eqz v3, :cond_2

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    :catch_1
    move-exception v8

    goto :goto_2

    .line 878
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 879
    :goto_6
    if-eqz v0, :cond_5

    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 880
    :cond_5
    :goto_7
    if-eqz v5, :cond_6

    :try_start_c
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 881
    :cond_6
    :goto_8
    if-eqz v3, :cond_7

    :try_start_d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 882
    :cond_7
    :goto_9
    throw v8

    .line 881
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 879
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_4

    .line 880
    :catch_4
    move-exception v8

    goto :goto_5

    .line 879
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v9

    goto :goto_7

    .line 880
    :catch_6
    move-exception v9

    goto :goto_8

    .line 881
    :catch_7
    move-exception v9

    goto :goto_9

    .line 879
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_8
    move-exception v8

    goto :goto_0

    .line 880
    :catch_9
    move-exception v8

    goto :goto_1

    .line 878
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    goto :goto_6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 873
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :cond_8
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    move-object v5, v6

    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "isr":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getPhoneInfo()Ljava/lang/String;
    .locals 7

    .prologue
    .line 722
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 723
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 724
    .local v2, "strTelephoneNumber":Ljava/lang/String;
    const-string v1, ""

    .line 727
    .local v1, "operator":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 728
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 730
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 738
    :cond_1
    :goto_0
    const-string v4, "phone_number:%s,imsi:%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 733
    :catch_0
    move-exception v0

    .line 735
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "TianMa"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static getPidCpuTime(I)J
    .locals 18
    .param p0, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1244
    const-string v10, ""

    .line 1246
    .local v10, "ret":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1247
    .local v2, "br":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 1248
    .local v8, "isr":Ljava/io/InputStreamReader;
    const/4 v6, 0x0

    .line 1251
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v14, "/proc/"

    invoke-direct {v11, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "/stat"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1252
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v9, Ljava/io/InputStreamReader;

    invoke-direct {v9, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1253
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .local v9, "isr":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    const/16 v11, 0x3e8

    invoke-direct {v3, v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1255
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v10

    .line 1263
    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 1264
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 1265
    :cond_1
    :goto_1
    if-eqz v7, :cond_8

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v2, v3

    .line 1268
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1271
    .local v4, "cpuinfos":[Ljava/lang/String;
    const/16 v11, 0xd

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const/16 v11, 0xe

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v14, v14, v16

    const/16 v11, 0xf

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v14, v14, v16

    const/16 v11, 0x10

    aget-object v11, v4, v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v12, v14, v16

    .line 1272
    .local v12, "time":J
    return-wide v12

    .line 1257
    .end local v4    # "cpuinfos":[Ljava/lang/String;
    .end local v12    # "time":J
    :catch_0
    move-exception v5

    .line 1259
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1263
    if-eqz v2, :cond_3

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1264
    :cond_3
    :goto_4
    if-eqz v8, :cond_4

    :try_start_9
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1265
    :cond_4
    :goto_5
    if-eqz v6, :cond_2

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    :catch_1
    move-exception v11

    goto :goto_2

    .line 1262
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 1263
    :goto_6
    if-eqz v2, :cond_5

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1264
    :cond_5
    :goto_7
    if-eqz v8, :cond_6

    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 1265
    :cond_6
    :goto_8
    if-eqz v6, :cond_7

    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 1266
    :cond_7
    :goto_9
    throw v11

    .line 1265
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v11

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1263
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    goto :goto_4

    .line 1264
    :catch_4
    move-exception v11

    goto :goto_5

    .line 1263
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v14

    goto :goto_7

    .line 1264
    :catch_6
    move-exception v14

    goto :goto_8

    .line 1265
    :catch_7
    move-exception v14

    goto :goto_9

    .line 1263
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_8
    move-exception v11

    goto :goto_0

    .line 1264
    :catch_9
    move-exception v11

    goto :goto_1

    .line 1262
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    goto :goto_6

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v11

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 1257
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v5

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v5

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    goto :goto_3

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v5

    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "isr":Ljava/io/InputStreamReader;
    :cond_8
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    move-object v8, v9

    .end local v9    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method public static declared-synchronized getRootAhth()Ljava/lang/String;
    .locals 8

    .prologue
    .line 623
    const-class v4, Lcom/tianmashikong/tool/TMUtils;

    monitor-enter v4

    :try_start_0
    sget-object v5, Lcom/tianmashikong/tool/TMUtils;->paths:[Ljava/lang/String;

    array-length v6, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .local v1, "file":Ljava/io/File;
    .local v2, "p":Ljava/lang/String;
    :goto_0
    if-lt v3, v6, :cond_0

    .line 634
    .end local v1    # "file":Ljava/io/File;
    :goto_1
    :try_start_1
    const-string v3, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    monitor-exit v4

    return-object v3

    .line 623
    .restart local v1    # "file":Ljava/io/File;
    :cond_0
    :try_start_2
    aget-object v2, v5, v3

    .line 625
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 626
    .restart local v1    # "file":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 627
    :try_start_3
    const-string v3, "1"

    goto :goto_2

    .line 623
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 629
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TianMa"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 623
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method static getTotalCpuTime()J
    .locals 16

    .prologue
    .line 1205
    const-string v8, ""

    .line 1207
    .local v8, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1208
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 1209
    .local v6, "isr":Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 1212
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string v9, "/proc/stat"

    invoke-direct {v5, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1213
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1214
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .local v7, "isr":Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    const/16 v9, 0x3e8

    invoke-direct {v1, v7, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1215
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v8

    .line 1223
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 1224
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 1225
    :cond_1
    :goto_1
    if-eqz v5, :cond_8

    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    move-object v0, v1

    .line 1228
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :goto_2
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1230
    .local v2, "cpuinfos":[Ljava/lang/String;
    const/4 v9, 0x2

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 1231
    const/4 v9, 0x3

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1230
    add-long/2addr v12, v14

    .line 1232
    const/4 v9, 0x4

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1230
    add-long/2addr v12, v14

    .line 1233
    const/4 v9, 0x5

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1230
    add-long/2addr v12, v14

    .line 1234
    const/4 v9, 0x6

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1230
    add-long/2addr v12, v14

    .line 1235
    const/4 v9, 0x7

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1230
    add-long/2addr v12, v14

    .line 1236
    const/16 v9, 0x8

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 1230
    add-long v10, v12, v14

    .line 1238
    .local v10, "time":J
    return-wide v10

    .line 1217
    .end local v2    # "cpuinfos":[Ljava/lang/String;
    .end local v10    # "time":J
    :catch_0
    move-exception v3

    .line 1219
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1223
    if-eqz v0, :cond_3

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 1224
    :cond_3
    :goto_4
    if-eqz v6, :cond_4

    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1225
    :cond_4
    :goto_5
    if-eqz v4, :cond_2

    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_2

    .line 1222
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 1223
    :goto_6
    if-eqz v0, :cond_5

    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1224
    :cond_5
    :goto_7
    if-eqz v6, :cond_6

    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 1225
    :cond_6
    :goto_8
    if-eqz v4, :cond_7

    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 1226
    :cond_7
    :goto_9
    throw v9

    .line 1225
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 1223
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    goto :goto_4

    .line 1224
    :catch_4
    move-exception v9

    goto :goto_5

    .line 1223
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v12

    goto :goto_7

    .line 1224
    :catch_6
    move-exception v12

    goto :goto_8

    .line 1225
    :catch_7
    move-exception v12

    goto :goto_9

    .line 1223
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_8
    move-exception v9

    goto/16 :goto_0

    .line 1224
    :catch_9
    move-exception v9

    goto/16 :goto_1

    .line 1222
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v9

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v9

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_6

    .line 1217
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_a
    move-exception v3

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v3

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v3

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :cond_8
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method static startCpuLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "logfile"    # Ljava/lang/String;

    .prologue
    .line 1044
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 1045
    .local v2, "pid":I
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, "CPU_LOG_PATH":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1048
    .local v0, "CPU_LOG_FILE":Ljava/lang/String;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/tianmashikong/tool/TMUtils$7;

    invoke-direct {v4, v2, v0}, Lcom/tianmashikong/tool/TMUtils$7;-><init>(ILjava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1141
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1142
    return-void
.end method

.method public static startCpuMemLog(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 5
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 841
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/cpumem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 842
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 843
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 845
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 849
    :cond_0
    const-string v3, ".log"

    invoke-static {p0, v3}, Lcom/tianmashikong/tool/TMUtils;->cleanCpuMemLogs(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string v3, "_cpu_"

    const-string v4, ".log"

    invoke-static {p1, v3, v4}, Lcom/tianmashikong/tool/TMUtils;->getCpuMemLogName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 851
    .local v1, "fileName":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/tianmashikong/tool/TMUtils;->startCpuLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    const-string v3, "_mem_"

    const-string v4, ".log"

    invoke-static {p1, v3, v4}, Lcom/tianmashikong/tool/TMUtils;->getCpuMemLogName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 854
    .local v2, "memName":Ljava/lang/String;
    invoke-static {p1, p0, v2}, Lcom/tianmashikong/tool/TMUtils;->startMemLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method static startMemLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 920
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 921
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 923
    .local v1, "pid":I
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/tianmashikong/tool/TMUtils$6;

    invoke-direct {v3, p1, p2, v1, v0}, Lcom/tianmashikong/tool/TMUtils$6;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/ActivityManager;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1005
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1006
    return-void
.end method

.method static writeCpuMemLog(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1175
    const/4 v0, 0x0

    .line 1176
    .local v0, "br":Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 1177
    .local v4, "osw":Ljava/io/OutputStreamWriter;
    const/4 v2, 0x0

    .line 1181
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Ljava/io/OutputStreamWriter;

    invoke-direct {v5, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1183
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .local v5, "osw":Ljava/io/OutputStreamWriter;
    :try_start_2
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1184
    .end local v0    # "br":Ljava/io/BufferedWriter;
    .local v1, "br":Ljava/io/BufferedWriter;
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1185
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 1186
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1194
    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    .line 1195
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8

    .line 1196
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    .line 1197
    :cond_2
    :goto_2
    const/4 v0, 0x0

    .line 1198
    .end local v1    # "br":Ljava/io/BufferedWriter;
    .restart local v0    # "br":Ljava/io/BufferedWriter;
    const/4 v4, 0x0

    .line 1199
    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    const/4 v2, 0x0

    .line 1201
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    return-void

    .line 1189
    :catch_0
    move-exception v6

    .line 1194
    :goto_4
    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 1195
    :cond_3
    :goto_5
    if-eqz v4, :cond_4

    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 1196
    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 1197
    :cond_5
    :goto_7
    const/4 v0, 0x0

    .line 1198
    const/4 v4, 0x0

    .line 1199
    const/4 v2, 0x0

    goto :goto_3

    .line 1193
    :catchall_0
    move-exception v6

    .line 1194
    :goto_8
    if-eqz v0, :cond_6

    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 1195
    :cond_6
    :goto_9
    if-eqz v4, :cond_7

    :try_start_b
    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1196
    :cond_7
    :goto_a
    if-eqz v2, :cond_8

    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 1197
    :cond_8
    :goto_b
    const/4 v0, 0x0

    .line 1198
    const/4 v4, 0x0

    .line 1199
    const/4 v2, 0x0

    .line 1200
    throw v6

    .line 1194
    :catch_1
    move-exception v6

    goto :goto_5

    .line 1195
    :catch_2
    move-exception v6

    goto :goto_6

    .line 1196
    :catch_3
    move-exception v6

    goto :goto_7

    .line 1194
    :catch_4
    move-exception v7

    goto :goto_9

    .line 1195
    :catch_5
    move-exception v7

    goto :goto_a

    .line 1196
    :catch_6
    move-exception v7

    goto :goto_b

    .line 1194
    .end local v0    # "br":Ljava/io/BufferedWriter;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "br":Ljava/io/BufferedWriter;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    :catch_7
    move-exception v6

    goto :goto_0

    .line 1195
    :catch_8
    move-exception v6

    goto :goto_1

    .line 1196
    :catch_9
    move-exception v6

    goto :goto_2

    .line 1193
    .end local v1    # "br":Ljava/io/BufferedWriter;
    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v0    # "br":Ljava/io/BufferedWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_1
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_8

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_8

    .end local v0    # "br":Ljava/io/BufferedWriter;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "br":Ljava/io/BufferedWriter;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_3
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedWriter;
    .restart local v0    # "br":Ljava/io/BufferedWriter;
    goto :goto_8

    .line 1189
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    :catch_b
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedWriter;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v1    # "br":Ljava/io/BufferedWriter;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    :catch_c
    move-exception v6

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v4    # "osw":Ljava/io/OutputStreamWriter;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedWriter;
    .restart local v0    # "br":Ljava/io/BufferedWriter;
    goto :goto_4
.end method
