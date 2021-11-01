.class public Lcom/kunlun/platform/android/KunlunDataEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aa:I

.field private ab:Ljava/lang/String;

.field private data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kunlun/platform/android/KunlunDataEntity;->aa:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunDataEntity;->ab:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunDataEntity;->data:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kunlun/platform/android/KunlunDataEntity;->aa:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunDataEntity;->ab:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunDataEntity;->data:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "retcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "retmsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/kunlun/platform/android/KunlunDataEntity;->setRetCode(I)V

    invoke-virtual {p0, v2}, Lcom/kunlun/platform/android/KunlunDataEntity;->setRetMsg(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunDataEntity;->data:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDataEntity;->data:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/KunlunDataEntity;->setData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Network error. Please try again."

    iput-object v1, p0, Lcom/kunlun/platform/android/KunlunDataEntity;->ab:Ljava/lang/String;

    const-string v1, "com.kunlun.platform.android.KunlunDataEntity"

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
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDataEntity;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getRetCode()I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/KunlunDataEntity;->aa:I

    return v0
.end method

.method public getRetMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDataEntity;->ab:Ljava/lang/String;

    return-object v0
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunDataEntity;->data:Ljava/lang/String;

    return-void
.end method

.method public setRetCode(I)V
    .locals 0

    iput p1, p0, Lcom/kunlun/platform/android/KunlunDataEntity;->aa:I

    return-void
.end method

.method public setRetMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunDataEntity;->ab:Ljava/lang/String;

    return-void
.end method
