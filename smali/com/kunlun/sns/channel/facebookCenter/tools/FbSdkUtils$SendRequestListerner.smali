.class public interface abstract Lcom/kunlun/sns/channel/facebookCenter/tools/FbSdkUtils$SendRequestListerner;
.super Ljava/lang/Object;
.source "FbSdkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/sns/channel/facebookCenter/tools/FbSdkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SendRequestListerner"
.end annotation


# virtual methods
.method public abstract onComplete(Landroid/os/Bundle;)V
.end method

.method public abstract onError(Lcom/facebook/FacebookException;)V
.end method
