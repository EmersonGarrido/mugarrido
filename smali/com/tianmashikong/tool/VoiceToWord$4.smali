.class Lcom/tianmashikong/tool/VoiceToWord$4;
.super Ljava/lang/Object;
.source "VoiceToWord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/tool/VoiceToWord;->InitInfo(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tianmashikong/tool/VoiceToWord$4;->val$act:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tianmashikong/tool/VoiceToWord$4;->val$str:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v0, p0, Lcom/tianmashikong/tool/VoiceToWord$4;->val$act:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tianmashikong/tool/VoiceToWord$4;->val$str:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iflytek/cloud/SpeechUtility;->createUtility(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/SpeechUtility;

    .line 44
    iget-object v0, p0, Lcom/tianmashikong/tool/VoiceToWord$4;->val$act:Landroid/app/Activity;

    const-string v1, ""

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/tianmashikong/tool/VoiceToWord;->access$1(Landroid/widget/Toast;)V

    .line 45
    iget-object v0, p0, Lcom/tianmashikong/tool/VoiceToWord$4;->val$act:Landroid/app/Activity;

    .line 46
    const-string v1, "com.iflytek.setting"

    .line 45
    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/tianmashikong/tool/VoiceToWord;->access$2(Landroid/content/SharedPreferences;)V

    .line 47
    iget-object v0, p0, Lcom/tianmashikong/tool/VoiceToWord$4;->val$act:Landroid/app/Activity;

    sget-object v1, Lcom/tianmashikong/tool/VoiceToWord;->mInitListener:Lcom/iflytek/cloud/InitListener;

    invoke-static {v0, v1}, Lcom/iflytek/cloud/SpeechRecognizer;->createRecognizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object v0

    invoke-static {v0}, Lcom/tianmashikong/tool/VoiceToWord;->access$3(Lcom/iflytek/cloud/SpeechRecognizer;)V

    .line 48
    return-void
.end method
