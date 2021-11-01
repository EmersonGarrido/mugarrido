.class public interface abstract Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;
.super Ljava/lang/Object;
.source "IRespondBeanAsyncResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
.end method

.method public abstract onSuccess(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
