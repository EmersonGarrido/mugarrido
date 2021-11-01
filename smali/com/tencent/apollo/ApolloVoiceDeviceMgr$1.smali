.class final Lcom/tencent/apollo/ApolloVoiceDeviceMgr$1;
.super Landroid/content/BroadcastReceiver;
.source "ApolloVoiceDeviceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/apollo/ApolloVoiceDeviceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 265
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 267
    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 269
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 271
    invoke-static {v1}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$002(Z)Z

    .line 272
    const-string v1, "apolloVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bluetooth connect ,cur state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    if-nez v0, :cond_0

    .line 276
    invoke-static {v2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$002(Z)Z

    .line 277
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$100()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 279
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$200()Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 280
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$200()Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 281
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceEngine;->StopBlueTooth()I

    .line 282
    invoke-static {v2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$102(Z)Z

    .line 284
    :cond_2
    sget-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    if-nez v2, :cond_3

    .line 286
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$200()Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 287
    sput-boolean v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    .line 289
    :cond_3
    const-string v1, "apolloVoice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bluetooth disconnect,cur state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 294
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceGetCurrMode()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_6

    move v0, v1

    .line 297
    :goto_1
    const-string v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    const-string v3, "state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 300
    packed-switch v3, :pswitch_data_0

    .line 320
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$500()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_2
    sput-boolean v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    .line 323
    :cond_5
    :goto_3
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$200()Landroid/media/AudioManager;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BroadcastReceiver ACTION_HEADSET_PLUG onReceive bSetValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    const-string v1, "framework"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 294
    goto :goto_1

    .line 303
    :pswitch_0
    sput-boolean v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    .line 304
    const-string v0, "HeadSet Callback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_HEADSET_PLUG Out! Mode  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$300()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$400()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 307
    invoke-static {v1}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceDeviceEnterVoipMode(I)V

    goto :goto_3

    .line 311
    :pswitch_1
    sput-boolean v2, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    .line 312
    invoke-static {v0}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$402(Z)Z

    .line 313
    const-string v1, "HeadSet Callback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_HEADSET_PLUG In! The currVoip Mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    if-eqz v0, :cond_5

    .line 316
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceDeviceExitVoipMode()V

    goto :goto_3

    :cond_7
    move v1, v2

    .line 320
    goto :goto_2

    .line 329
    :cond_8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    const-string v0, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 333
    const-string v3, "apolloVoice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ApolloVoiceDeviceManager ::SCO cur state is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    if-ne v0, v1, :cond_9

    .line 337
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$200()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 338
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceEngine;->StartBlueTooth()I

    .line 339
    invoke-static {v1}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$102(Z)Z

    goto/16 :goto_0

    .line 341
    :cond_9
    if-nez v0, :cond_0

    .line 343
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$200()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 344
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$200()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 345
    sget-boolean v0, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$500()Z

    move-result v0

    if-nez v0, :cond_a

    .line 347
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$200()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 348
    sput-boolean v1, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->mSpeakerphoneOn:Z

    .line 350
    :cond_a
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    invoke-static {v2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$102(Z)Z

    .line 353
    invoke-static {v2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->access$002(Z)Z

    .line 354
    invoke-static {}, Lcom/tencent/apollo/ApolloVoiceEngine;->StopBlueTooth()I

    goto/16 :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
