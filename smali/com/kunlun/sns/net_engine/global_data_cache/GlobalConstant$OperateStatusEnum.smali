.class public final enum Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;
.super Ljava/lang/Enum;
.source "GlobalConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OperateStatusEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

.field public static final enum HAS_RECEIVED:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

.field public static final enum HAS_REQUESTED:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

.field public static final enum HAS_RESPONDED:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 35
    new-instance v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    const-string v1, "HAS_REQUESTED"

    .line 38
    invoke-direct {v0, v1, v4, v2}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;->HAS_REQUESTED:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    .line 39
    new-instance v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    const-string v1, "HAS_RESPONDED"

    .line 42
    invoke-direct {v0, v1, v2, v3}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;->HAS_RESPONDED:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    .line 43
    new-instance v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    const-string v1, "HAS_RECEIVED"

    .line 46
    invoke-direct {v0, v1, v3, v5}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;->HAS_RECEIVED:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    .line 34
    new-array v0, v5, [Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;->HAS_REQUESTED:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;->HAS_RESPONDED:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;->HAS_RECEIVED:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;->ENUM$VALUES:[Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput p3, p0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;->code:I

    .line 56
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    return-object v0
.end method

.method public static valueOfCode(I)Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 59
    invoke-static {}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;->values()[Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 65
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 59
    :cond_1
    aget-object v0, v2, v1

    .line 60
    .local v0, "member":Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;
    iget v4, v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;->code:I

    if-eq p0, v4, :cond_0

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static values()[Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;->ENUM$VALUES:[Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$OperateStatusEnum;->code:I

    return v0
.end method
