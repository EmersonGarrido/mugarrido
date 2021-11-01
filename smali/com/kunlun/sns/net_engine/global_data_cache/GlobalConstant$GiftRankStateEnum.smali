.class public final enum Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;
.super Ljava/lang/Enum;
.source "GlobalConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GiftRankStateEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

.field public static final enum RECEIVE:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

.field public static final enum UNREACH:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

.field public static final enum UNRECEIVE:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-instance v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    const-string v1, "UNREACH"

    .line 121
    invoke-direct {v0, v1, v2, v2}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;->UNREACH:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    .line 122
    new-instance v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    const-string v1, "UNRECEIVE"

    .line 125
    invoke-direct {v0, v1, v3, v3}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;->UNRECEIVE:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    .line 126
    new-instance v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    const-string v1, "RECEIVE"

    .line 129
    invoke-direct {v0, v1, v4, v4}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;->RECEIVE:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    .line 117
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;->UNREACH:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;->UNRECEIVE:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;->RECEIVE:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;->ENUM$VALUES:[Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 134
    iput p3, p0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;->code:I

    .line 135
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    return-object v0
.end method

.method public static valueOfCode(I)Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 142
    invoke-static {}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;->values()[Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 148
    sget-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;->UNRECEIVE:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    :cond_0
    return-object v0

    .line 142
    :cond_1
    aget-object v0, v2, v1

    .line 143
    .local v0, "member":Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;
    iget v4, v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;->code:I

    if-eq p0, v4, :cond_0

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static values()[Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;->ENUM$VALUES:[Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$GiftRankStateEnum;->code:I

    return v0
.end method
