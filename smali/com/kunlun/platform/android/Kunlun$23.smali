.class final Lcom/kunlun/platform/android/Kunlun$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$RequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->getServerList(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$GetServerListListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic T:Z

.field private final synthetic U:Lcom/kunlun/platform/android/Kunlun$GetServerListListener;


# direct methods
.method constructor <init>(ZLcom/kunlun/platform/android/Kunlun$GetServerListListener;)V
    .locals 0

    iput-boolean p1, p0, Lcom/kunlun/platform/android/Kunlun$23;->T:Z

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$23;->U:Lcom/kunlun/platform/android/Kunlun$GetServerListListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Ljava/lang/String;)V
    .locals 9

    const/4 v3, 0x0

    const-string v4, "success"

    const-string v1, ""

    new-instance v5, Lcom/kunlun/platform/android/KunlunServerListEntity;

    invoke-direct {v5}, Lcom/kunlun/platform/android/KunlunServerListEntity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v2, "retcode"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v2, "retmsg"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-nez v3, :cond_0

    :try_start_1
    const-string v4, "data"

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/kunlun/platform/android/KunlunUtil;->unZlib(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v4, p0, Lcom/kunlun/platform/android/Kunlun$23;->T:Z

    if-eqz v4, :cond_0

    invoke-virtual {v5, v1}, Lcom/kunlun/platform/android/KunlunServerListEntity;->parse(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/kunlun/platform/android/Kunlun$23;->U:Lcom/kunlun/platform/android/Kunlun$GetServerListListener;

    invoke-interface {v4, v3, v2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$GetServerListListener;->onComplete(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    move-object v8, v2

    move-object v2, v4

    move-object v4, v8

    :goto_1
    const-string v5, "Kunlun"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ":getServerList error:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public final onFileNotFoundException(Ljava/io/FileNotFoundException;)V
    .locals 5

    const-string v0, "Kunlun"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":getServerList:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$23;->U:Lcom/kunlun/platform/android/Kunlun$GetServerListListener;

    const/4 v1, -0x3

    const-string v2, "Connect network failure. Please try again."

    const/4 v3, 0x0

    const-string v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kunlun/platform/android/Kunlun$GetServerListListener;->onComplete(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public final onIOException(Ljava/io/IOException;)V
    .locals 5

    const-string v0, "Kunlun"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":getServerList:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$23;->U:Lcom/kunlun/platform/android/Kunlun$GetServerListListener;

    const/4 v1, -0x2

    const-string v2, "Connect network failure. Please try again."

    const/4 v3, 0x0

    const-string v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kunlun/platform/android/Kunlun$GetServerListListener;->onComplete(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method public final onMalformedURLException(Ljava/net/MalformedURLException;)V
    .locals 5

    const-string v0, "Kunlun"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ":getServerList:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$23;->U:Lcom/kunlun/platform/android/Kunlun$GetServerListListener;

    const/4 v1, -0x4

    const-string v2, "Connect network failure. Please try again."

    const/4 v3, 0x0

    const-string v4, ""

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/kunlun/platform/android/Kunlun$GetServerListListener;->onComplete(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
