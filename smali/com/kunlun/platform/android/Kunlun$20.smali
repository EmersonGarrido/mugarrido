.class final Lcom/kunlun/platform/android/Kunlun$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->getInheritPwd(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$RequestDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic Q:Lcom/kunlun/platform/android/Kunlun$RequestDataListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$RequestDataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$20;->Q:Lcom/kunlun/platform/android/Kunlun$RequestDataListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/String;)V
    .locals 7

    const/4 v1, -0x1

    new-instance v3, Lcom/kunlun/platform/android/KunlunDataEntity;

    invoke-direct {v3}, Lcom/kunlun/platform/android/KunlunDataEntity;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v0, "retcode"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "retmsg"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1}, Lcom/kunlun/platform/android/KunlunDataEntity;->setRetCode(I)V

    invoke-virtual {v3, v0}, Lcom/kunlun/platform/android/KunlunDataEntity;->setRetMsg(Ljava/lang/String;)V

    if-nez v1, :cond_0

    const-string v4, "data"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "randpwd"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/kunlun/platform/android/KunlunUtil;->cX:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/kunlun/platform/android/KunlunUtil;->decryptByPublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/kunlun/platform/android/KunlunDataEntity;->setData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/kunlun/platform/android/Kunlun$20;->Q:Lcom/kunlun/platform/android/Kunlun$RequestDataListener;

    invoke-interface {v2, v1, v0, v3}, Lcom/kunlun/platform/android/Kunlun$RequestDataListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    const-string v0, "Error data"

    const-string v4, "Kunlun"

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

    goto :goto_0
.end method

.method public final onFileNotFoundException(Ljava/io/FileNotFoundException;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$20;->Q:Lcom/kunlun/platform/android/Kunlun$RequestDataListener;

    const/4 v1, -0x3

    const-string v2, "Connect network failure. Please try again."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$RequestDataListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V

    return-void
.end method

.method public final onIOException(Ljava/io/IOException;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$20;->Q:Lcom/kunlun/platform/android/Kunlun$RequestDataListener;

    const/4 v1, -0x2

    const-string v2, "Connect network failure. Please try again."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$RequestDataListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V

    return-void
.end method

.method public final onMalformedURLException(Ljava/net/MalformedURLException;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$20;->Q:Lcom/kunlun/platform/android/Kunlun$RequestDataListener;

    const/4 v1, -0x4

    const-string v2, "Connect network failure. Please try again."

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$RequestDataListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V

    return-void
.end method
