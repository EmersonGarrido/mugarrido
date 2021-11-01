.class public Lcom/tianmashikong/qmqj/MainActivity;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "MainActivity.java"


# static fields
.field private static _PushServiceClientID:Ljava/lang/String;

.field private static instance:Lcom/tianmashikong/qmqj/MainActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/tianmashikong/qmqj/MainActivity;->instance:Lcom/tianmashikong/qmqj/MainActivity;

    .line 66
    const-string v0, ""

    sput-object v0, Lcom/tianmashikong/qmqj/MainActivity;->_PushServiceClientID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method

.method public static Feedback()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/tianmashikong/qmqj/MainActivity;->instance:Lcom/tianmashikong/qmqj/MainActivity;

    invoke-direct {v0}, Lcom/tianmashikong/qmqj/MainActivity;->_Feedback()V

    .line 58
    return-void
.end method

.method public static GetPushServerClientID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/tianmashikong/qmqj/MainActivity;->_PushServiceClientID:Ljava/lang/String;

    return-object v0
.end method

.method public static LaunchAPK(Ljava/lang/String;)V
    .locals 1
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcom/tianmashikong/qmqj/MainActivity;->instance:Lcom/tianmashikong/qmqj/MainActivity;

    invoke-direct {v0, p0}, Lcom/tianmashikong/qmqj/MainActivity;->_LaunchAPK(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static SetPushServerClientID(Ljava/lang/String;)V
    .locals 0
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 70
    sput-object p0, Lcom/tianmashikong/qmqj/MainActivity;->_PushServiceClientID:Ljava/lang/String;

    .line 71
    return-void
.end method

.method private _Feedback()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/umeng/fb/FeedbackAgent;

    invoke-direct {v0, p0}, Lcom/umeng/fb/FeedbackAgent;-><init>(Landroid/content/Context;)V

    .line 63
    .local v0, "agent":Lcom/umeng/fb/FeedbackAgent;
    invoke-virtual {v0}, Lcom/umeng/fb/FeedbackAgent;->startFeedbackActivity()V

    .line 64
    return-void
.end method

.method private _LaunchAPK(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 50
    const-string v2, "application/vnd.android.package-archive"

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Lcom/tianmashikong/qmqj/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sput-object p0, Lcom/tianmashikong/qmqj/MainActivity;->instance:Lcom/tianmashikong/qmqj/MainActivity;

    .line 27
    return-void
.end method
