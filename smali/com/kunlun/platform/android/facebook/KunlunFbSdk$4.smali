.class final Lcom/kunlun/platform/android/facebook/KunlunFbSdk$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/facebook/KunlunFbSdk;->a(Landroid/os/Bundle;Lcom/kunlun/platform/android/Kunlun$RequestListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic H:Lcom/kunlun/platform/android/Kunlun$RequestListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$RequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$4;->H:Lcom/kunlun/platform/android/Kunlun$RequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted(Lcom/facebook/GraphResponse;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$4;->H:Lcom/kunlun/platform/android/Kunlun$RequestListener;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$4;->H:Lcom/kunlun/platform/android/Kunlun$RequestListener;

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Request error,response is null"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$RequestListener;->onIOException(Ljava/io/IOException;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$4;->H:Lcom/kunlun/platform/android/Kunlun$RequestListener;

    new-instance v1, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$RequestListener;->onMalformedURLException(Ljava/net/MalformedURLException;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$4;->H:Lcom/kunlun/platform/android/Kunlun$RequestListener;

    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "response data is null"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$RequestListener;->onFileNotFoundException(Ljava/io/FileNotFoundException;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/kunlun/platform/android/facebook/KunlunFbSdk$4;->H:Lcom/kunlun/platform/android/Kunlun$RequestListener;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$RequestListener;->onComplete(Ljava/lang/String;)V

    goto :goto_0
.end method
