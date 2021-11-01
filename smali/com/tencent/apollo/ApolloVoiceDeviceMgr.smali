.class public Lcom/tencent/apollo/ApolloVoiceDeviceMgr;
.super Ljava/lang/Object;
.source "ApolloVoiceDeviceMgr.java"


# static fields
.field private static audioManager:Landroid/media/AudioManager; = null

.field private static isUsedBlue:Z = false

.field private static isblueConnect:Z = false

.field private static mCurrVoipState:Z = false

.field private static mHeadSetReceiver:Landroid/content/BroadcastReceiver; = null

.field protected static mIsOpenCommuntication:Z = false

.field protected static mSpeakerphoneOn:Z = false

.field private static m_blueAdapt:Landroid/bluetooth/BluetoothAdapter; = null

.field private static mainActivity:Landroid/app/Activity; = null

.field private static mctx:Landroid/content/Context; = null

.field private static preState:Z = false

.field private static final tag:Ljava/lang/String; = "apolloVoice"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 21
    sput-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    .line 23
    sput-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mainActivity:Landroid/app/Activity;

    .line 24
    sput-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    .line 25
    sput-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->m_blueAdapt:Landroid/bluetooth/BluetoothAdapter;

    .line 26
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->isblueConnect:Z

    .line 27
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->isUsedBlue:Z

    .line 31
    :try_start_0
    const-string v0, "apollo_voice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    .line 252
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsOpenCommuntication:Z

    .line 253
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mCurrVoipState:Z

    .line 254
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->preState:Z

    .line 260
    new-instance v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$1;

    invoke-direct {v0}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr$1;-><init>()V

    sput-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mHeadSetReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "load library failed!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ApolloVoiceDeviceEnterVoipMode(I)V
    .locals 3

    .prologue
    .line 179
    const-string v0, "apolloVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apolloVoice ApolloVoiceDeviceEnterVoipMode nMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    if-lez p0, :cond_2

    .line 183
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsOpenCommuntication:Z

    .line 187
    :goto_1
    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsOpenCommuntication:Z

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 190
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    sget-boolean v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    .line 185
    :cond_2
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsOpenCommuntication:Z

    goto :goto_1
.end method

.method public static ApolloVoiceDeviceExitVoipMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 105
    const-string v2, "apolloVoice"

    const-string v3, "apolloVoice ApolloVoiceDeviceExitVoipMode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    sget-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsOpenCommuntication:Z

    if-ne v0, v2, :cond_2

    .line 109
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    .line 111
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 112
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->IsHeadSet()Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 118
    :cond_2
    sput-boolean v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mIsOpenCommuntication:Z

    goto :goto_0

    :cond_3
    move v0, v1

    .line 112
    goto :goto_1
.end method

.method public static ApolloVoiceDeviceInit(Landroid/content/Context;Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    const-string v0, "apolloVoice"

    const-string v1, "apolloVoice ApolloVoiceDeviceInit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    sput-object p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    .line 54
    sput-object p1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mainActivity:Landroid/app/Activity;

    .line 56
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 58
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    .line 62
    :cond_2
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    .line 64
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 65
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    .line 67
    :cond_3
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->registerHeadsetPlugReceiver()V

    .line 68
    invoke-static {p0}, Lcom/tencent/apollo/ApolloVoiceConfig;->SetContext(Landroid/content/Context;)V

    .line 69
    invoke-static {p0}, Lcom/tencent/apollo/ApolloVoiceUDID;->SetContext(Landroid/content/Context;)V

    .line 70
    invoke-static {p0}, Lcom/tencent/apollo/ApolloVoiceNetStatus;->SetContext(Landroid/content/Context;)V

    .line 72
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->m_blueAdapt:Landroid/bluetooth/BluetoothAdapter;

    .line 75
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->isblueConnect:Z

    .line 77
    const-string v0, "apolloVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apollovoicemanager:: cur bluetooth state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->isblueConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static ApolloVoiceDeviceRefresh()V
    .locals 2

    .prologue
    .line 92
    const-string v0, "apolloVoice"

    const-string v1, "apolloVoice ApolloVoiceDeviceRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 98
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    .line 100
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static ApolloVoiceDeviceSetMode(I)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 380
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 382
    const-string v0, "apolloVoice"

    const-string v3, "apolloVoiceDevice::audioManager is null ..\n"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 385
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    .line 386
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 388
    const-string v0, "apolloVoice"

    const-string v2, "apolloVoiceDevice::get audioManager null....\n"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 406
    :goto_0
    return v0

    .line 394
    :cond_0
    const-string v0, "apolloVoice"

    const-string v2, "apolloVoiceDevice::context is null....\n"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 395
    goto :goto_0

    .line 398
    :cond_1
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 399
    if-eq v0, p0, :cond_2

    .line 401
    const-string v1, "apolloVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apolloVoiceDevice::cur phone mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setMode(I)V

    .line 404
    :cond_2
    invoke-static {v2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceSetSpeakerOn(Z)V

    .line 405
    const-string v0, "apolloVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apolloVoiceDevice::set phone mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 406
    goto :goto_0
.end method

.method private static ApolloVoiceDeviceStartBlue()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 128
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const-string v0, "apolloVoice"

    const-string v1, "ApolloVoiceDeviceManager::set blue  ...\n"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->isblueConnect:Z

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    sput-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    .line 134
    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    if-eqz v0, :cond_2

    .line 136
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 138
    :cond_2
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    .line 139
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 140
    const-string v2, "apolloVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set bluetoothSco ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const-string v2, "apolloVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "blue cur mode ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-nez v0, :cond_0

    .line 144
    if-eq v1, v5, :cond_3

    .line 146
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setMode(I)V

    .line 148
    :cond_3
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    goto :goto_0
.end method

.method public static ApolloVoiceDeviceUninit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 82
    sput-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mainActivity:Landroid/app/Activity;

    .line 83
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->unregisterHeadsetPlugReceiver()V

    .line 85
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    .line 86
    sput-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    .line 87
    sput-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    .line 89
    :cond_0
    return-void
.end method

.method public static ApolloVoiceGetCurrMode()I
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 173
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    .line 175
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public static ApolloVoiceSetSpeakerOn(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 365
    const-string v0, "apolloVoice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apolloVoiceDevice::SetSpeakerOn is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 376
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->IsHeadSet()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->IsBlueSet()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 370
    :cond_1
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 371
    sput-boolean v3, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    goto :goto_0

    .line 374
    :cond_2
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 375
    sput-boolean p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    goto :goto_0
.end method

.method public static HaveMicrophonePermission()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 412
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 440
    :goto_0
    return v0

    .line 425
    :cond_0
    const-string v2, "apolloVoice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_2

    .line 427
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    const-string v3, "android.permission.RECORD_AUDIO"

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    const-string v2, "apolloVoice"

    const-string v3, "No microphone permission"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mainActivity:Landroid/app/Activity;

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v1, v0

    const/16 v3, 0x64

    invoke-static {v2, v1, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 435
    :cond_1
    const-string v0, "apolloVoice"

    const-string v2, "Hava microphone permission"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 436
    goto :goto_0

    :cond_2
    move v0, v1

    .line 440
    goto :goto_0
.end method

.method private static IsBlueSet()Z
    .locals 1

    .prologue
    .line 123
    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->isblueConnect:Z

    return v0
.end method

.method private static IsHeadSet()Z
    .locals 1

    .prologue
    .line 158
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static SetpreVoipMode(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 257
    if-ne p0, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mCurrVoipState:Z

    .line 258
    return-void

    .line 257
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    .prologue
    .line 19
    sput-boolean p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->isblueConnect:Z

    return p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->isUsedBlue:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    .prologue
    .line 19
    sput-boolean p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->isUsedBlue:Z

    return p0
.end method

.method static synthetic access$200()Landroid/media/AudioManager;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->audioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mCurrVoipState:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->preState:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    .prologue
    .line 19
    sput-boolean p0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->preState:Z

    return p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->IsHeadSet()Z

    move-result v0

    return v0
.end method

.method private static registerHeadsetPlugReceiver()V
    .locals 4

    .prologue
    .line 232
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 235
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 236
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 240
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    sget-object v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mHeadSetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string v1, "apolloVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registe headset failed!!! The exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static unregisterHeadsetPlugReceiver()V
    .locals 4

    .prologue
    .line 221
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 224
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mHeadSetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 225
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mctx:Landroid/content/Context;

    sget-object v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mHeadSetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    const-string v1, "apolloVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registe headset failed!!! The exception is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
