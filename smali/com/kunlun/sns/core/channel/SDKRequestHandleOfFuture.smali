.class public Lcom/kunlun/sns/core/channel/SDKRequestHandleOfFuture;
.super Ljava/lang/Object;
.source "SDKRequestHandleOfFuture.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;


# instance fields
.field private final future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 10
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/kunlun/sns/core/channel/SDKRequestHandleOfFuture;->future:Ljava/util/concurrent/Future;

    .line 12
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/SDKRequestHandleOfFuture;->future:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 23
    return-void
.end method

.method public idle()Z
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/SDKRequestHandleOfFuture;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/sns/core/channel/SDKRequestHandleOfFuture;->future:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
