.class final Lcom/kunlun/platform/android/KunlunConf$R;
.super Lcom/kunlun/platform/android/KunlunConf$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunlunConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "R"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunConf$j;-><init>()V

    return-void
.end method


# virtual methods
.method final J()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "https://api.push.en.koramgame.com/?act=push.init"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final g()Ljava/lang/String;
    .locals 1

    const-string v0, "en"

    return-object v0
.end method

.method final h()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method final i()Ljava/lang/String;
    .locals 1

    const-string v0, "1001"

    return-object v0
.end method

.method final j()Ljava/lang/String;
    .locals 1

    const-string v0, "koramgame.com"

    return-object v0
.end method

.method final k()Ljava/lang/String;
    .locals 1

    const-string v0, "4"

    return-object v0
.end method

.method final l()Ljava/lang/String;
    .locals 1

    const-string v0, "googleglobal"

    return-object v0
.end method

.method final s()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://en.mcenter.koramgame.com/"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method
