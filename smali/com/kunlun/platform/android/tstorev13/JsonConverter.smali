.class public Lcom/kunlun/platform/android/tstorev13/JsonConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/tstorev13/Converter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJson(Ljava/lang/String;)Lcom/kunlun/platform/android/tstorev13/Response;
    .locals 14

    const/4 v0, 0x0

    const/4 v7, 0x0

    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "method"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "result"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "result"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v1, "count"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "count"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    :goto_0
    if-lez v5, :cond_12

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "product"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v1, v0

    :goto_1
    if-lt v1, v5, :cond_1

    :goto_2
    new-instance v0, Lcom/kunlun/platform/android/tstorev13/Response$Result;

    const-string v1, "code"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "code"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string v2, "message"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "message"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    const-string v3, "txid"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "txid"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_5
    const-string v10, "receipt"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string v10, "receipt"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-direct/range {v0 .. v6}, Lcom/kunlun/platform/android/tstorev13/Response$Result;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    new-instance v1, Lcom/kunlun/platform/android/tstorev13/Response;

    const-string v2, "api_version"

    invoke-virtual {v8, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "identifier"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v9, v0}, Lcom/kunlun/platform/android/tstorev13/Response;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kunlun/platform/android/tstorev13/Response$Result;)V

    move-object v0, v1

    :goto_7
    return-object v0

    :cond_0
    move v5, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v10, Lcom/kunlun/platform/android/tstorev13/Response$Product;

    invoke-direct {v10}, Lcom/kunlun/platform/android/tstorev13/Response$Product;-><init>()V

    const-string v0, "appid"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "appid"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8
    iput-object v0, v10, Lcom/kunlun/platform/android/tstorev13/Response$Product;->appid:Ljava/lang/String;

    const-string v0, "endDate"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "endDate"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_9
    iput-object v0, v10, Lcom/kunlun/platform/android/tstorev13/Response$Product;->endDate:Ljava/lang/String;

    const-string v0, "id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "id"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    iput-object v0, v10, Lcom/kunlun/platform/android/tstorev13/Response$Product;->id:Ljava/lang/String;

    const-string v0, "kind"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "kind"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    iput-object v0, v10, Lcom/kunlun/platform/android/tstorev13/Response$Product;->kind:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "name"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_c
    iput-object v0, v10, Lcom/kunlun/platform/android/tstorev13/Response$Product;->name:Ljava/lang/String;

    const-string v0, "price"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "price"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    iput-wide v12, v10, Lcom/kunlun/platform/android/tstorev13/Response$Product;->price:D

    const/4 v0, 0x0

    iput-boolean v0, v10, Lcom/kunlun/platform/android/tstorev13/Response$Product;->purchasability:Z

    const-string v0, "purchasability"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "purchasability"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v10, Lcom/kunlun/platform/android/tstorev13/Response$Product;->purchasability:Z

    :cond_2
    const-string v0, "startDate"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "startDate"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_e
    iput-object v0, v10, Lcom/kunlun/platform/android/tstorev13/Response$Product;->startDate:Ljava/lang/String;

    const-string v0, "status"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/kunlun/platform/android/tstorev13/Response$Status;

    const-string v11, "code"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "message"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Lcom/kunlun/platform/android/tstorev13/Response$Status;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v10, Lcom/kunlun/platform/android/tstorev13/Response$Product;->status:Lcom/kunlun/platform/android/tstorev13/Response$Status;

    :cond_3
    const-string v0, "type"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "type"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_f
    iput-object v0, v10, Lcom/kunlun/platform/android/tstorev13/Response$Product;->type:Ljava/lang/String;

    const-string v0, "validity"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "validity"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_10
    iput v0, v10, Lcom/kunlun/platform/android/tstorev13/Response$Product;->validity:I

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_4
    move-object v0, v7

    goto/16 :goto_8

    :cond_5
    move-object v0, v7

    goto/16 :goto_9

    :cond_6
    move-object v0, v7

    goto/16 :goto_a

    :cond_7
    move-object v0, v7

    goto/16 :goto_b

    :cond_8
    move-object v0, v7

    goto/16 :goto_c

    :cond_9
    move-object v0, v7

    goto :goto_d

    :cond_a
    move-object v0, v7

    goto :goto_e

    :cond_b
    move-object v0, v7

    goto :goto_f

    :cond_c
    const/4 v0, -0x1

    goto :goto_10

    :cond_d
    move-object v1, v7

    goto/16 :goto_3

    :cond_e
    move-object v2, v7

    goto/16 :goto_4

    :cond_f
    move-object v3, v7

    goto/16 :goto_5

    :cond_10
    move-object v4, v7

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v7

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    :cond_11
    move-object v0, v7

    goto/16 :goto_7

    :cond_12
    move-object v6, v7

    goto/16 :goto_2
.end method
