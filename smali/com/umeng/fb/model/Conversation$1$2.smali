.class Lcom/umeng/fb/model/Conversation$1$2;
.super Ljava/lang/Object;
.source "Conversation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/fb/model/Conversation$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/fb/model/Reply;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/umeng/fb/model/Conversation$1;


# direct methods
.method constructor <init>(Lcom/umeng/fb/model/Conversation$1;Lcom/umeng/fb/model/Reply;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/umeng/fb/model/Conversation$1$2;->c:Lcom/umeng/fb/model/Conversation$1;

    iput-object p2, p0, Lcom/umeng/fb/model/Conversation$1$2;->a:Lcom/umeng/fb/model/Reply;

    iput-object p3, p0, Lcom/umeng/fb/model/Conversation$1$2;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 206
    iget-object v1, p0, Lcom/umeng/fb/model/Conversation$1$2;->a:Lcom/umeng/fb/model/Reply;

    iget-object v0, p0, Lcom/umeng/fb/model/Conversation$1$2;->b:Ljava/util/Map;

    const-string v2, "created_at"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/umeng/fb/model/Reply;->created_at:J

    .line 207
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation$1$2;->a:Lcom/umeng/fb/model/Reply;

    const-string v1, "sent"

    iput-object v1, v0, Lcom/umeng/fb/model/Reply;->status:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/umeng/fb/model/Conversation$1$2;->c:Lcom/umeng/fb/model/Conversation$1;

    iget-object v0, v0, Lcom/umeng/fb/model/Conversation$1;->c:Lcom/umeng/fb/model/Conversation;

    invoke-static {v0}, Lcom/umeng/fb/model/Conversation;->a(Lcom/umeng/fb/model/Conversation;)V

    .line 209
    return-void
.end method