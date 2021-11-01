.class public Lcom/kunlun/sns/net_engine/my_network_engine/NetRequestHandleNilObject;
.super Ljava/lang/Object;
.source "NetRequestHandleNilObject.java"

# interfaces
.implements Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public idle()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    return v0
.end method
