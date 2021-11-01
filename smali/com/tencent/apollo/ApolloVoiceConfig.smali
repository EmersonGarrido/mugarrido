.class public Lcom/tencent/apollo/ApolloVoiceConfig;
.super Ljava/lang/Object;
.source "ApolloVoiceConfig.java"


# static fields
.field private static LOGTAG:Ljava/lang/String; = null

.field private static final cfgName:Ljava/lang/String; = "apollo_voice/config.json"

.field private static mainContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "ApolloVoiceTag"

    sput-object v0, Lcom/tencent/apollo/ApolloVoiceConfig;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static JSONCfg()Ljava/lang/String;
    .locals 7

    .prologue
    .line 24
    :try_start_0
    sget-object v0, Lcom/tencent/apollo/ApolloVoiceConfig;->mainContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "apollo_voice/config.json"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 26
    new-array v3, v2, [B

    .line 27
    const-string v4, "UTF-8"

    .line 28
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-ge v0, v2, :cond_0

    .line 33
    sub-int v5, v2, v0

    invoke-virtual {v1, v3, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 34
    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 39
    sget-object v1, Lcom/tencent/apollo/ApolloVoiceConfig;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "####Get config :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_1
    return-object v0

    .line 36
    :cond_1
    add-int/2addr v0, v5

    .line 37
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static SetContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 18
    sput-object p0, Lcom/tencent/apollo/ApolloVoiceConfig;->mainContext:Landroid/content/Context;

    .line 19
    return-void
.end method
