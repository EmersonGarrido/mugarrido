.class Lcom/tianmashikong/tool/VoiceToWord$2;
.super Ljava/lang/Object;
.source "VoiceToWord.java"

# interfaces
.implements Lcom/iflytek/cloud/RecognizerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tianmashikong/tool/VoiceToWord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onBeginOfSpeech()V
    .locals 1

    .prologue
    .line 155
    const-string v0, "\u5f00\u59cb\u8bf4\u8bdd"

    invoke-static {v0}, Lcom/tianmashikong/tool/VoiceToWord;->showTip(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public onEndOfSpeech()V
    .locals 1

    .prologue
    .line 163
    const-string v0, "\u7ed3\u675f\u8bf4\u8bdd"

    invoke-static {v0}, Lcom/tianmashikong/tool/VoiceToWord;->showTip(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .locals 3
    .param p1, "error"    # Lcom/iflytek/cloud/SpeechError;

    .prologue
    .line 159
    const-string v0, "SdkPluginLayer"

    const-string v1, "RadioCallback"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public onEvent(IIILandroid/os/Bundle;)V
    .locals 0
    .param p1, "eventType"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Landroid/os/Bundle;

    .prologue
    .line 196
    return-void
.end method

.method public onResult(Lcom/iflytek/cloud/RecognizerResult;Z)V
    .locals 9
    .param p1, "results"    # Lcom/iflytek/cloud/RecognizerResult;
    .param p2, "isLast"    # Z

    .prologue
    .line 168
    invoke-virtual {p1}, Lcom/iflytek/cloud/RecognizerResult;->getResultString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tianmashikong/tool/VoiceToWord;->parseIatResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 169
    .local v5, "text":Ljava/lang/String;
    const/4 v4, 0x0

    .line 171
    .local v4, "sn":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/iflytek/cloud/RecognizerResult;->getResultString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 172
    .local v3, "resultJson":Lorg/json/JSONObject;
    const-string v6, "sn"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 177
    .end local v3    # "resultJson":Lorg/json/JSONObject;
    :goto_0
    invoke-static {}, Lcom/tianmashikong/tool/VoiceToWord;->access$0()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 179
    .local v2, "resultBuffer":Ljava/lang/StringBuffer;
    invoke-static {}, Lcom/tianmashikong/tool/VoiceToWord;->access$0()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 183
    if-eqz p2, :cond_0

    .line 184
    const-string v6, "SdkPluginLayer"

    const-string v7, "RadioCallback"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void

    .line 173
    .end local v2    # "resultBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 179
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "resultBuffer":Ljava/lang/StringBuffer;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 180
    .local v1, "key":Ljava/lang/String;
    invoke-static {}, Lcom/tianmashikong/tool/VoiceToWord;->access$0()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public onVolumeChanged(I[B)V
    .locals 0
    .param p1, "volume"    # I
    .param p2, "data"    # [B

    .prologue
    .line 191
    return-void
.end method
