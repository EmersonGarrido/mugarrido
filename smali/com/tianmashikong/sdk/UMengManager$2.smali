.class Lcom/tianmashikong/sdk/UMengManager$2;
.super Ljava/lang/Object;
.source "UMengManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/sdk/UMengManager;->SendMessage(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tianmashikong/sdk/UMengManager$2;->val$act:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tianmashikong/sdk/UMengManager$2;->val$content:Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/umeng/fb/FeedbackAgent;

    iget-object v2, p0, Lcom/tianmashikong/sdk/UMengManager$2;->val$act:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/umeng/fb/FeedbackAgent;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, "agent":Lcom/umeng/fb/FeedbackAgent;
    invoke-virtual {v0}, Lcom/umeng/fb/FeedbackAgent;->getDefaultConversation()Lcom/umeng/fb/model/Conversation;

    move-result-object v1

    .line 32
    .local v1, "con":Lcom/umeng/fb/model/Conversation;
    iget-object v2, p0, Lcom/tianmashikong/sdk/UMengManager$2;->val$content:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/umeng/fb/model/Conversation;->addUserReply(Ljava/lang/String;)V

    .line 33
    new-instance v2, Lcom/tianmashikong/sdk/UMengManager$2$1;

    invoke-direct {v2, p0}, Lcom/tianmashikong/sdk/UMengManager$2$1;-><init>(Lcom/tianmashikong/sdk/UMengManager$2;)V

    invoke-virtual {v1, v2}, Lcom/umeng/fb/model/Conversation;->sync(Lcom/umeng/fb/model/Conversation$SyncListener;)V

    .line 50
    return-void
.end method
