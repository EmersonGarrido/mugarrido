.class public final enum Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;
.super Ljava/lang/Enum;
.source "KunlunSNSRoleInfoEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

.field public static final enum ROLE_EXT:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

.field public static final enum ROLE_ID:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

.field public static final enum ROLE_LEVEL:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

.field public static final enum ROLE_NAME:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

.field public static final enum ROLE_POWER:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

.field public static final enum ROLE_VIP_LEVEL:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;


# instance fields
.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    const-string v1, "ROLE_ID"

    const-string v2, "roleId"

    invoke-direct {v0, v1, v4, v2}, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_ID:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    .line 5
    new-instance v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    const-string v1, "ROLE_NAME"

    const-string v2, "roleName"

    invoke-direct {v0, v1, v5, v2}, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_NAME:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    .line 6
    new-instance v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    const-string v1, "ROLE_LEVEL"

    const-string v2, "roleLevel"

    invoke-direct {v0, v1, v6, v2}, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_LEVEL:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    .line 7
    new-instance v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    const-string v1, "ROLE_POWER"

    const-string v2, "rolePower"

    invoke-direct {v0, v1, v7, v2}, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_POWER:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    .line 8
    new-instance v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    const-string v1, "ROLE_VIP_LEVEL"

    const-string v2, "roleVipLevel"

    invoke-direct {v0, v1, v8, v2}, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_VIP_LEVEL:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    .line 9
    new-instance v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    const-string v1, "ROLE_EXT"

    const/4 v2, 0x5

    const-string v3, "roleExt"

    invoke-direct {v0, v1, v2, v3}, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_EXT:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    sget-object v1, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_ID:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_NAME:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_LEVEL:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    aput-object v1, v0, v6

    sget-object v1, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_POWER:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    aput-object v1, v0, v7

    sget-object v1, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_VIP_LEVEL:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_EXT:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ENUM$VALUES:[Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->key:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    return-object v0
.end method

.method public static values()[Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ENUM$VALUES:[Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->key:Ljava/lang/String;

    return-object v0
.end method
