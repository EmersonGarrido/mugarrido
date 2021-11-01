.class Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton$1;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "SdkLogCollectionSingleton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;->recordLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton$1;->this$0:Lcom/kunlun/sns/core/sdk_log_collection/SdkLogCollectionSingleton;

    .line 38
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "errorResponse"    # [B
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 46
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 0
    .param p1, "statusCode"    # I
    .param p2, "headers"    # [Lorg/apache/http/Header;
    .param p3, "response"    # [B

    .prologue
    .line 42
    return-void
.end method
