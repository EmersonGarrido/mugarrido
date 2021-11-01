.class public Lcom/kunlun/platform/android/KunlunLocationsMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aJ:Lcom/kunlun/platform/android/KunlunLocationsMap;

.field private static aK:Ljava/util/Map;
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "US"

    const-string v2, "world-us"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "HT"

    const-string v2, "world-us"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BS"

    const-string v2, "world-us"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BM"

    const-string v2, "world-us"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BZ"

    const-string v2, "world-us"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "CU"

    const-string v2, "world-us"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "HN"

    const-string v2, "world-us"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "CA"

    const-string v2, "world-us"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "KY"

    const-string v2, "world-us"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "GT"

    const-string v2, "world-us"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "JM"

    const-string v2, "world-us"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "VG"

    const-string v2, "world-us"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "RU"

    const-string v2, "world-ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "EH"

    const-string v2, "world-ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "AM"

    const-string v2, "world-ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "AZ"

    const-string v2, "world-ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BY"

    const-string v2, "world-ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "GE"

    const-string v2, "world-ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "KZ"

    const-string v2, "world-ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "MN"

    const-string v2, "world-ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "IR"

    const-string v2, "world-ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "TJ"

    const-string v2, "world-ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "UZ"

    const-string v2, "world-ru"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "AL"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BA"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BG"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "CZ"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "DK"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "EE"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "DE"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "ES"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "FI"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "FR"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "HR"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "GB"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "GR"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "HU"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "IL"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "IS"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "IE"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "IT"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "LV"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "LT"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "MK"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "MG"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "MT"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "MW"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "NL"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "NG"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "NO"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "PL"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "PT"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "RO"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "RS"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "SD"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "SK"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "SI"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "SE"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "SO"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "TZ"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "TR"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "ZA"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "VA"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "UA"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "DZ"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "AE"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "OM"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "OM"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "EG"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "AO"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "AT"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BH"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BJ"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BE"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BW"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BF"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "TG"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "GM"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "CG"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BQ"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "GW"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "GH"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "GA"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "ZW"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "CM"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "QA"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "CI"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "KW"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "KE"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "LB"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "LI"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "LR"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "LU"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "RW"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "MU"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "MR"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "MS"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "MD"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "MA"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "MZ"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "NA"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "NE"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "CH"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "SL"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "SN"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "CY"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "SC"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "SA"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "ST"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "SZ"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "SZ"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "TN"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "UG"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "YE"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "JO"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "TD"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "ZM"

    const-string v2, "world-eu"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "KR"

    const-string v2, "world-kr"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BD"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "PH"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "MM"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "ID"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "IN"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "KH"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "LA"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "MY"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "NZ"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "NP"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "PK"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "LK"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "TH"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "VN"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "SG"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "AU"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "MO"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "PG"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BT"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "FJ"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "KG"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "FM"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "PW"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "SB"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BN"

    const-string v2, "world-sgp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "JP"

    const-string v2, "world-jp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "TW"

    const-string v2, "world-tw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "CN"

    const-string v2, "world-tw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "HK"

    const-string v2, "world-tw"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BR"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "AW"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "AI"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "AG"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BB"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "PY"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "PA"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "BO"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "DO"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "DM"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "EC"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "CV"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "CO"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "CR"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "GD"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "GF"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "PE"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "MX"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "NI"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "KN"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "LC"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "VC"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "SR"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "TC"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "TT"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "VE"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "UY"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "CL"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    const-string v1, "AR"

    const-string v2, "world-br"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getInstance()Lcom/kunlun/platform/android/KunlunLocationsMap;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aJ:Lcom/kunlun/platform/android/KunlunLocationsMap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/kunlun/platform/android/KunlunLocationsMap;

    invoke-direct {v0}, Lcom/kunlun/platform/android/KunlunLocationsMap;-><init>()V

    sput-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aJ:Lcom/kunlun/platform/android/KunlunLocationsMap;

    :cond_0
    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aJ:Lcom/kunlun/platform/android/KunlunLocationsMap;

    return-object v0
.end method


# virtual methods
.method public getKunlunLocationCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "world-us"

    const-string v1, "world"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/KunlunLocationsMap;->aK:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method
