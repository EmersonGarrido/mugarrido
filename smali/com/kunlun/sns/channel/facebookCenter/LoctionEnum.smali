.class public final enum Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;
.super Ljava/lang/Enum;
.source "LoctionEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum allstargames_de:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum allstargames_en:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum allstargames_fr:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum allstargames_it:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum de:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum debug:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum en:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum es:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum eu_en:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum fr:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum id_en:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum it:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum jp:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum kr:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum pl:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum pt:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum th:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum th_en:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum tr:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum tw:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum vn:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum vn2:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum world_br:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum world_debug:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum world_eu:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum world_jp:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum world_kr:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum world_ru:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum world_sgp:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum world_tw:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

.field public static final enum world_us:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;


# instance fields
.field private host:Ljava/lang/String;

.field private languageId:I

.field private loaction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v1, "debug"

    .line 9
    const-string v3, "debug"

    const-string v4, "t-api.gamesdk.kimi.com.tw"

    const v5, 0x98967f

    invoke-direct/range {v0 .. v5}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->debug:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 11
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "tw"

    .line 12
    const-string v6, "tw"

    const-string v7, "api.gamesdk.smo.kimi.com.tw"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_TW:I

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->tw:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 14
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "jp"

    .line 15
    const-string v6, "jp"

    const-string v7, "api.gamesdk.koramgame.co.jp"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_JA:I

    move v5, v10

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->jp:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 17
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "kr"

    .line 18
    const-string v6, "kr"

    const-string v7, "api.gamesdk.koramgame.co.kr"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_KR:I

    move v5, v11

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->kr:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 20
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "th"

    .line 21
    const-string v6, "th"

    const-string v7, "api.gamesdk.siamgame.in.th"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_TH:I

    move v5, v12

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->th:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 23
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "th_en"

    const/4 v5, 0x5

    .line 24
    const-string v6, "th-en"

    const-string v7, "muorigin.ro/api"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_EN:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->th_en:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 26
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "vn"

    const/4 v5, 0x6

    .line 27
    const-string v6, "vn"

    const-string v7, "api.gamesdk.3quoc.com"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_VN:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->vn:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 29
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "vn2"

    const/4 v5, 0x7

    .line 30
    const-string v6, "vn2"

    const-string v7, "api.gamesdk.3quoc.com"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_VN:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->vn2:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 32
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "en"

    const/16 v5, 0x8

    .line 33
    const-string v6, "en"

    const-string v7, "muorigin.ro/api"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_EN:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->en:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 35
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "fr"

    const/16 v5, 0x9

    .line 36
    const-string v6, "fr"

    const-string v7, "muorigin.ro/api"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_FR:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->fr:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 38
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "de"

    const/16 v5, 0xa

    .line 39
    const-string v6, "de"

    const-string v7, "muorigin.ro/api"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_DE:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->de:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 41
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "it"

    const/16 v5, 0xb

    .line 42
    const-string v6, "it"

    const-string v7, "muorigin.ro/api"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_IT:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->it:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 44
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "tr"

    const/16 v5, 0xc

    .line 45
    const-string v6, "tr"

    const-string v7, "api.gamesdk.all-stargames.com"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_TR:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->tr:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 47
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "allstargames_en"

    const/16 v5, 0xd

    .line 48
    const-string v6, "allstargames-en"

    const-string v7, "muorigin.ro/api"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_EN:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->allstargames_en:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 50
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "eu_en"

    const/16 v5, 0xe

    .line 51
    const-string v6, "eu-en"

    const-string v7, "muorigin.ro/api"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_EN:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->eu_en:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 53
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "id_en"

    const/16 v5, 0xf

    .line 54
    const-string v6, "id-en"

    const-string v7, "api.gamesdk.ifun.web.id"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_EN:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->id_en:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 56
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "allstargames_fr"

    const/16 v5, 0x10

    .line 57
    const-string v6, "allstargames-fr"

    const-string v7, "muorigin.ro/api"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_FR:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->allstargames_fr:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 59
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "allstargames_de"

    const/16 v5, 0x11

    .line 60
    const-string v6, "allstargames-de"

    const-string v7, "muorigin.ro/api"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_DE:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->allstargames_de:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 62
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "allstargames_it"

    const/16 v5, 0x12

    .line 63
    const-string v6, "allstargames-it"

    const-string v7, "muorigin.ro/api"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_IT:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->allstargames_it:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 65
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "pt"

    const/16 v5, 0x13

    .line 66
    const-string v6, "pt"

    const-string v7, "muorigin.ro/api"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_PT:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->pt:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 68
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "es"

    const/16 v5, 0x14

    .line 69
    const-string v6, "es"

    const-string v7, "muorigin.ro/api"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_ES:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->es:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 71
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "pl"

    const/16 v5, 0x15

    .line 72
    const-string v6, "pl"

    const-string v7, "muorigin.ro/api"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_PL:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->pl:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 74
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "world_debug"

    const/16 v5, 0x16

    .line 75
    const-string v6, "world-debug"

    const-string v7, "t-api.gamesdk.tw.koramgame.com"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_TW:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_debug:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 77
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "world_tw"

    const/16 v5, 0x17

    const-string v6, "world-tw"

    const-string v7, "api.gamesdk.tw.koramgame.com"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_TW:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_tw:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 79
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "world_kr"

    const/16 v5, 0x18

    const-string v6, "world-kr"

    const-string v7, "api.gamesdk.kr.koramgame.com"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_KR:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_kr:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 81
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "world_jp"

    const/16 v5, 0x19

    const-string v6, "world-jp"

    const-string v7, "api.gamesdk.jp.koramgame.com"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_JA:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_jp:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 83
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "world_ru"

    const/16 v5, 0x1a

    const-string v6, "world-ru"

    const-string v7, "api.gamesdk.ru.koramgame.com"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_RU:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_ru:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 85
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "world_eu"

    const/16 v5, 0x1b

    const-string v6, "world-eu"

    const-string v7, "api.gamesdk.eu.koramgame.com"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_EN:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_eu:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 87
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "world_sgp"

    const/16 v5, 0x1c

    const-string v6, "world-sgp"

    const-string v7, "api.gamesdk.sgp.koramgame.com"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_EN:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_sgp:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 89
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "world_br"

    const/16 v5, 0x1d

    const-string v6, "world-br"

    const-string v7, "api.gamesdk.br.koramgame.com"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_PT:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_br:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 91
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    const-string v4, "world_us"

    const/16 v5, 0x1e

    const-string v6, "world-us"

    const-string v7, "api.gamesdk.en.koramgame.com"

    sget v8, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_EN:I

    invoke-direct/range {v3 .. v8}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_us:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    .line 7
    const/16 v0, 0x1f

    new-array v0, v0, [Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->debug:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->tw:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v1, v0, v9

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->jp:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v1, v0, v10

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->kr:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v1, v0, v11

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->th:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v1, v0, v12

    const/4 v1, 0x5

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->th_en:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->vn:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->vn2:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->en:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->fr:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->de:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->it:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->tr:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->allstargames_en:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->eu_en:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->id_en:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->allstargames_fr:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->allstargames_de:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->allstargames_it:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->pt:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->es:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->pl:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_debug:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_tw:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_kr:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_jp:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_ru:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_eu:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_sgp:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_br:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->world_us:Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    aput-object v2, v0, v1

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->ENUM$VALUES:[Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p3, "loaction"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "languageId"    # I

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->loaction:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->host:Ljava/lang/String;

    .line 100
    iput p5, p0, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->languageId:I

    .line 101
    return-void
.end method

.method public static getHostByLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 115
    const-string v0, ""

    .line 116
    .local v0, "host":Ljava/lang/String;
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->values()[Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 123
    sget-object v2, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ">>>>>>>>>>>>>> host\u4e3a\u7a7a,  location:  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  \u8bf7\u6392\u67e5\u8be5\u503c\u662f\u5426\u6b63\u786e  <<<<<<<<<<<<<<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_1
    return-object v0

    .line 116
    :cond_0
    aget-object v1, v3, v2

    .line 117
    .local v1, "item":Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;
    iget-object v5, v1, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->loaction:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    iget-object v0, v1, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->host:Ljava/lang/String;

    .line 116
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "item":Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;
    :cond_2
    sget-object v2, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u57df\u540d\u5730\u5740: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getLanguageIdByLocation(Ljava/lang/String;)I
    .locals 6
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    .line 104
    sget v1, Lcom/kunlun/sns/R$raw;->language:I

    .line 105
    .local v1, "languageId":I
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->values()[Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    move-result-object v3

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v4, :cond_0

    .line 111
    return v1

    .line 105
    :cond_0
    aget-object v0, v3, v2

    .line 106
    .local v0, "item":Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;
    iget-object v5, v0, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->loaction:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    iget v1, v0, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->languageId:I

    .line 105
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    return-object v0
.end method

.method public static values()[Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->ENUM$VALUES:[Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
