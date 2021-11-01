.class public Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;
.super Ljava/lang/Object;
.source "KunlunSnsLanguageConfigs.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final allStarGamesLocation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static stringProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    const-class v0, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->TAG:Ljava/lang/String;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "allstargames-en"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "allstargames-de"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allstargames-fr"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allstargames-it"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->allStarGamesLocation:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Lcom/kunlun/sns/channel/facebookCenter/StringEnum;)Ljava/lang/String;
    .locals 4
    .param p0, "stringEnum"    # Lcom/kunlun/sns/channel/facebookCenter/StringEnum;

    .prologue
    .line 53
    const-string v0, ""

    .line 55
    .local v0, "returnString":Ljava/lang/String;
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->stringProperties:Ljava/util/Properties;

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->stringProperties:Ljava/util/Properties;

    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/StringEnum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :cond_0
    return-object v0
.end method

.method public static hasInit()Z
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->stringProperties:Ljava/util/Properties;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initLanguage(Ljava/lang/String;)V
    .locals 4
    .param p0, "location"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 28
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->TAG:Ljava/lang/String;

    const-string v2, "======================== \u5f00\u59cb\u52a0\u8f7d\u8bed\u8a00\u5305 ========================"

    invoke-static {v1, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t\u4f20\u5165\u7684location\u4e3a: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {p0}, Lcom/kunlun/sns/channel/facebookCenter/LoctionEnum;->getLanguageIdByLocation(Ljava/lang/String;)I

    move-result v0

    .line 33
    .local v0, "languageId":I
    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->loadLanguageData(I)V

    .line 35
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->TAG:Ljava/lang/String;

    const-string v2, "======================== \u8bed\u8a00\u5305\u52a0\u8f7d\u7ed3\u675f ========================"

    invoke-static {v1, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method private static loadLanguageData(I)V
    .locals 4
    .param p0, "languageId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    sget-object v3, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getInstance:Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;

    invoke-virtual {v3}, Lcom/kunlun/sns/net_engine/global_data_cache/GlobalDataCacheForMemorySingleton;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 41
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 42
    .local v2, "inputStreamReader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 44
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    sput-object v3, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->stringProperties:Ljava/util/Properties;

    .line 45
    sget-object v3, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->stringProperties:Ljava/util/Properties;

    invoke-virtual {v3, v0}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 47
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 48
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    .line 49
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 50
    return-void
.end method

.method public static setLanguage()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 63
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLang()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/LanguageRepository;->getLanguageIdByLanguage(Ljava/lang/String;)I

    move-result v0

    .line 64
    .local v0, "languageId":I
    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->loadLanguageData(I)V

    .line 65
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->getInstance:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->clearFloatMenu()V

    .line 66
    return-void
.end method
