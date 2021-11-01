.class public final Lcom/kunlun/sns/net_engine/toolutils/FastDoubleClickTest;
.super Ljava/lang/Object;
.source "FastDoubleClickTest.java"


# static fields
.field private static lastClickTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static isFastDoubleClick()Z
    .locals 6

    .prologue
    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 18
    .local v0, "time":J
    sget-wide v4, Lcom/kunlun/sns/net_engine/toolutils/FastDoubleClickTest;->lastClickTime:J

    sub-long v2, v0, v4

    .line 19
    .local v2, "timeD":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x320

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 20
    const/4 v4, 0x1

    .line 23
    :goto_0
    return v4

    .line 22
    :cond_0
    sput-wide v0, Lcom/kunlun/sns/net_engine/toolutils/FastDoubleClickTest;->lastClickTime:J

    .line 23
    const/4 v4, 0x0

    goto :goto_0
.end method
