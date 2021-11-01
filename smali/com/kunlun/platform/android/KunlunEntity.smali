.class public Lcom/kunlun/platform/android/KunlunEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aA:Ljava/lang/String;

.field private aB:Ljava/lang/String;

.field private aC:Z

.field private aD:Ljava/lang/String;

.field private aE:Ljava/lang/String;

.field private aF:Ljava/lang/String;

.field private aa:I

.field private ab:Ljava/lang/String;

.field private az:Ljava/lang/String;

.field private userid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aa:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->ab:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->userid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->az:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aB:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aC:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aD:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aE:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aa:I

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->ab:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->userid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->az:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aB:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aC:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aD:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aE:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aF:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "retcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "retmsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/kunlun/platform/android/KunlunEntity;->setRetCode(I)V

    invoke-virtual {p0, v2}, Lcom/kunlun/platform/android/KunlunEntity;->setRetMsg(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/KunlunEntity;->userid:Ljava/lang/String;

    const-string v1, "ipv4"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/KunlunEntity;->az:Ljava/lang/String;

    const-string v1, "indulge"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/KunlunEntity;->aA:Ljava/lang/String;

    const-string v1, "uname"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/KunlunEntity;->aB:Ljava/lang/String;

    const-string v1, "KL_SSO"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/KunlunEntity;->aD:Ljava/lang/String;

    const-string v1, "KL_PERSON"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/kunlun/platform/android/KunlunEntity;->aE:Ljava/lang/String;

    const-string v1, "isnew"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/kunlun/platform/android/KunlunEntity;->aC:Z

    const-string v1, "data"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aF:Ljava/lang/String;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->userid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/KunlunEntity;->setUserId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->az:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/KunlunEntity;->setIpv4(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aA:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/KunlunEntity;->setIndulge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aB:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/KunlunEntity;->setUname(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/KunlunEntity;->setKLSSO(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/KunlunEntity;->setKLPERSON(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aC:Z

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/KunlunEntity;->setIsNewUser(Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aF:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/kunlun/platform/android/KunlunEntity;->setThirdPartyData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Network error. Please try again."

    iput-object v1, p0, Lcom/kunlun/platform/android/KunlunEntity;->ab:Ljava/lang/String;

    const-string v1, "com.kunlun.platform.android.KunlunEntity"

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
.method public getIndulge()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aA:Ljava/lang/String;

    return-object v0
.end method

.method public getIpv4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->az:Ljava/lang/String;

    return-object v0
.end method

.method public getIsNewUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aC:Z

    return v0
.end method

.method public getKLPERSON()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aE:Ljava/lang/String;

    return-object v0
.end method

.method public getKLSSO()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aD:Ljava/lang/String;

    return-object v0
.end method

.method public getRetCode()I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aa:I

    return v0
.end method

.method public getRetMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->ab:Ljava/lang/String;

    return-object v0
.end method

.method public getThirdPartyData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aF:Ljava/lang/String;

    return-object v0
.end method

.method public getUname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->aB:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunEntity;->userid:Ljava/lang/String;

    return-object v0
.end method

.method public setIndulge(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunEntity;->aA:Ljava/lang/String;

    return-void
.end method

.method public setIpv4(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunEntity;->az:Ljava/lang/String;

    return-void
.end method

.method public setIsNewUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/kunlun/platform/android/KunlunEntity;->aC:Z

    return-void
.end method

.method public setKLPERSON(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunEntity;->aE:Ljava/lang/String;

    return-void
.end method

.method public setKLSSO(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunEntity;->aD:Ljava/lang/String;

    return-void
.end method

.method public setRetCode(I)V
    .locals 0

    iput p1, p0, Lcom/kunlun/platform/android/KunlunEntity;->aa:I

    return-void
.end method

.method public setRetMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunEntity;->ab:Ljava/lang/String;

    return-void
.end method

.method public setThirdPartyData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunEntity;->aF:Ljava/lang/String;

    return-void
.end method

.method public setUname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunEntity;->aB:Ljava/lang/String;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunEntity;->userid:Ljava/lang/String;

    return-void
.end method
