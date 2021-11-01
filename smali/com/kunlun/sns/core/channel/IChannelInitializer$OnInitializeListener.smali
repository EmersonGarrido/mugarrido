.class public interface abstract Lcom/kunlun/sns/core/channel/IChannelInitializer$OnInitializeListener;
.super Ljava/lang/Object;
.source "IChannelInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/sns/core/channel/IChannelInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnInitializeListener"
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/kunlun/sns/net_engine/my_network_engine/net_error_handle/KunlunSNSErrorBean;)V
.end method

.method public abstract onSuccess()V
.end method
