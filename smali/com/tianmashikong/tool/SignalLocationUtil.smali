.class public Lcom/tianmashikong/tool/SignalLocationUtil;
.super Ljava/lang/Object;
.source "SignalLocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;,
        Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetLocationDetail(Z)Ljava/lang/String;
    .locals 10
    .param p0, "chkwifi"    # Z

    .prologue
    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v3, "sb":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/tianmashikong/tool/SignalLocationUtil;->getCellIDInfo(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    .line 385
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;>;"
    sget-object v4, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-static {v4, v1, p0, v3}, Lcom/tianmashikong/tool/SignalLocationUtil;->callGear(Landroid/content/Context;Ljava/util/List;ZLjava/lang/StringBuilder;)Landroid/location/Location;

    move-result-object v2

    .line 386
    .local v2, "lc":Landroid/location/Location;
    if-eqz v2, :cond_0

    .line 388
    const-string v4, "where url===>http://maps.google.cn/maps/geo?key=abcdefg&q=%s,%s\r\n"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-static {v2}, Lcom/tianmashikong/tool/SignalLocationUtil;->getAddress(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "address":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fuck over==>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .end local v0    # "address":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static callGear(Landroid/content/Context;Ljava/util/List;ZLjava/lang/StringBuilder;)Landroid/location/Location;
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "chkwifi"    # Z
    .param p3, "sbr"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;",
            ">;Z",
            "Ljava/lang/StringBuilder;",
            ")",
            "Landroid/location/Location;"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, "cellID":Ljava/util/List;, "Ljava/util/List<Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v19

    if-nez v19, :cond_2

    .line 531
    :cond_0
    if-eqz p2, :cond_1

    .line 535
    :try_start_0
    const-string v19, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 536
    .local v12, "manager":Landroid/net/wifi/WifiManager;
    new-instance v13, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;

    invoke-direct {v13, v12}, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;-><init>(Landroid/net/wifi/WifiManager;)V

    .line 537
    .local v13, "mgr":Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "wifi_towers==>"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;->wifiTowers()Lorg/json/JSONArray;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 543
    .end local v12    # "manager":Landroid/net/wifi/WifiManager;
    .end local v13    # "mgr":Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;
    :cond_1
    :goto_0
    const/4 v11, 0x0

    .line 659
    :goto_1
    return-object v11

    .line 546
    :cond_2
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 547
    .local v4, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    const-string v19, "http://www.google.com/loc/json"

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 548
    .local v14, "post":Lorg/apache/http/client/methods/HttpPost;
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 552
    .local v9, "holder":Lorg/json/JSONObject;
    :try_start_1
    const-string v19, "version"

    const-string v20, "1.1.0"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-string v19, "host"

    const-string v20, "maps.google.com"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    const-string v20, "home_mobile_country_code"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->mobileCountryCode:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string v20, "home_mobile_network_code"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->mobileNetworkCode:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 556
    const-string v20, "radio_type"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->radioType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 557
    const-string v19, "request_address"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 559
    const-string v20, "460"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->mobileCountryCode:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 560
    const-string v19, "address_language"

    const-string v20, "zh_CN"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 565
    :goto_2
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 567
    .local v2, "array":Lorg/json/JSONArray;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 568
    .local v5, "current_data":Lorg/json/JSONObject;
    const-string v20, "cell_id"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->cellId:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 569
    const-string v20, "location_area_code"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->locationAreaCode:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 570
    const-string v20, "mobile_country_code"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->mobileCountryCode:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    const-string v20, "mobile_network_code"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->mobileNetworkCode:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 572
    const-string v19, "age"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 573
    const-string v19, "signal_strength"

    const/16 v20, -0x3c

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 574
    const-string v19, "timing_advance"

    const/16 v20, 0x15b3

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 575
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 577
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 579
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-lt v10, v0, :cond_6

    .line 592
    .end local v10    # "i":I
    :cond_3
    const-string v19, "cell_towers"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 594
    if-eqz p2, :cond_4

    .line 598
    :try_start_2
    const-string v19, "wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 599
    .restart local v12    # "manager":Landroid/net/wifi/WifiManager;
    new-instance v13, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;

    invoke-direct {v13, v12}, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;-><init>(Landroid/net/wifi/WifiManager;)V

    .line 600
    .restart local v13    # "mgr":Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;
    const-string v19, "wifi_towers"

    invoke-virtual {v13}, Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;->wifiTowers()Lorg/json/JSONArray;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 607
    .end local v12    # "manager":Landroid/net/wifi/WifiManager;
    .end local v13    # "mgr":Lcom/tianmashikong/tool/SignalLocationUtil$WifiInfoManager;
    :cond_4
    :goto_4
    :try_start_3
    const-string v19, "towers===>\r\n"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    const-string v19, "\r\n"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    new-instance v18, Lorg/apache/http/entity/StringEntity;

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 613
    .local v18, "se":Lorg/apache/http/entity/StringEntity;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 614
    invoke-virtual {v4, v14}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 616
    .local v15, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 617
    .local v8, "entity":Lorg/apache/http/HttpEntity;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    invoke-interface {v8}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 619
    .local v3, "br":Ljava/io/BufferedReader;
    new-instance v17, Ljava/lang/StringBuffer;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuffer;-><init>()V

    .line 620
    .local v17, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v16

    .line 622
    .local v16, "result":Ljava/lang/String;
    :goto_5
    if-nez v16, :cond_7

    .line 628
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 629
    .local v6, "data":Lorg/json/JSONObject;
    const-string v19, "location"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "data":Lorg/json/JSONObject;
    check-cast v6, Lorg/json/JSONObject;

    .line 631
    .restart local v6    # "data":Lorg/json/JSONObject;
    new-instance v11, Landroid/location/Location;

    const-string v19, "network"

    move-object/from16 v0, v19

    invoke-direct {v11, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 632
    .local v11, "loc":Landroid/location/Location;
    const-string v19, "latitude"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Double;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 633
    const-string v19, "longitude"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Double;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 634
    const-string v19, "accuracy"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 635
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 637
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "wesn,location==>"

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\r\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 641
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v5    # "current_data":Lorg/json/JSONObject;
    .end local v6    # "data":Lorg/json/JSONObject;
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "loc":Landroid/location/Location;
    .end local v15    # "resp":Lorg/apache/http/HttpResponse;
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuffer;
    .end local v18    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_0
    move-exception v7

    .line 643
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    .line 644
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 562
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_5
    :try_start_4
    const-string v19, "address_language"

    const-string v20, "en_US"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_2

    .line 646
    :catch_1
    move-exception v7

    .line 648
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 659
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_6
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 581
    .restart local v2    # "array":Lorg/json/JSONArray;
    .restart local v5    # "current_data":Lorg/json/JSONObject;
    .restart local v10    # "i":I
    :cond_6
    :try_start_5
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 582
    .restart local v6    # "data":Lorg/json/JSONObject;
    const-string v20, "cell_id"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->cellId:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 583
    const-string v20, "location_area_code"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->locationAreaCode:I

    move/from16 v19, v0

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 584
    const-string v20, "mobile_country_code"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->mobileCountryCode:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 585
    const-string v20, "mobile_network_code"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->mobileNetworkCode:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 586
    const-string v19, "age"

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 587
    const-string v20, "signal_strength"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    move-object/from16 v0, v19

    iget v0, v0, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->bss:I

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/tianmashikong/tool/SignalLocationUtil;->dBm(I)I

    move-result v19

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 588
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 579
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 624
    .end local v6    # "data":Lorg/json/JSONObject;
    .end local v10    # "i":I
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v15    # "resp":Lorg/apache/http/HttpResponse;
    .restart local v16    # "result":Ljava/lang/String;
    .restart local v17    # "sb":Ljava/lang/StringBuffer;
    .restart local v18    # "se":Lorg/apache/http/entity/StringEntity;
    :cond_7
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v16

    goto/16 :goto_5

    .line 650
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v5    # "current_data":Lorg/json/JSONObject;
    .end local v8    # "entity":Lorg/apache/http/HttpEntity;
    .end local v15    # "resp":Lorg/apache/http/HttpResponse;
    .end local v16    # "result":Ljava/lang/String;
    .end local v17    # "sb":Ljava/lang/StringBuffer;
    .end local v18    # "se":Lorg/apache/http/entity/StringEntity;
    :catch_2
    move-exception v7

    .line 652
    .local v7, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v7}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto/16 :goto_6

    .line 654
    .end local v7    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v7

    .line 656
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 602
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v2    # "array":Lorg/json/JSONArray;
    .restart local v5    # "current_data":Lorg/json/JSONObject;
    :catch_4
    move-exception v19

    goto/16 :goto_4

    .line 539
    .end local v2    # "array":Lorg/json/JSONArray;
    .end local v4    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "current_data":Lorg/json/JSONObject;
    .end local v9    # "holder":Lorg/json/JSONObject;
    .end local v14    # "post":Lorg/apache/http/client/methods/HttpPost;
    :catch_5
    move-exception v19

    goto/16 :goto_0
.end method

.method public static dBm(I)I
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 516
    if-ltz p0, :cond_0

    const/16 v1, 0x1f

    if-gt p0, v1, :cond_0

    .line 518
    mul-int/lit8 v1, p0, 0x2

    add-int/lit8 v0, v1, -0x71

    .line 524
    .local v0, "j":I
    :goto_0
    return v0

    .line 522
    .end local v0    # "j":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "j":I
    goto :goto_0
.end method

.method static getAddress(Landroid/location/Location;)Ljava/lang/String;
    .locals 18
    .param p0, "itude"    # Landroid/location/Location;

    .prologue
    .line 665
    const-string v10, ""

    .line 666
    .local v10, "resultString":Ljava/lang/String;
    const-string v13, "http://maps.google.cn/maps/geo?key=abcdefg&q=%s,%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 668
    .local v12, "urlString":Ljava/lang/String;
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 669
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 673
    .local v4, "get":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 674
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 675
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/InputStreamReader;

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 676
    .local v0, "buffReader":Ljava/io/BufferedReader;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 678
    .local v11, "strBuff":Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .line 679
    .local v9, "result":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1

    .line 684
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 685
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_0

    .line 687
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 688
    .local v7, "jsonobject":Lorg/json/JSONObject;
    new-instance v6, Lorg/json/JSONArray;

    const-string v13, "Placemark"

    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 689
    .local v6, "jsonArray":Lorg/json/JSONArray;
    const-string v10, ""

    .line 690
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-lt v5, v13, :cond_2

    .line 703
    .end local v5    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonobject":Lorg/json/JSONObject;
    :cond_0
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 704
    const/4 v1, 0x0

    .line 707
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "result":Ljava/lang/String;
    .end local v11    # "strBuff":Ljava/lang/StringBuffer;
    :goto_2
    return-object v10

    .line 681
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    .restart local v3    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "result":Ljava/lang/String;
    .restart local v11    # "strBuff":Ljava/lang/StringBuffer;
    :cond_1
    :try_start_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 696
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "result":Ljava/lang/String;
    .end local v11    # "strBuff":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 699
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 703
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 704
    const/4 v1, 0x0

    goto :goto_2

    .line 692
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffReader":Ljava/io/BufferedReader;
    .restart local v3    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "i":I
    .restart local v6    # "jsonArray":Lorg/json/JSONArray;
    .restart local v7    # "jsonobject":Lorg/json/JSONObject;
    .restart local v8    # "response":Lorg/apache/http/HttpResponse;
    .restart local v9    # "result":Ljava/lang/String;
    .restart local v11    # "strBuff":Ljava/lang/StringBuffer;
    :cond_2
    :try_start_3
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "address"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 690
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 702
    .end local v0    # "buffReader":Ljava/io/BufferedReader;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "i":I
    .end local v6    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "jsonobject":Lorg/json/JSONObject;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    .end local v9    # "result":Ljava/lang/String;
    .end local v11    # "strBuff":Ljava/lang/StringBuffer;
    :catchall_0
    move-exception v13

    .line 703
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 704
    const/4 v1, 0x0

    .line 705
    throw v13
.end method

.method static getCellIDInfo(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v2, "CellID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;>;"
    :try_start_0
    const-string v21, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 406
    .local v13, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v20

    .line 407
    .local v20, "type":I
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v17

    .line 409
    .local v17, "phoneType":I
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v4

    .line 411
    .local v4, "cellLocation":Landroid/telephony/CellLocation;
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 412
    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 413
    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    .line 414
    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    instance-of v0, v4, Landroid/telephony/gsm/GsmCellLocation;

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 416
    :cond_0
    move-object v0, v4

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    move-object v8, v0

    .line 417
    .local v8, "gsm":Landroid/telephony/gsm/GsmCellLocation;
    if-nez v8, :cond_2

    .line 419
    const/4 v2, 0x0

    .line 509
    .end local v2    # "CellID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;>;"
    .end local v4    # "cellLocation":Landroid/telephony/CellLocation;
    .end local v8    # "gsm":Landroid/telephony/gsm/GsmCellLocation;
    .end local v13    # "manager":Landroid/telephony/TelephonyManager;
    .end local v17    # "phoneType":I
    .end local v20    # "type":I
    :cond_1
    :goto_0
    return-object v2

    .line 422
    .restart local v2    # "CellID":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;>;"
    .restart local v4    # "cellLocation":Landroid/telephony/CellLocation;
    .restart local v8    # "gsm":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v13    # "manager":Landroid/telephony/TelephonyManager;
    .restart local v17    # "phoneType":I
    .restart local v20    # "type":I
    :cond_2
    invoke-virtual {v8}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v11

    .line 423
    .local v11, "lac":I
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 424
    .local v14, "mcc":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x3

    const/16 v23, 0x5

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 426
    .local v15, "mnc":Ljava/lang/String;
    new-instance v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    invoke-direct {v6}, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;-><init>()V

    .line 427
    .local v6, "currentCell":Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->cdma:Z

    .line 428
    const-string v21, "gsm"

    move-object/from16 v0, v21

    iput-object v0, v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->radioType:Ljava/lang/String;

    .line 430
    invoke-virtual {v8}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v21

    move/from16 v0, v21

    iput v0, v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->cellId:I

    .line 431
    iput-object v14, v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->mobileCountryCode:Ljava/lang/String;

    .line 432
    iput-object v15, v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->mobileNetworkCode:Ljava/lang/String;

    .line 433
    iput v11, v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->locationAreaCode:I

    .line 435
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v12

    .line 438
    .local v12, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    .line 439
    .local v19, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move/from16 v0, v19

    if-ge v9, v0, :cond_1

    .line 441
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v5

    .line 442
    .local v5, "cid":I
    if-lez v5, :cond_3

    const v21, 0xffff

    move/from16 v0, v21

    if-ne v5, v0, :cond_4

    .line 439
    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 445
    :cond_4
    new-instance v10, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    invoke-direct {v10}, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;-><init>()V

    .line 446
    .local v10, "info":Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v10, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->cdma:Z

    .line 447
    iput v5, v10, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->cellId:I

    .line 448
    iput-object v14, v10, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->mobileCountryCode:Ljava/lang/String;

    .line 449
    iput-object v15, v10, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->mobileNetworkCode:Ljava/lang/String;

    .line 450
    iput v11, v10, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->locationAreaCode:I

    .line 451
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->bss:I

    .line 452
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 504
    .end local v4    # "cellLocation":Landroid/telephony/CellLocation;
    .end local v5    # "cid":I
    .end local v6    # "currentCell":Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;
    .end local v8    # "gsm":Landroid/telephony/gsm/GsmCellLocation;
    .end local v9    # "i":I
    .end local v10    # "info":Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;
    .end local v11    # "lac":I
    .end local v12    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    .end local v13    # "manager":Landroid/telephony/TelephonyManager;
    .end local v14    # "mcc":Ljava/lang/String;
    .end local v15    # "mnc":Ljava/lang/String;
    .end local v17    # "phoneType":I
    .end local v19    # "size":I
    .end local v20    # "type":I
    :catch_0
    move-exception v7

    .line 506
    .local v7, "e":Ljava/lang/Exception;
    const-string v21, "Tianma"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 455
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v4    # "cellLocation":Landroid/telephony/CellLocation;
    .restart local v13    # "manager":Landroid/telephony/TelephonyManager;
    .restart local v17    # "phoneType":I
    .restart local v20    # "type":I
    :cond_5
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 456
    const/16 v21, 0x7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 457
    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 458
    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    .line 459
    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 461
    :cond_6
    :try_start_1
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    .line 462
    .local v3, "cdma":Landroid/telephony/cdma/CdmaCellLocation;
    if-nez v3, :cond_7

    .line 464
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 467
    :cond_7
    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v5

    .line 468
    .restart local v5    # "cid":I
    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v18

    .line 469
    .local v18, "sid":I
    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v16

    .line 471
    .local v16, "nid":I
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 472
    .restart local v15    # "mnc":Ljava/lang/String;
    move/from16 v11, v16

    .line 473
    .restart local v11    # "lac":I
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x3

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 475
    .restart local v14    # "mcc":Ljava/lang/String;
    new-instance v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    invoke-direct {v6}, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;-><init>()V

    .line 476
    .restart local v6    # "currentCell":Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->cdma:Z

    .line 477
    const-string v21, "cdma"

    move-object/from16 v0, v21

    iput-object v0, v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->radioType:Ljava/lang/String;

    .line 478
    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->lat:F

    .line 479
    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->lng:F

    .line 481
    iput v5, v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->cellId:I

    .line 482
    iput-object v14, v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->mobileCountryCode:Ljava/lang/String;

    .line 483
    iput-object v15, v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->mobileNetworkCode:Ljava/lang/String;

    .line 484
    iput v11, v6, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->locationAreaCode:I

    .line 486
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v12

    .line 489
    .restart local v12    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v19

    .line 490
    .restart local v19    # "size":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_3
    move/from16 v0, v19

    if-ge v9, v0, :cond_1

    .line 492
    new-instance v10, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;

    invoke-direct {v10}, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;-><init>()V

    .line 493
    .restart local v10    # "info":Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;
    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v10, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->cdma:Z

    .line 494
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v10, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->lat:F

    .line 495
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v10, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->lng:F

    .line 496
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/telephony/NeighboringCellInfo;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->cellId:I

    .line 497
    iput-object v14, v10, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->mobileCountryCode:Ljava/lang/String;

    .line 498
    iput-object v15, v10, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->mobileNetworkCode:Ljava/lang/String;

    .line 499
    iput v11, v10, Lcom/tianmashikong/tool/SignalLocationUtil$CellIDInfo;->locationAreaCode:I

    .line 500
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 490
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 91
    const-string v0, ""

    .line 94
    .local v0, "imei":Ljava/lang/String;
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 95
    .local v1, "tel":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    :cond_1
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 103
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 105
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 112
    .end local v1    # "tel":Landroid/telephony/TelephonyManager;
    .end local v2    # "wm":Landroid/net/wifi/WifiManager;
    :cond_2
    :goto_0
    return-object v0

    .line 109
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 117
    const-string v1, ""

    .line 120
    .local v1, "operator":Ljava/lang/String;
    :try_start_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 121
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 122
    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 124
    :cond_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return-object v1

    .line 127
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "TianMa"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getPhoneNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 139
    const-string v2, ""

    .line 140
    .local v2, "strTelephoneNumber":Ljava/lang/String;
    const-string v1, ""

    .line 143
    .local v1, "operator":Ljava/lang/String;
    :try_start_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 144
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 145
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_0

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    move-object v4, v2

    .line 158
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v4

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "TianMa"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static isVirtualMachine(Landroid/content/Context;)Z
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 56
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 58
    .local v2, "fr":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 61
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v9, "/proc/cpuinfo"

    invoke-direct {v3, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v2    # "fr":Ljava/io/FileReader;
    .local v3, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    const/16 v9, 0x400

    invoke-direct {v6, v3, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "str2":Ljava/lang/String;
    :goto_0
    if-nez v8, :cond_3

    .line 72
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 80
    if-eqz v6, :cond_0

    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 81
    :cond_0
    :goto_1
    if-eqz v3, :cond_8

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .line 84
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v8    # "str2":Ljava/lang/String;
    .restart local v2    # "fr":Ljava/io/FileReader;
    :cond_1
    :goto_2
    invoke-static {p0}, Lcom/tianmashikong/tool/SignalLocationUtil;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "imsi":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "cpu":Ljava/lang/String;
    const-string v9, "arm"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v11, :cond_2

    const-string v9, "aarch"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ne v9, v11, :cond_2

    const-string v9, "atom"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_7

    :cond_2
    const-string v9, "310260"

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x0

    :goto_3
    return v9

    .line 67
    .end local v0    # "cpu":Ljava/lang/String;
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v4    # "imsi":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "str2":Ljava/lang/String;
    :cond_3
    :try_start_5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v9, "\r\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v8

    goto :goto_0

    .line 74
    .end local v3    # "fr":Ljava/io/FileReader;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "str2":Ljava/lang/String;
    .restart local v2    # "fr":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v9, "TianMa"

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 80
    if-eqz v5, :cond_4

    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 81
    :cond_4
    :goto_5
    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_2

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 80
    :goto_6
    if-eqz v5, :cond_5

    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 81
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 82
    :cond_6
    :goto_8
    throw v9

    .line 81
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "str2":Ljava/lang/String;
    :catch_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 86
    .end local v8    # "str2":Ljava/lang/String;
    .restart local v0    # "cpu":Ljava/lang/String;
    .restart local v4    # "imsi":Ljava/lang/String;
    :cond_7
    const/4 v9, 0x1

    goto :goto_3

    .line 80
    .end local v0    # "cpu":Ljava/lang/String;
    .end local v4    # "imsi":Ljava/lang/String;
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    goto :goto_5

    .end local v1    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v10

    goto :goto_7

    .line 81
    :catch_5
    move-exception v10

    goto :goto_8

    .line 80
    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "str2":Ljava/lang/String;
    :catch_6
    move-exception v9

    goto :goto_1

    .line 79
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "str2":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_6

    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v9

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_6

    .line 74
    .end local v2    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v2    # "fr":Ljava/io/FileReader;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "fr":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "str2":Ljava/lang/String;
    :cond_8
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "fr":Ljava/io/FileReader;
    .restart local v2    # "fr":Ljava/io/FileReader;
    goto :goto_2
.end method
