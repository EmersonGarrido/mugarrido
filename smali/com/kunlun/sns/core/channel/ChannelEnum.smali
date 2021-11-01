.class public final enum Lcom/kunlun/sns/core/channel/ChannelEnum;
.super Ljava/lang/Enum;
.source "ChannelEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/sns/core/channel/ChannelEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/kunlun/sns/core/channel/ChannelEnum;

.field public static final enum KLCCN:Lcom/kunlun/sns/core/channel/ChannelEnum;

.field public static final enum facebook:Lcom/kunlun/sns/core/channel/ChannelEnum;

.field public static final enum facebookCenter:Lcom/kunlun/sns/core/channel/ChannelEnum;

.field public static final enum ggplus:Lcom/kunlun/sns/core/channel/ChannelEnum;

.field public static final enum kakao:Lcom/kunlun/sns/core/channel/ChannelEnum;

.field public static final enum line:Lcom/kunlun/sns/core/channel/ChannelEnum;


# instance fields
.field private code:I

.field private ingineHelperForSdkClassName:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/kunlun/sns/core/channel/ChannelEnum;

    const-string v1, "kakao"

    .line 11
    const-string v3, "kakao"

    const-string v4, "com.kunlun.sns.channel.kakao.EngineHelperForKakao"

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/sns/core/channel/ChannelEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/kunlun/sns/core/channel/ChannelEnum;->kakao:Lcom/kunlun/sns/core/channel/ChannelEnum;

    .line 12
    new-instance v3, Lcom/kunlun/sns/core/channel/ChannelEnum;

    const-string v4, "facebook"

    .line 13
    const-string v6, "facebook"

    const-string v7, "com.kunlun.sns.channel.facebook.EngineHelperForFacebook"

    move v5, v9

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/core/channel/ChannelEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/core/channel/ChannelEnum;->facebook:Lcom/kunlun/sns/core/channel/ChannelEnum;

    .line 14
    new-instance v3, Lcom/kunlun/sns/core/channel/ChannelEnum;

    const-string v4, "facebookCenter"

    .line 15
    const-string v6, "facebookCenter"

    const-string v7, "com.kunlun.sns.channel.facebookCenter.EngineHelperForFacebookCenter"

    move v5, v10

    move v8, v10

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/core/channel/ChannelEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/core/channel/ChannelEnum;->facebookCenter:Lcom/kunlun/sns/core/channel/ChannelEnum;

    .line 16
    new-instance v3, Lcom/kunlun/sns/core/channel/ChannelEnum;

    const-string v4, "line"

    .line 17
    const-string v6, "line"

    const-string v7, "com.kunlun.sns.channel.line.EngineHelperForLine"

    move v5, v11

    move v8, v11

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/core/channel/ChannelEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/core/channel/ChannelEnum;->line:Lcom/kunlun/sns/core/channel/ChannelEnum;

    .line 18
    new-instance v3, Lcom/kunlun/sns/core/channel/ChannelEnum;

    const-string v4, "ggplus"

    .line 19
    const-string v6, "ggplus"

    const-string v7, ""

    move v5, v12

    move v8, v12

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/core/channel/ChannelEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/core/channel/ChannelEnum;->ggplus:Lcom/kunlun/sns/core/channel/ChannelEnum;

    .line 20
    new-instance v3, Lcom/kunlun/sns/core/channel/ChannelEnum;

    const-string v4, "KLCCN"

    const/4 v5, 0x5

    .line 21
    const-string v6, "KLCCN"

    const-string v7, "com.kunlun.sns.channel.klccn.EngineHelperForKLCCN"

    const/4 v8, 0x5

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/core/channel/ChannelEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/core/channel/ChannelEnum;->KLCCN:Lcom/kunlun/sns/core/channel/ChannelEnum;

    .line 9
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kunlun/sns/core/channel/ChannelEnum;

    sget-object v1, Lcom/kunlun/sns/core/channel/ChannelEnum;->kakao:Lcom/kunlun/sns/core/channel/ChannelEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kunlun/sns/core/channel/ChannelEnum;->facebook:Lcom/kunlun/sns/core/channel/ChannelEnum;

    aput-object v1, v0, v9

    sget-object v1, Lcom/kunlun/sns/core/channel/ChannelEnum;->facebookCenter:Lcom/kunlun/sns/core/channel/ChannelEnum;

    aput-object v1, v0, v10

    sget-object v1, Lcom/kunlun/sns/core/channel/ChannelEnum;->line:Lcom/kunlun/sns/core/channel/ChannelEnum;

    aput-object v1, v0, v11

    sget-object v1, Lcom/kunlun/sns/core/channel/ChannelEnum;->ggplus:Lcom/kunlun/sns/core/channel/ChannelEnum;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/kunlun/sns/core/channel/ChannelEnum;->KLCCN:Lcom/kunlun/sns/core/channel/ChannelEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kunlun/sns/core/channel/ChannelEnum;->ENUM$VALUES:[Lcom/kunlun/sns/core/channel/ChannelEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "ingineHelperForSdkClassName"    # Ljava/lang/String;
    .param p5, "code"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/kunlun/sns/core/channel/ChannelEnum;->name:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/kunlun/sns/core/channel/ChannelEnum;->ingineHelperForSdkClassName:Ljava/lang/String;

    .line 30
    iput p5, p0, Lcom/kunlun/sns/core/channel/ChannelEnum;->code:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/sns/core/channel/ChannelEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kunlun/sns/core/channel/ChannelEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/core/channel/ChannelEnum;

    return-object v0
.end method

.method public static valueOfName(Ljava/lang/String;)Lcom/kunlun/sns/core/channel/ChannelEnum;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Lcom/kunlun/sns/core/channel/ChannelEnum;->values()[Lcom/kunlun/sns/core/channel/ChannelEnum;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 52
    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 46
    :cond_1
    aget-object v0, v2, v1

    .line 47
    .local v0, "item":Lcom/kunlun/sns/core/channel/ChannelEnum;
    invoke-virtual {v0}, Lcom/kunlun/sns/core/channel/ChannelEnum;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static values()[Lcom/kunlun/sns/core/channel/ChannelEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kunlun/sns/core/channel/ChannelEnum;->ENUM$VALUES:[Lcom/kunlun/sns/core/channel/ChannelEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/sns/core/channel/ChannelEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/kunlun/sns/core/channel/ChannelEnum;->code:I

    return v0
.end method

.method public getIngineHelperForSdkClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/ChannelEnum;->ingineHelperForSdkClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/ChannelEnum;->name:Ljava/lang/String;

    return-object v0
.end method
