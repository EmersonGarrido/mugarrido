.class Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6$1;
.super Ljava/lang/Object;
.source "SimpleNetworkEngineSingleton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6;->onSuccess(Ljava/io/File;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6;

.field private final synthetic val$file:Ljava/io/File;

.field private final synthetic val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

.field private final synthetic val$responseBody:[B


# direct methods
.method constructor <init>(Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6;Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;Ljava/io/File;[B)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6$1;->this$1:Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6;

    iput-object p2, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6$1;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    iput-object p3, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6$1;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6$1;->val$responseBody:[B

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6$1;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6$1;->val$fileAsyncHttpResponseListener:Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;

    iget-object v1, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6$1;->val$file:Ljava/io/File;

    iget-object v2, p0, Lcom/kunlun/sns/net_engine/my_network_engine/SimpleNetworkEngineSingleton$6$1;->val$responseBody:[B

    invoke-interface {v0, v1, v2}, Lcom/kunlun/sns/net_engine/my_network_engine/http_engine/IFileRequestAsyncHttpResponseListener;->onSuccess(Ljava/io/File;[B)V

    .line 634
    :cond_0
    return-void
.end method
