.class public interface abstract Lcom/kunlun/sns/channel/facebookCenter/tools/FbSdkUtils$FbGraphApiListerner;
.super Ljava/lang/Object;
.source "FbSdkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/sns/channel/facebookCenter/tools/FbSdkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FbGraphApiListerner"
.end annotation


# virtual methods
.method public abstract onComplete(Lorg/json/JSONObject;)V
.end method

.method public abstract onResponceInfoIsNullException()V
.end method

.method public abstract onResponseErrorException(Ljava/lang/String;)V
.end method

.method public abstract onResponseIsNullException()V
.end method
