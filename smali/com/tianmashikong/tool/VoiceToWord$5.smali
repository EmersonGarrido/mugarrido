.class Lcom/tianmashikong/tool/VoiceToWord$5;
.super Ljava/lang/Object;
.source "VoiceToWord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/tool/VoiceToWord;->uploadWords(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$act:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tianmashikong/tool/VoiceToWord$5;->val$act:Landroid/app/Activity;

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 256
    iget-object v1, p0, Lcom/tianmashikong/tool/VoiceToWord$5;->val$act:Landroid/app/Activity;

    const-string v2, "CiKu.txt"

    const-string v3, "utf-8"

    invoke-static {v1, v2, v3}, Lcom/tianmashikong/tool/VoiceToWord;->readFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "contents":Ljava/lang/String;
    invoke-static {}, Lcom/tianmashikong/tool/VoiceToWord;->access$4()Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v1

    const-string v2, "engine_type"

    const-string v3, "cloud"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 258
    invoke-static {}, Lcom/tianmashikong/tool/VoiceToWord;->access$4()Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v1

    const-string v2, "text_encoding"

    const-string v3, "utf-8"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 259
    invoke-static {}, Lcom/tianmashikong/tool/VoiceToWord;->access$4()Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v1

    const-string v2, "userword"

    sget-object v3, Lcom/tianmashikong/tool/VoiceToWord;->mLexiconListener:Lcom/iflytek/cloud/LexiconListener;

    invoke-virtual {v1, v2, v0, v3}, Lcom/iflytek/cloud/SpeechRecognizer;->updateLexicon(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/LexiconListener;)I

    move-result v1

    invoke-static {v1}, Lcom/tianmashikong/tool/VoiceToWord;->access$5(I)V

    .line 260
    invoke-static {}, Lcom/tianmashikong/tool/VoiceToWord;->access$6()I

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0a\u4f20\u70ed\u8bcd\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tianmashikong/tool/VoiceToWord;->access$6()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tianmashikong/tool/VoiceToWord;->showTip(Ljava/lang/String;)V

    .line 262
    :cond_0
    return-void
.end method
