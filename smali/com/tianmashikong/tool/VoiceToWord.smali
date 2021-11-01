.class public Lcom/tianmashikong/tool/VoiceToWord;
.super Ljava/lang/Object;
.source "VoiceToWord.java"


# static fields
.field private static mEngineType:Ljava/lang/String;

.field private static mIat:Lcom/iflytek/cloud/SpeechRecognizer;

.field private static mIatResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mInitListener:Lcom/iflytek/cloud/InitListener;

.field public static mLexiconListener:Lcom/iflytek/cloud/LexiconListener;

.field public static mRecognizerListener:Lcom/iflytek/cloud/RecognizerListener;

.field private static mSharedPreferences:Landroid/content/SharedPreferences;

.field private static mToast:Landroid/widget/Toast;

.field private static ret:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/tianmashikong/tool/VoiceToWord;->mIatResults:Ljava/util/HashMap;

    .line 33
    const-string v0, "cloud"

    sput-object v0, Lcom/tianmashikong/tool/VoiceToWord;->mEngineType:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/tianmashikong/tool/VoiceToWord;->ret:I

    .line 122
    new-instance v0, Lcom/tianmashikong/tool/VoiceToWord$1;

    invoke-direct {v0}, Lcom/tianmashikong/tool/VoiceToWord$1;-><init>()V

    sput-object v0, Lcom/tianmashikong/tool/VoiceToWord;->mInitListener:Lcom/iflytek/cloud/InitListener;

    .line 152
    new-instance v0, Lcom/tianmashikong/tool/VoiceToWord$2;

    invoke-direct {v0}, Lcom/tianmashikong/tool/VoiceToWord$2;-><init>()V

    sput-object v0, Lcom/tianmashikong/tool/VoiceToWord;->mRecognizerListener:Lcom/iflytek/cloud/RecognizerListener;

    .line 268
    new-instance v0, Lcom/tianmashikong/tool/VoiceToWord$3;

    invoke-direct {v0}, Lcom/tianmashikong/tool/VoiceToWord$3;-><init>()V

    sput-object v0, Lcom/tianmashikong/tool/VoiceToWord;->mLexiconListener:Lcom/iflytek/cloud/LexiconListener;

    .line 277
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static InitInfo(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Lcom/tianmashikong/tool/VoiceToWord$4;

    invoke-direct {v0, p0, p1}, Lcom/tianmashikong/tool/VoiceToWord$4;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 51
    return-void
.end method

.method public static RecordToWord(Ljava/lang/String;)V
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 82
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIatResults:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 83
    invoke-static {}, Lcom/tianmashikong/tool/VoiceToWord;->setParam()V

    .line 85
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "audio_source"

    const-string v3, "-1"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 86
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    sget-object v2, Lcom/tianmashikong/tool/VoiceToWord;->mRecognizerListener:Lcom/iflytek/cloud/RecognizerListener;

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->startListening(Lcom/iflytek/cloud/RecognizerListener;)I

    move-result v1

    sput v1, Lcom/tianmashikong/tool/VoiceToWord;->ret:I

    .line 87
    sget v1, Lcom/tianmashikong/tool/VoiceToWord;->ret:I

    if-eqz v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bc6\u522b\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tianmashikong/tool/VoiceToWord;->ret:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tianmashikong/tool/VoiceToWord;->showTip(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {p0, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 91
    .local v0, "audioData":[B
    if-eqz v0, :cond_1

    .line 92
    const-string v1, "\u5f00\u59cb\u97f3\u9891\u6d41\u8bc6\u522b"

    invoke-static {v1}, Lcom/tianmashikong/tool/VoiceToWord;->showTip(Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Lcom/iflytek/cloud/SpeechRecognizer;->writeAudio([BII)I

    .line 94
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechRecognizer;->stopListening()V

    goto :goto_0

    .line 96
    :cond_1
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechRecognizer;->cancel()V

    .line 97
    const-string v1, "\u8bfb\u53d6\u97f3\u9891\u6d41\u5931\u8d25"

    invoke-static {v1}, Lcom/tianmashikong/tool/VoiceToWord;->showTip(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static StartRadio()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/tianmashikong/tool/VoiceToWord;->mIatResults:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 58
    invoke-static {}, Lcom/tianmashikong/tool/VoiceToWord;->setParam()V

    .line 60
    sget-object v0, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mRecognizerListener:Lcom/iflytek/cloud/RecognizerListener;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/SpeechRecognizer;->startListening(Lcom/iflytek/cloud/RecognizerListener;)I

    move-result v0

    sput v0, Lcom/tianmashikong/tool/VoiceToWord;->ret:I

    .line 61
    sget v0, Lcom/tianmashikong/tool/VoiceToWord;->ret:I

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u542c\u5199\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/tianmashikong/tool/VoiceToWord;->ret:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tianmashikong/tool/VoiceToWord;->showTip(Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v0, "\u8bf7\u5f00\u59cb\u8bf4\u8bdd\u2026"

    invoke-static {v0}, Lcom/tianmashikong/tool/VoiceToWord;->showTip(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static StopRadio()V
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->stopListening()V

    .line 71
    return-void
.end method

.method static synthetic access$0()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/tianmashikong/tool/VoiceToWord;->mIatResults:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1(Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 36
    sput-object p0, Lcom/tianmashikong/tool/VoiceToWord;->mToast:Landroid/widget/Toast;

    return-void
.end method

.method static synthetic access$2(Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 34
    sput-object p0, Lcom/tianmashikong/tool/VoiceToWord;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$3(Lcom/iflytek/cloud/SpeechRecognizer;)V
    .locals 0

    .prologue
    .line 37
    sput-object p0, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    return-void
.end method

.method static synthetic access$4()Lcom/iflytek/cloud/SpeechRecognizer;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    return-object v0
.end method

.method static synthetic access$5(I)V
    .locals 0

    .prologue
    .line 35
    sput p0, Lcom/tianmashikong/tool/VoiceToWord;->ret:I

    return-void
.end method

.method static synthetic access$6()I
    .locals 1

    .prologue
    .line 35
    sget v0, Lcom/tianmashikong/tool/VoiceToWord;->ret:I

    return v0
.end method

.method public static destory()V
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->cancel()V

    .line 203
    sget-object v0, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->destroy()Z

    .line 204
    return-void
.end method

.method public static parseIatResult(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 208
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v5, "ret":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v6, Lorg/json/JSONTokener;

    invoke-direct {v6, p0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 211
    .local v6, "tokener":Lorg/json/JSONTokener;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 213
    .local v3, "joResult":Lorg/json/JSONObject;
    const-string v8, "ws"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 214
    .local v7, "words":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-lt v1, v8, :cond_0

    .line 229
    .end local v1    # "i":I
    .end local v3    # "joResult":Lorg/json/JSONObject;
    .end local v6    # "tokener":Lorg/json/JSONTokener;
    .end local v7    # "words":Lorg/json/JSONArray;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 216
    .restart local v1    # "i":I
    .restart local v3    # "joResult":Lorg/json/JSONObject;
    .restart local v6    # "tokener":Lorg/json/JSONTokener;
    .restart local v7    # "words":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "cw"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 217
    .local v2, "items":Lorg/json/JSONArray;
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 218
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v8, "w"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v1    # "i":I
    .end local v2    # "items":Lorg/json/JSONArray;
    .end local v3    # "joResult":Lorg/json/JSONObject;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "tokener":Lorg/json/JSONTokener;
    .end local v7    # "words":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static printResult(Lcom/iflytek/cloud/RecognizerResult;)V
    .locals 8
    .param p0, "results"    # Lcom/iflytek/cloud/RecognizerResult;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/iflytek/cloud/RecognizerResult;->getResultString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tianmashikong/tool/VoiceToWord;->parseIatResult(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "text":Ljava/lang/String;
    const/4 v4, 0x0

    .line 136
    .local v4, "sn":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/iflytek/cloud/RecognizerResult;->getResultString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 137
    .local v3, "resultJson":Lorg/json/JSONObject;
    const-string v6, "sn"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 142
    .end local v3    # "resultJson":Lorg/json/JSONObject;
    :goto_0
    sget-object v6, Lcom/tianmashikong/tool/VoiceToWord;->mIatResults:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    .local v2, "resultBuffer":Ljava/lang/StringBuffer;
    sget-object v6, Lcom/tianmashikong/tool/VoiceToWord;->mIatResults:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 147
    return-void

    .line 138
    .end local v2    # "resultBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 144
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "resultBuffer":Ljava/lang/StringBuffer;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    .local v1, "key":Ljava/lang/String;
    sget-object v6, Lcom/tianmashikong/tool/VoiceToWord;->mIatResults:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static readFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 234
    const/4 v3, 0x0

    .line 235
    .local v3, "len":I
    const/4 v0, 0x0

    .line 236
    .local v0, "buf":[B
    const-string v4, ""

    .line 238
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 239
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 240
    new-array v0, v3, [B

    .line 241
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v3}, Ljava/io/InputStream;->read([BII)I

    .line 243
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "result":Ljava/lang/String;
    .local v5, "result":Ljava/lang/String;
    move-object v4, v5

    .line 247
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 244
    :catch_0
    move-exception v1

    .line 245
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setParam()V
    .locals 6

    .prologue
    .line 105
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "params"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 106
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "engine_type"

    sget-object v3, Lcom/tianmashikong/tool/VoiceToWord;->mEngineType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 107
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "result_type"

    const-string v3, "json"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 108
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "iat_language_preference"

    const-string v3, "mandarin"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "lag":Ljava/lang/String;
    const-string v1, "en_us"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "language"

    const-string v3, "en_us"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 115
    :goto_0
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "sample_rate"

    const-string v3, "8000"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "vad_bos"

    sget-object v3, Lcom/tianmashikong/tool/VoiceToWord;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "iat_vadbos_preference"

    const-string v5, "4000"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 117
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "vad_eos"

    sget-object v3, Lcom/tianmashikong/tool/VoiceToWord;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "iat_vadeos_preference"

    const-string v5, "1000"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 118
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "asr_ptt"

    sget-object v3, Lcom/tianmashikong/tool/VoiceToWord;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "iat_punc_preference"

    const-string v5, "1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    return-void

    .line 112
    :cond_0
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "language"

    const-string v3, "zh_cn"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 113
    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mIat:Lcom/iflytek/cloud/SpeechRecognizer;

    const-string v2, "accent"

    invoke-virtual {v1, v2, v0}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static showTip(Ljava/lang/String;)V
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Lcom/tianmashikong/tool/VoiceToWord;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 75
    sget-object v0, Lcom/tianmashikong/tool/VoiceToWord;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    return-void
.end method

.method public static uploadWords(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 253
    new-instance v0, Lcom/tianmashikong/tool/VoiceToWord$5;

    invoke-direct {v0, p0}, Lcom/tianmashikong/tool/VoiceToWord$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 264
    return-void
.end method
