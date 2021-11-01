.class Lcom/tianmashikong/tool/TMUtils$1;
.super Ljava/lang/Object;
.source "TMUtils.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/tool/TMUtils;->StartCheckTTSResult(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 7
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 281
    if-nez p1, :cond_3

    .line 283
    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->access$0()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v0

    .line 284
    .local v0, "result":I
    const-string v1, "TTS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isLanguageAvailable:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    if-ne v0, v4, :cond_2

    .line 287
    :cond_0
    invoke-static {v5}, Lcom/tianmashikong/tool/TMUtils;->access$1(Z)V

    .line 288
    const-string v1, "SdkPluginLayer"

    .line 289
    const-string v2, "OnCheckTTSCallback"

    const-string v3, "false"

    .line 288
    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->access$0()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 291
    invoke-static {v6}, Lcom/tianmashikong/tool/TMUtils;->access$2(Landroid/speech/tts/TextToSpeech;)V

    .line 308
    .end local v0    # "result":I
    :cond_1
    :goto_0
    return-void

    .line 295
    .restart local v0    # "result":I
    :cond_2
    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->access$0()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 296
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tianmashikong/tool/TMUtils;->access$1(Z)V

    .line 297
    const-string v1, "SdkPluginLayer"

    .line 298
    const-string v2, "OnCheckTTSCallback"

    const-string v3, "true"

    .line 297
    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    .end local v0    # "result":I
    :cond_3
    if-ne p1, v4, :cond_1

    .line 302
    invoke-static {v5}, Lcom/tianmashikong/tool/TMUtils;->access$1(Z)V

    .line 303
    const-string v1, "SdkPluginLayer"

    .line 304
    const-string v2, "OnCheckTTSCallback"

    const-string v3, "false"

    .line 303
    invoke-static {v1, v2, v3}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->access$0()Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 306
    invoke-static {v6}, Lcom/tianmashikong/tool/TMUtils;->access$2(Landroid/speech/tts/TextToSpeech;)V

    goto :goto_0
.end method
