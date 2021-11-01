.class public Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;
.super Ljava/lang/Object;
.source "LanguageRepository.java"


# static fields
.field public static final LANGUAGE_CN:I

.field public static final LANGUAGE_DE:I

.field public static final LANGUAGE_EN:I

.field public static final LANGUAGE_ES:I

.field public static final LANGUAGE_FR:I

.field public static final LANGUAGE_IT:I

.field public static final LANGUAGE_JA:I

.field public static final LANGUAGE_KR:I

.field public static final LANGUAGE_NONE:I

.field public static final LANGUAGE_PL:I

.field public static final LANGUAGE_PT:I

.field public static final LANGUAGE_RU:I

.field public static final LANGUAGE_TH:I

.field public static final LANGUAGE_TR:I

.field public static final LANGUAGE_TW:I

.field public static final LANGUAGE_VN:I

.field private static languageLs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    .line 11
    sget v0, Lcom/kunlun/sns/R$raw;->language_en:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_EN:I

    .line 12
    sget v0, Lcom/kunlun/sns/R$raw;->language_kr:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_KR:I

    .line 13
    sget v0, Lcom/kunlun/sns/R$raw;->language_th:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_TH:I

    .line 14
    sget v0, Lcom/kunlun/sns/R$raw;->language_vn:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_VN:I

    .line 15
    sget v0, Lcom/kunlun/sns/R$raw;->language_tr:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_TR:I

    .line 16
    sget v0, Lcom/kunlun/sns/R$raw;->language_tw:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_TW:I

    .line 17
    sget v0, Lcom/kunlun/sns/R$raw;->language_ru:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_RU:I

    .line 18
    sget v0, Lcom/kunlun/sns/R$raw;->language_cn:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_CN:I

    .line 19
    sget v0, Lcom/kunlun/sns/R$raw;->language_de:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_DE:I

    .line 20
    sget v0, Lcom/kunlun/sns/R$raw;->language_ja:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_JA:I

    .line 21
    sget v0, Lcom/kunlun/sns/R$raw;->language_fr:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_FR:I

    .line 22
    sget v0, Lcom/kunlun/sns/R$raw;->language_pt:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_PT:I

    .line 23
    sget v0, Lcom/kunlun/sns/R$raw;->language_it:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_IT:I

    .line 24
    sget v0, Lcom/kunlun/sns/R$raw;->language_pl:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_PL:I

    .line 25
    sget v0, Lcom/kunlun/sns/R$raw;->language_es:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_ES:I

    .line 26
    sget v0, Lcom/kunlun/sns/R$raw;->language:I

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_NONE:I

    .line 31
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "cn"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_CN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "zh-cn"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_CN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "en"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_EN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "kr"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_KR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "ko"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_KR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "th"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_TH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "vn"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_VN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "vi"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_VN:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "tr"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_TR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "tw"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_TW:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "zh-tw"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_TW:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "ru"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_RU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "de"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_DE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "allstargames-de"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_DE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "fr"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_FR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "allstargames-fr"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_FR:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "pt"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_PT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "it"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_IT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "allstargames-it"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_IT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "ja"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_JA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "jp"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_JA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "pl"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_PL:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "es"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_ES:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    const-string v1, "none"

    sget v2, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->LANGUAGE_NONE:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containLanguage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 84
    const-string v0, "en"

    .line 85
    .local v0, "languageRes":Ljava/lang/String;
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    move-object v0, p0

    .line 88
    :cond_0
    return-object v0
.end method

.method public static getLanguageIdByLanguage(Ljava/lang/String;)I
    .locals 2
    .param p0, "language"    # Ljava/lang/String;

    .prologue
    .line 75
    sget v0, Lcom/kunlun/sns/R$raw;->language_en:I

    .line 76
    .local v0, "languageId":I
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->languageLs:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 79
    :cond_0
    return v0
.end method
