.class Lcom/tianmashikong/tool/VoiceToWord$3;
.super Ljava/lang/Object;
.source "VoiceToWord.java"

# interfaces
.implements Lcom/iflytek/cloud/LexiconListener;


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
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onLexiconUpdated(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V
    .locals 0
    .param p1, "lexiconId"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/iflytek/cloud/SpeechError;

    .prologue
    .line 276
    return-void
.end method
