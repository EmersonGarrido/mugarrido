.class public Lcom/tencent/gcloud/voice/GCloudVoiceEngine;
.super Ljava/lang/Object;
.source "GCloudVoiceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/gcloud/voice/GCloudVoiceEngine$Mode;,
        Lcom/tencent/gcloud/voice/GCloudVoiceEngine$TaskID;
    }
.end annotation


# static fields
.field private static _instance:Lcom/tencent/gcloud/voice/GCloudVoiceEngine;


# instance fields
.field private JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

.field private appContext:Landroid/content/Context;

.field private notify:Lcom/tencent/gcloud/voice/IGCloudVoiceNotify;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    :try_start_0
    const-string v0, "GCloudVoice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :goto_0
    return-void

    .line 13
    :catch_0
    move-exception v0

    .line 15
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "load library GCloudVoice failed!!!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 16
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->notify:Lcom/tencent/gcloud/voice/IGCloudVoiceNotify;

    .line 36
    iput-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->appContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-direct {v0}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;-><init>()V

    iput-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    .line 47
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->EngineJniInstance()I

    .line 48
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/gcloud/voice/GCloudVoiceEngine;
    .locals 2

    .prologue
    .line 40
    const-class v1, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->_instance:Lcom/tencent/gcloud/voice/GCloudVoiceEngine;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;

    invoke-direct {v0}, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;-><init>()V

    sput-object v0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->_instance:Lcom/tencent/gcloud/voice/GCloudVoiceEngine;

    .line 43
    :cond_0
    sget-object v0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->_instance:Lcom/tencent/gcloud/voice/GCloudVoiceEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public ApplyMessageKey(I)I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->ApplyMessageKey(I)I

    move-result v0

    return v0
.end method

.method public ApplyMessageKey_Token(Ljava/lang/String;II)I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->ApplyMessageKey(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public CaptureMicrophoneData(Z)I
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->CaptureMicrophoneData(Z)I

    move-result v0

    return v0
.end method

.method public CloseMic()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->CloseMic()I

    move-result v0

    return v0
.end method

.method public CloseSpeaker()I
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->CloseSpeaker()I

    move-result v0

    return v0
.end method

.method public DownloadRecordedFile(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->DownloadRecordedFile(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public EnableLog(Z)I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->EnableLog(Z)I

    move-result v0

    return v0
.end method

.method public ForbidMemberVoice(IZ)I
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1, p2}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->ForbidMemberVoice(IZ)I

    move-result v0

    return v0
.end method

.method public GetFileParam(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;)I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->GetFileParam(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Float;)I

    move-result v0

    return v0
.end method

.method public GetMicLevel()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->GetMicLevel()I

    move-result v0

    return v0
.end method

.method public GetSpeakerLevel()I
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->GetSpeakerLevel()I

    move-result v0

    return v0
.end method

.method public Init()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->Init()I

    move-result v0

    return v0
.end method

.method public Invoke(III[I)I
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1, p2, p3, p4}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->Invoke(III[I)I

    move-result v0

    return v0
.end method

.method public JoinNationalRoom(Ljava/lang/String;II)I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->JoinNationalRoom(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public JoinNationalRoom_Token(Ljava/lang/String;ILjava/lang/String;II)I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->JoinNationalRoom(Ljava/lang/String;ILjava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public JoinTeamRoom(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1, p2}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->JoinTeamRoom(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public JoinTeamRoom_Token(Ljava/lang/String;Ljava/lang/String;II)I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1, p2, p3, p4}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->JoinTeamRoom(Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public OpenMic()I
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->OpenMic()I

    move-result v0

    return v0
.end method

.method public OpenSpeaker()I
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->OpenSpeaker()I

    move-result v0

    return v0
.end method

.method public Pause()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->Pause()I

    move-result v0

    return v0
.end method

.method public PlayRecordedFile(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->PlayRecordedFile(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public Poll()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->Poll()I

    move-result v0

    return v0
.end method

.method public QuitRoom(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1, p2}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->QuitRoom(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Resume()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->Resume()I

    move-result v0

    return v0
.end method

.method public SetAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->SetAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public SetMaxMessageLength(I)I
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->SetMaxMessageLength(I)I

    move-result v0

    return v0
.end method

.method public SetMode(I)I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->SetMode(I)I

    move-result v0

    return v0
.end method

.method public SetNotify(Lcom/tencent/gcloud/voice/IGCloudVoiceNotify;)I
    .locals 1

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->notify:Lcom/tencent/gcloud/voice/IGCloudVoiceNotify;

    .line 75
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->SetNotify(Lcom/tencent/gcloud/voice/IGCloudVoiceNotify;)I

    move-result v0

    return v0
.end method

.method public SetServerInfo(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->SetServerInfo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public SetSpeakerVolume(I)I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->SetSpeakerVolume(I)I

    move-result v0

    return v0
.end method

.method public SpeechToText(Ljava/lang/String;II)I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1, p2, p3}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->SpeechToText(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public SpeechToText_Token(Ljava/lang/String;Ljava/lang/String;III)I
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->SpeechToText(Ljava/lang/String;Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method public StartRecording(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->StartRecording(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public StopPlayFile()I
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->StopPlayFile()I

    move-result v0

    return v0
.end method

.method public StopRecording()I
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->StopRecording()I

    move-result v0

    return v0
.end method

.method public TestMic()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->TestMic()I

    move-result v0

    return v0
.end method

.method public UploadRecordedFile(Ljava/lang/String;I)I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->JNIHelper:Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;

    invoke-static {p1, p2}, Lcom/tencent/gcloud/voice/GCloudVoiceEngineHelper;->UploadRecordedFile(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/app/Activity;)I
    .locals 1

    .prologue
    .line 52
    invoke-static {p1, p2}, Lcom/tencent/apollo/ApolloVoiceDeviceMgr;->ApolloVoiceDeviceInit(Landroid/content/Context;Landroid/app/Activity;)V

    .line 53
    const/4 v0, 0x0

    return v0
.end method
