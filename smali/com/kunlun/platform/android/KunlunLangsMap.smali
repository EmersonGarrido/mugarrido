.class public Lcom/kunlun/platform/android/KunlunLangsMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aH:Lcom/kunlun/platform/android/KunlunLangsMap;

.field private static aI:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aH:Lcom/kunlun/platform/android/KunlunLangsMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "vi"

    const-string v2, "vi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "vn"

    const-string v2, "vi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "zh"

    const-string v2, "zh-tw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "tw"

    const-string v2, "zh-tw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "zh-tw"

    const-string v2, "zh-tw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "zh-cn"

    const-string v2, "zh-cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "cn"

    const-string v2, "zh-cn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "th"

    const-string v2, "th"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "pt"

    const-string v2, "pt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "gl"

    const-string v2, "pt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ko"

    const-string v2, "ko"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "kr"

    const-string v2, "ko"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ja"

    const-string v2, "ja"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "jp"

    const-string v2, "ja"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "it"

    const-string v2, "it"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "la"

    const-string v2, "it"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "id"

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "jw"

    const-string v2, "id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "de"

    const-string v2, "de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "yi"

    const-string v2, "de"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "fr"

    const-string v2, "fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "el"

    const-string v2, "fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ht"

    const-string v2, "fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "mg"

    const-string v2, "fr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "hy"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "az"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "be"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ka"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "kk"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "lv"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "lt"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "mn"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ru"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "tg"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "uk"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "uz"

    const-string v2, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "af"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "sq"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "bn"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "bs"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "bg"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ceb"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ny"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "hr"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "cs"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "da"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "en"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "et"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "tl"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "fi"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ha"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "iw"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "hi"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "hmn"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "hu"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "is"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ig"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ga"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "kn"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "km"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "lo"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "mk"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ms"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ml"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "mt"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "mi"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "mr"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "my"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ne"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "no"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ma"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ro"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "sr"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "st"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "si"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "sk"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "sl"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "sw"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "sv"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ta"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "te"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ur"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "cy"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "yo"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "zu"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "gu"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "eo"

    const-string v2, "en"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ar"

    const-string v2, "ar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "fa"

    const-string v2, "ar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "so"

    const-string v2, "ar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "su"

    const-string v2, "ar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "eu"

    const-string v2, "es"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "ca"

    const-string v2, "es"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "es"

    const-string v2, "es"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "tr"

    const-string v2, "tr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "nl"

    const-string v2, "nl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    const-string v1, "pl"

    const-string v2, "pl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/kunlun/platform/android/KunlunLangsMap;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aH:Lcom/kunlun/platform/android/KunlunLangsMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/kunlun/platform/android/KunlunLangsMap;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunLangsMap;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aH:Lcom/kunlun/platform/android/KunlunLangsMap;

    :cond_0
    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aH:Lcom/kunlun/platform/android/KunlunLangsMap;

    return-object v0
.end method


# virtual methods
.method public getKunlunLangCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "en"

    sget-object v1, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/KunlunLangsMap;->aI:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_0
    return-object v0
.end method
