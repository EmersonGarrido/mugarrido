.class public final Lcom/kunlun/platform/android/tstorev13/ConverterFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GSON:Ljava/lang/String; = "gson"

.field public static final JSON_SIMPLE:Ljava/lang/String; = "json"

.field private static final mL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/kunlun/platform/android/tstorev13/Converter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "gson"

    new-instance v2, Lcom/kunlun/platform/android/tstorev13/GsonConverter;

    invoke-direct {v2}, Lcom/kunlun/platform/android/tstorev13/GsonConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "json"

    new-instance v2, Lcom/kunlun/platform/android/tstorev13/JsonConverter;

    invoke-direct {v2}, Lcom/kunlun/platform/android/tstorev13/JsonConverter;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/kunlun/platform/android/tstorev13/ConverterFactory;->mL:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConverter()Lcom/kunlun/platform/android/tstorev13/Converter;
    .locals 1

    const-string v0, "gson"

    invoke-static {v0}, Lcom/kunlun/platform/android/tstorev13/ConverterFactory;->getConverter(Ljava/lang/String;)Lcom/kunlun/platform/android/tstorev13/Converter;

    move-result-object v0

    return-object v0
.end method

.method public static getConverter(Ljava/lang/String;)Lcom/kunlun/platform/android/tstorev13/Converter;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/tstorev13/ConverterFactory;->mL:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kunlun/platform/android/tstorev13/Converter;

    return-object v0
.end method
