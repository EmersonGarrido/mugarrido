.class public Lcom/kunlun/platform/android/KunlunVersionEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cY:Ljava/lang/String;

.field private cZ:Z

.field private da:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunVersionEntity;->cY:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/KunlunVersionEntity;->cZ:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunVersionEntity;->da:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunVersionEntity;->cY:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/KunlunVersionEntity;->cZ:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunVersionEntity;->da:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "last_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "force_update"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "update_url"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/kunlun/platform/android/KunlunVersionEntity;->setLastVersion(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/kunlun/platform/android/KunlunVersionEntity;->setForceUpdate(Z)V

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/KunlunVersionEntity;->setUpdateUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "com.kunlun.platform.android.KunlunVersionEntity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":Parse Json error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getForceUpdate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kunlun/platform/android/KunlunVersionEntity;->cZ:Z

    return v0
.end method

.method public getLastVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunVersionEntity;->cY:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunVersionEntity;->da:Ljava/lang/String;

    return-object v0
.end method

.method public setForceUpdate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/kunlun/platform/android/KunlunVersionEntity;->cZ:Z

    return-void
.end method

.method public setLastVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunVersionEntity;->cY:Ljava/lang/String;

    return-void
.end method

.method public setUpdateUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunVersionEntity;->da:Ljava/lang/String;

    return-void
.end method
