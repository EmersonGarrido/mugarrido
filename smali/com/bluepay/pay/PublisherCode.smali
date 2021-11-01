.class public Lcom/bluepay/pay/PublisherCode;
.super Ljava/lang/Object;


# static fields
.field public static final PUBLISHERS_CONTRY:[[Ljava/lang/String;

.field public static final PUBLISHER_12CALL:Ljava/lang/String; = "12call"

.field public static final PUBLISHER_BANK:Ljava/lang/String; = "bankcharge"

.field public static final PUBLISHER_DCB:Ljava/lang/String; = "dcb"

.field public static final PUBLISHER_DCB_INDOSAT:Ljava/lang/String; = "dcb_indosat"

.field public static final PUBLISHER_DCB_SMARTFREN:Ljava/lang/String; = "dcb_smartfren"

.field public static final PUBLISHER_DCB_TELENOR:Ljava/lang/String; = "telenor"

.field public static final PUBLISHER_DCB_XL:Ljava/lang/String; = "dcb_xl"

.field public static final PUBLISHER_HAPPY:Ljava/lang/String; = "happy"

.field public static final PUBLISHER_IDR:Ljava/lang/String; = "IDR"

.field public static final PUBLISHER_INDOMOG:Ljava/lang/String; = "indomog"

.field public static final PUBLISHER_LINE:Ljava/lang/String; = "line"

.field public static final PUBLISHER_MOBIFONE:Ljava/lang/String; = "mobifone"

.field public static final PUBLISHER_OFFLINE:Ljava/lang/String; = "offline"

.field public static final PUBLISHER_SMS:Ljava/lang/String; = "SMS"

.field public static final PUBLISHER_STEP_SMS:Ljava/lang/String; = "STEP_SMS"

.field public static final PUBLISHER_TELKOMSEL:Ljava/lang/String; = "telkomsel"

.field public static final PUBLISHER_TRUEMONEY:Ljava/lang/String; = "truemoney"

.field public static final PUBLISHER_UNIPIN:Ljava/lang/String; = "unipin"

.field public static final PUBLISHER_VIETTEL:Ljava/lang/String; = "viettel"

.field public static final PUBLISHER_VINAPHONE:Ljava/lang/String; = "vinaphone"

.field public static final PUBLISHER_VTC:Ljava/lang/String; = "vtc"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v6, [[Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "bankcharge"

    aput-object v2, v1, v3

    const-string v2, "line"

    aput-object v2, v1, v4

    const-string v2, "12call"

    aput-object v2, v1, v5

    const-string v2, "truemoney"

    aput-object v2, v1, v6

    const-string v2, "happy"

    aput-object v2, v1, v7

    aput-object v1, v0, v3

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "viettel"

    aput-object v2, v1, v3

    const-string v2, "mobifone"

    aput-object v2, v1, v4

    const-string v2, "vinaphone"

    aput-object v2, v1, v5

    const-string v2, "vtc"

    aput-object v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "unipin"

    aput-object v2, v1, v3

    const-string v2, "telkomsel"

    aput-object v2, v1, v4

    const-string v2, "indomog"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    sput-object v0, Lcom/bluepay/pay/PublisherCode;->PUBLISHERS_CONTRY:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
