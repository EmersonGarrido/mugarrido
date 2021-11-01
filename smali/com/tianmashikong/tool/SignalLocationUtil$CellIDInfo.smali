.class Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;
.super Ljava/lang/Object;
.source "SignalLocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tianmashikong/tool/SignalLocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CellIDInfo"
.end annotation


# instance fields
.field bss:I

.field cdma:Z

.field cellId:I

.field lat:F

.field lng:F

.field locationAreaCode:I

.field mobileCountryCode:Ljava/lang/String;

.field mobileNetworkCode:Ljava/lang/String;

.field radioType:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
