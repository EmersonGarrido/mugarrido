.class Lcom/tianmashikong/tool/WeightRecord;
.super Ljava/lang/Object;
.source "TMUtils.java"


# instance fields
.field timestamp:Ljava/lang/String;

.field weight:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0
    .param p1, "timestamp"    # Ljava/lang/String;
    .param p2, "weight"    # F

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/tianmashikong/tool/WeightRecord;->timestamp:Ljava/lang/String;

    .line 66
    iput p2, p0, Lcom/tianmashikong/tool/WeightRecord;->weight:F

    .line 68
    return-void
.end method
