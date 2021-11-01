.class Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2$2;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;


# direct methods
.method constructor <init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;)V
    .locals 0
    .param p1, "this$0"    # Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;

    .prologue
    .line 125
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2$2;->this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 6
    .param p1, "retCode"    # I
    .param p2, "retMsg"    # Ljava/lang/String;
    .param p3, "kunlunEntity"    # Lcom/kunlun/platform/android/KunlunEntity;

    .prologue
    .line 129
    const-string v3, "GAT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    if-nez p1, :cond_0

    .line 132
    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunEntity;->getKLSSO()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "klsso":Ljava/lang/String;
    const-string v3, "GAT"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 143
    .local v1, "js":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "sid"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    const-string v3, "denglu"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    sget-object v3, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->_BackUnityObject:Ljava/lang/String;

    sget-object v4, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->_unityLoginFunc:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v1    # "js":Lorg/json/JSONObject;
    .end local v2    # "klsso":Ljava/lang/String;
    :goto_1
    return-void

    .line 145
    .restart local v1    # "js":Lorg/json/JSONObject;
    .restart local v2    # "klsso":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "js":Lorg/json/JSONObject;
    .end local v2    # "klsso":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2$2;->this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;

    iget-object v3, v3, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;->val$act:Landroid/app/Activity;

    invoke-static {v3, p2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method
