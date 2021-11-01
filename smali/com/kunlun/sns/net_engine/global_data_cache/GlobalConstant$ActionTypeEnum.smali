.class public final enum Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;
.super Ljava/lang/Enum;
.source "GlobalConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionTypeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASK:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

.field private static final synthetic ENUM$VALUES:[Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

.field public static final enum FEED:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

.field public static final enum INVIT:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

.field public static final enum SEND:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;


# instance fields
.field private final code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 76
    new-instance v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    const-string v1, "SEND"

    .line 79
    invoke-direct {v0, v1, v5, v2}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;->SEND:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    .line 80
    new-instance v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    const-string v1, "ASK"

    .line 83
    invoke-direct {v0, v1, v2, v3}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;->ASK:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    .line 84
    new-instance v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    const-string v1, "INVIT"

    .line 87
    invoke-direct {v0, v1, v3, v4}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;->INVIT:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    .line 88
    new-instance v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    const-string v1, "FEED"

    .line 91
    invoke-direct {v0, v1, v4, v6}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;->FEED:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    .line 75
    new-array v0, v6, [Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;->SEND:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;->ASK:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;->INVIT:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;->FEED:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;->ENUM$VALUES:[Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;->code:I

    .line 101
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    return-object v0
.end method

.method public static valueOfCode(I)Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 104
    invoke-static {}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;->values()[Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 110
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 104
    :cond_1
    aget-object v0, v2, v1

    .line 105
    .local v0, "member":Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;
    iget v4, v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;->code:I

    if-eq p0, v4, :cond_0

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static values()[Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;->ENUM$VALUES:[Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalConstant$ActionTypeEnum;->code:I

    return v0
.end method
