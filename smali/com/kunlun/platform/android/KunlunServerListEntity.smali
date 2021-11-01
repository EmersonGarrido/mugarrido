.class public Lcom/kunlun/platform/android/KunlunServerListEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bS:Ljava/lang/String;

.field private bT:Ljava/lang/String;

.field private bU:Ljava/lang/String;

.field private bV:Ljava/lang/String;

.field private bW:Ljava/lang/String;

.field private bX:Ljava/lang/String;

.field private bY:Ljava/lang/String;

.field private bZ:Ljava/lang/String;

.field private ca:Ljava/lang/String;

.field private cb:Ljava/lang/String;

.field private cc:Ljava/lang/String;

.field private cd:Z

.field private ce:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private productId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->id:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->productId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bS:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bT:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bU:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bV:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bW:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bX:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bY:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bZ:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->ca:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->cb:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->cc:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->cd:Z

    const-string v0, "0"

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->ce:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getActivitiesStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bV:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getInited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->cd:Z

    return v0
.end method

.method public getInitedTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->ce:Ljava/lang/String;

    return-object v0
.end method

.method public getMjCheckServer()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlineStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bU:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getRegionId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bS:Ljava/lang/String;

    return-object v0
.end method

.method public getRunningStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bT:Ljava/lang/String;

    return-object v0
.end method

.method public getServerDate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bZ:Ljava/lang/String;

    return-object v0
.end method

.method public getServerHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bX:Ljava/lang/String;

    return-object v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bW:Ljava/lang/String;

    return-object v0
.end method

.method public getServerPort()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bY:Ljava/lang/String;

    return-object v0
.end method

.method public getServerStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->ca:Ljava/lang/String;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->cb:Ljava/lang/String;

    return-object v0
.end method

.method public parse(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/kunlun/platform/android/KunlunServerListEntity;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "servers"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v5, :cond_0

    :goto_1
    return-object v3

    :cond_0
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "productId"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "regionId"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "runningStatus"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "onlineStatus"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "activitiesStatus"

    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "serverName"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "serverHost"

    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "serverPort"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, "serverDate"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "serverStatus"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "serverUrl"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "mjCheckServer"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "inited"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v20

    const-string v21, "initedtime"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v21, Lcom/kunlun/platform/android/KunlunServerListEntity;

    invoke-direct/range {v21 .. v21}, Lcom/kunlun/platform/android/KunlunServerListEntity;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/kunlun/platform/android/KunlunServerListEntity;->setId(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v8}, Lcom/kunlun/platform/android/KunlunServerListEntity;->setProductId(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Lcom/kunlun/platform/android/KunlunServerListEntity;->setRegionId(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Lcom/kunlun/platform/android/KunlunServerListEntity;->setRunningStatus(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/kunlun/platform/android/KunlunServerListEntity;->setOnlineStatus(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/kunlun/platform/android/KunlunServerListEntity;->setActivitiesStatus(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Lcom/kunlun/platform/android/KunlunServerListEntity;->setServerName(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Lcom/kunlun/platform/android/KunlunServerListEntity;->setServerHost(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Lcom/kunlun/platform/android/KunlunServerListEntity;->setServerPort(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunlunServerListEntity;->setServerDate(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunlunServerListEntity;->setServerStatus(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunlunServerListEntity;->setServerUrl(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunlunServerListEntity;->setMjCheckServer(Ljava/lang/String;)V

    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunlunServerListEntity;->setInited(Z)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/kunlun/platform/android/KunlunServerListEntity;->setInitedTime(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string v4, "com.kunlun.platform.android.KunlunServerListEntity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ":Parse Json error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public setActivitiesStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bV:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->id:Ljava/lang/String;

    return-void
.end method

.method public setInited(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->cd:Z

    return-void
.end method

.method public setInitedTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->ce:Ljava/lang/String;

    return-void
.end method

.method public setMjCheckServer(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->cc:Ljava/lang/String;

    return-void
.end method

.method public setOnlineStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bU:Ljava/lang/String;

    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->productId:Ljava/lang/String;

    return-void
.end method

.method public setRegionId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bS:Ljava/lang/String;

    return-void
.end method

.method public setRunningStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bT:Ljava/lang/String;

    return-void
.end method

.method public setServerDate(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bZ:Ljava/lang/String;

    return-void
.end method

.method public setServerHost(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bX:Ljava/lang/String;

    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bW:Ljava/lang/String;

    return-void
.end method

.method public setServerPort(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->bY:Ljava/lang/String;

    return-void
.end method

.method public setServerStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->ca:Ljava/lang/String;

    return-void
.end method

.method public setServerUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunServerListEntity;->cb:Ljava/lang/String;

    return-void
.end method
