.class final Lcom/kunlun/platform/android/KunlunConf$C;
.super Lcom/kunlun/platform/android/KunlunConf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunlunConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "C"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunConf;-><init>()V

    return-void
.end method


# virtual methods
.method final A()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://sdk.api.kunlun.link/?act=webpassport.main&deviceType=android"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final B()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://sdk.api.kunlun.link/?act=mobile.go"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final J()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://api.push.kunlun.link/?act=push.init"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final K()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://sdk.api.kunlun.link/?act=usercenter.main&deviceType=android"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final M()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://sdk.api.kunlun.link/?act=usercenter.findpassword&deviceType=android"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final g()Ljava/lang/String;
    .locals 1

    const-string v0, "cn"

    return-object v0
.end method

.method final h()Ljava/lang/String;
    .locals 1

    const-string v0, "TEST"

    return-object v0
.end method

.method final i()Ljava/lang/String;
    .locals 1

    const-string v0, "1000"

    return-object v0
.end method

.method final j()Ljava/lang/String;
    .locals 1

    const-string v0, "kunlun.link"

    return-object v0
.end method

.method final k()Ljava/lang/String;
    .locals 1

    const-string v0, "0"

    return-object v0
.end method

.method final n()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://sdk.api.kunlun.link/?act=user.phonelogin"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final o()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://sdk.api.kunlun.link/?act=user.phoneregist"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final p()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://sdk.api.kunlun.link/?act=user.phoneconversion&v=2.0"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final q()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://sdk.api.kunlun.link/?act=user.phonechangepwd&v=2.0"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final r()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://mad.kunlun.link/"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final s()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://mcenter.kunlun.link/"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final t()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://version-api.kunlun.link/"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final u()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://sdk.api.kunlun.link/?act=mobile.main&deviceType=android"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final v()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://pay.kunlun.link/proxy/"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final y()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://sdk.api.kunlun.link/?act=user.thirdpartylogin"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method

.method final z()Lcom/kunlun/platform/android/KunlunConf$T;
    .locals 1

    const-string v0, "http://sdk.api.kunlun.link/?act=mobile.login&deviceType=android"

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunConf;->c(Ljava/lang/String;)Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    return-object v0
.end method
