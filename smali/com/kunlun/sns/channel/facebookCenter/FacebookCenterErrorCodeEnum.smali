.class public final enum Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;
.super Ljava/lang/Enum;
.source "FacebookCenterErrorCodeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

.field public static final enum NONE:Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

.field public static final enum SHOW_FLOAT_BUTTON_ERROR:Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

.field public static final enum Success:Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    const-string v1, "NONE"

    .line 5
    const/16 v2, -0x7de

    const-string v3, "\u65e0\u6548\u9519\u8bef\u7801"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->NONE:Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    .line 6
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    const-string v1, "SHOW_FLOAT_BUTTON_ERROR"

    .line 7
    const/16 v2, -0x7d1

    const-string v3, "\u60ac\u6d6e\u7a97\u663e\u793a\u5f02\u5e38"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->SHOW_FLOAT_BUTTON_ERROR:Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    .line 8
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    const-string v1, "Success"

    .line 9
    const-string v2, "\u670d\u52a1\u5668\u8fd4\u56de\u6709\u6548\u6570\u636e"

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->Success:Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->NONE:Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->SHOW_FLOAT_BUTTON_ERROR:Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->Success:Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->ENUM$VALUES:[Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->code:I

    .line 25
    iput-object p4, p0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->message:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    return-object v0
.end method

.method public static valueOfCode(I)Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;
    .locals 5
    .param p0, "code"    # I

    .prologue
    .line 29
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->values()[Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 35
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->NONE:Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    :cond_0
    return-object v0

    .line 29
    :cond_1
    aget-object v0, v2, v1

    .line 30
    .local v0, "item":Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;
    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->getCode()I

    move-result v4

    if-eq v4, p0, :cond_0

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static values()[Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->ENUM$VALUES:[Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/FacebookCenterErrorCodeEnum;->message:Ljava/lang/String;

    return-object v0
.end method
