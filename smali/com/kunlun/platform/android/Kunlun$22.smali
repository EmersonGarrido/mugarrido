.class final Lcom/kunlun/platform/android/Kunlun$22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->getUserCode(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$GetUserCodeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic R:Ljava/lang/String;

.field private final synthetic S:Lcom/kunlun/platform/android/Kunlun$GetUserCodeListener;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetUserCodeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$22;->R:Ljava/lang/String;

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$22;->S:Lcom/kunlun/platform/android/Kunlun$GetUserCodeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$22;->R:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const v1, 0x1d4c0

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const v1, 0x2bf20

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const-string v1, "User-Agent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v3

    const-string v4, "http.agent"

    invoke-virtual {v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " Kunlun Android SDK Version:5.3.34"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->readStream(Ljava/io/InputStream;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/Kunlun;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "retcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "retmsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/kunlun/platform/android/Kunlun$22;->S:Lcom/kunlun/platform/android/Kunlun$GetUserCodeListener;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3}, Lcom/kunlun/platform/android/Kunlun$GetUserCodeListener;->onComplete(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$22;->S:Lcom/kunlun/platform/android/Kunlun$GetUserCodeListener;

    const/4 v1, 0x0

    const-string v2, "Success"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->e()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$GetUserCodeListener;->onComplete(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Kunlun"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getUserCode IOException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$22;->S:Lcom/kunlun/platform/android/Kunlun$GetUserCodeListener;

    const/4 v1, -0x1

    const-string v2, "Connect network failure. Please try again."

    invoke-interface {v0, v1, v2, v5}, Lcom/kunlun/platform/android/Kunlun$GetUserCodeListener;->onComplete(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
