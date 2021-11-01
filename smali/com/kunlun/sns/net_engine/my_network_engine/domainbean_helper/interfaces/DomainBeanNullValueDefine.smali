.class public Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/DomainBeanNullValueDefine;
.super Ljava/lang/Object;
.source "DomainBeanNullValueDefine.java"


# static fields
.field public static DOUBLE_NULL_VALUE:D

.field public static INT_NULL_VALUE:I

.field public static STRING_NULL_VALUE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 9
    const/4 v0, 0x0

    sput-object v0, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/DomainBeanNullValueDefine;->STRING_NULL_VALUE:Ljava/lang/String;

    .line 10
    const/16 v0, -0x3359

    sput v0, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/DomainBeanNullValueDefine;->INT_NULL_VALUE:I

    .line 11
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/kunlun/sns/net_engine/my_network_engine/domainbean_helper/interfaces/DomainBeanNullValueDefine;->DOUBLE_NULL_VALUE:D

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
