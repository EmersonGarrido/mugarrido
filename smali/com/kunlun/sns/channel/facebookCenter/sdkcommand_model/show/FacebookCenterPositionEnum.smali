.class public abstract enum Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;
.super Ljava/lang/Enum;
.source "FacebookCenterPositionEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

.field public static final enum LEFT_BOTTOM:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

.field public static final enum LEFT_CENTER:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

.field public static final enum LEFT_TOP:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

.field public static final enum RIGHT_BOTTOM:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

.field public static final enum RIGHT_CENTER:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

.field public static final enum RIGHT_TOP:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

.field private static y:I


# instance fields
.field private rl:I

.field private tb:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, 0x3

    .line 7
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum$1;

    const-string v1, "LEFT_TOP"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum$1;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->LEFT_TOP:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    .line 13
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum$2;

    const-string v1, "LEFT_CENTER"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v7, v4, v2}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum$2;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->LEFT_CENTER:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    .line 19
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum$3;

    const-string v1, "LEFT_BOTTOM"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v8, v4, v2}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum$3;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->LEFT_BOTTOM:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    .line 25
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum$4;

    const-string v1, "RIGHT_TOP"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum$4;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->RIGHT_TOP:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    .line 31
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum$5;

    const-string v1, "RIGHT_CENTER"

    const/4 v2, 0x4

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v5, v3}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum$5;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->RIGHT_CENTER:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    .line 37
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum$6;

    const-string v1, "RIGHT_BOTTOM"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum$6;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->RIGHT_BOTTOM:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->LEFT_TOP:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->LEFT_CENTER:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->LEFT_BOTTOM:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    aput-object v1, v0, v8

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->RIGHT_TOP:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    aput-object v1, v0, v4

    const/4 v1, 0x4

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->RIGHT_CENTER:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    aput-object v2, v0, v1

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->RIGHT_BOTTOM:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->ENUM$VALUES:[Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    .line 47
    const/16 v0, 0x14

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->y:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "rl"    # I
    .param p4, "tb"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->rl:I

    .line 51
    iput p4, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->tb:I

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IIILcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;-><init>(Ljava/lang/String;III)V

    return-void
.end method

.method static synthetic access$3()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->y:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    return-object v0
.end method

.method public static values()[Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->ENUM$VALUES:[Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getRL()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->rl:I

    return v0
.end method

.method public getTB()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->tb:I

    return v0
.end method

.method public abstract getY()I
.end method
