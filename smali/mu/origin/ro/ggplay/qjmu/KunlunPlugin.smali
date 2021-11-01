.class public Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"


# static fields
.field static ERRo:Ljava/lang/String;

.field static itemName:Ljava/lang/String;

.field private static loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private static serverId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-string v0, "GAT"

    sput-object v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->ERRo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GooglePay(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "args"    # Ljava/lang/String;

    .prologue
    .line 285
    new-instance v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;

    invoke-direct {v0, p0, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$6;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 362
    return-void
.end method

.method public static HideFaceBook()V
    .locals 3

    .prologue
    .line 658
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideRequestBean;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideRequestBean;-><init>()V

    .line 659
    .local v0, "requestBean":Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/hide/FacebookCenterHideRequestBean;
    sget-object v1, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    new-instance v2, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$15;

    invoke-direct {v2}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$15;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/kunlun/sns/core/KunlunSNS;->requestCommand(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;

    .line 670
    return-void
.end method

.method public static Init(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 57
    new-instance v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1;

    invoke-direct {v0, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public static KunlunPay(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 9
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 205
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    new-instance v1, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$4;

    invoke-direct {v1, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunlunProxy;->setPurchaseSuccessListener(Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    .line 255
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 256
    .local v8, "jsStr":Lorg/json/JSONObject;
    const-string v0, "goodId"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "goodId":Ljava/lang/String;
    const-string v0, "GAT"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v0, "GAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ExchangeRate"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v0, "GAT"

    const-string v1, "orderId"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    const/4 v3, 0x0

    const-string v1, "ExchangeRate"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v1, "orderId"

    .line 264
    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$5;

    invoke-direct {v6}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$5;-><init>()V

    move-object v1, p0

    .line 263
    invoke-virtual/range {v0 .. v6}, Lcom/kunlun/platform/android/KunlunProxy;->purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v2    # "goodId":Ljava/lang/String;
    .end local v8    # "jsStr":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v7

    .line 278
    .local v7, "e":Lorg/json/JSONException;
    invoke-virtual {v7}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static Login(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 108
    new-instance v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;

    invoke-direct {v0, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public static ReLogin(Landroid/app/Activity;)V
    .locals 2
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 179
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    sget-object v1, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-virtual {v0, p0, v1}, Lcom/kunlun/platform/android/KunlunProxy;->reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    .line 180
    return-void
.end method

.method static synthetic access$002(Lcom/kunlun/platform/android/Kunlun$LoginListener;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 0
    .param p0, "x0"    # Lcom/kunlun/platform/android/Kunlun$LoginListener;

    .prologue
    .line 47
    sput-object p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object p0
.end method

.method public static incrementAchievements(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "index"    # I
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 478
    new-instance v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$9;

    invoke-direct {v0, p0, p2, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$9;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 508
    return-void
.end method

.method public static quit(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 366
    new-instance v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;

    invoke-direct {v0, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 407
    return-void
.end method

.method public static setKunlunServerId(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v0, "GAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ID1 ==  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$3;

    invoke-direct {v0, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public static setRoleInfo(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 6
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 592
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 594
    .local v1, "js":Lorg/json/JSONObject;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 596
    .local v2, "roleInfos":Ljava/util/Map;, "Ljava/util/Map<Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;Ljava/lang/String;>;"
    sget-object v4, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_ID:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    const-string v5, "roleId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    sget-object v4, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_LEVEL:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    const-string v5, "lv"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    sget-object v4, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_NAME:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    const-string v5, "roleName"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    sget-object v4, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_POWER:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    const-string v5, "rolePower"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    sget-object v4, Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;->ROLE_VIP_LEVEL:Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;

    const-string v5, "vip"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRequestBean;

    invoke-direct {v3, v2}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRequestBean;-><init>(Ljava/util/Map;)V

    .line 603
    .local v3, "updateRoleInfoRequestBean":Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRequestBean;
    sget-object v4, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    new-instance v5, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$13;

    invoke-direct {v5, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$13;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v3, v5}, Lcom/kunlun/sns/core/KunlunSNS;->requestCommand(Ljava/lang/Object;Lcom/kunlun/sns/net_engine/my_network_engine/IRespondBeanAsyncResponseListener;)Lcom/kunlun/sns/net_engine/my_network_engine/INetRequestHandle;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .end local v1    # "js":Lorg/json/JSONObject;
    .end local v2    # "roleInfos":Ljava/util/Map;, "Ljava/util/Map<Lcom/kunlun/sns/core/channel/KunlunSNSRoleInfoEnum;Ljava/lang/String;>;"
    .end local v3    # "updateRoleInfoRequestBean":Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/updateRoleInfo/FacebookCenterUpdateRoleInfoRequestBean;
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static showAchievements(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 515
    new-instance v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$10;

    invoke-direct {v0, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$10;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 526
    return-void
.end method

.method public static showFaceBook(Landroid/app/Activity;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;

    .prologue
    .line 628
    new-instance v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14;

    invoke-direct {v0, p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$14;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 651
    return-void
.end method

.method public static showLeaderboards(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 574
    new-instance v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$12;

    invoke-direct {v0, p0, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$12;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 584
    return-void
.end method

.method public static submitRoleInfo(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 413
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 415
    .local v2, "js":Lorg/json/JSONObject;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 416
    .local v1, "gameRoleInfo":Landroid/os/Bundle;
    const-string v3, "roleId"

    const-string v4, "roleId"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v3, "roleName"

    const-string v4, "roleName"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v3, "roleLevel"

    const-string v4, "lv"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v3, "rolePower"

    const-string v4, "rolePower"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v3, "vipLevel"

    const-string v4, "vip"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v3

    invoke-virtual {v3, p0, v1}, Lcom/kunlun/platform/android/KunlunProxy;->submitRoleInfo(Landroid/app/Activity;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .end local v1    # "gameRoleInfo":Landroid/os/Bundle;
    .end local v2    # "js":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 424
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static submitScore(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 536
    new-instance v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$11;

    invoke-direct {v0, p0, p1, p2}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$11;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 567
    return-void
.end method

.method public static unlockAchievements(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 439
    new-instance v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8;

    invoke-direct {v0, p0, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$8;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 468
    return-void
.end method
