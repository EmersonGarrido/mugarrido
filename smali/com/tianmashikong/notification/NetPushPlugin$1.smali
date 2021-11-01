.class Lcom/tianmashikong/notification/NetPushPlugin$1;
.super Ljava/util/TimerTask;
.source "NetPushPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/notification/NetPushPlugin;->SetPush(Lcom/tianmashikong/notification/NetNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field i:I

.field private final synthetic val$count:I

.field private final synthetic val$timer:Ljava/util/Timer;

.field private final synthetic val$tmno:Lcom/tianmashikong/notification/NetNotification;


# direct methods
.method constructor <init>(Lcom/tianmashikong/notification/NetNotification;ILjava/util/Timer;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->val$tmno:Lcom/tianmashikong/notification/NetNotification;

    iput p2, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->val$count:I

    iput-object p3, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->val$timer:Ljava/util/Timer;

    .line 284
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 285
    const/4 v0, 0x1

    iput v0, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->i:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u63a8\u9001:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->val$tmno:Lcom/tianmashikong/notification/NetNotification;

    iget-object v1, v1, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6b21\u6570="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 290
    iget v0, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->val$count:I

    iget v1, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->i:I

    if-ge v0, v1, :cond_0

    .line 292
    sget-object v0, Lcom/tianmashikong/notification/NetPushPlugin;->_timerlist:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->val$tmno:Lcom/tianmashikong/notification/NetNotification;

    iget-object v1, v1, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lcom/tianmashikong/notification/NetPushPlugin;->_Notificationlist:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->val$tmno:Lcom/tianmashikong/notification/NetNotification;

    iget-object v1, v1, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    invoke-static {}, Lcom/tianmashikong/notification/NetPushPlugin;->save()V

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u63a8\u9001:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->val$tmno:Lcom/tianmashikong/notification/NetNotification;

    iget-object v1, v1, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u505c\u6b62"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tianmashikong/tool/TMUtils;->Log(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->val$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    iget v0, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->i:I

    .line 300
    sget-object v0, Lcom/tianmashikong/notification/NetPushPlugin;->_netpushservice:Lcom/tianmashikong/notification/NetPushService;

    iget-object v1, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->val$tmno:Lcom/tianmashikong/notification/NetNotification;

    iget-object v1, v1, Lcom/tianmashikong/notification/NetNotification;->_title:Ljava/lang/String;

    iget-object v2, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->val$tmno:Lcom/tianmashikong/notification/NetNotification;

    iget-object v2, v2, Lcom/tianmashikong/notification/NetNotification;->_content:Ljava/lang/String;

    iget-object v3, p0, Lcom/tianmashikong/notification/NetPushPlugin$1;->val$tmno:Lcom/tianmashikong/notification/NetNotification;

    iget-object v3, v3, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tianmashikong/notification/NetPushService;->SendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
