.class final Lcom/kunlun/platform/android/KunlunSdkTracker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunSdkTracker;->a(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bR:I

.field private final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunSdkTracker$1;->p:Landroid/content/Context;

    iput p2, p0, Lcom/kunlun/platform/android/KunlunSdkTracker$1;->bR:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunSdkTracker$1;->p:Landroid/content/Context;

    const-string v3, "KunlunSdkTracker"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "tracker_uuid"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunSdkTracker$1;->p:Landroid/content/Context;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunSdkTracker;->h(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "first_start"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "times"

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/kunlun/platform/android/KunlunSdkTracker$1;->bR:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunConf;->getConf()Lcom/kunlun/platform/android/KunlunConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunConf;->C()Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "start.php"

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/kunlun/platform/android/KunlunConf$T;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "GET"

    const-string v3, ""

    invoke-static {v0, v2, v1, v3}, Lcom/kunlun/platform/android/KunlunUtil;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "retcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "retcode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunSdkTracker$1;->p:Landroid/content/Context;

    const-string v2, "KunlunSdkTracker"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "tracker_uuid"

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunSdkTracker$1;->p:Landroid/content/Context;

    invoke-static {v3}, Lcom/kunlun/platform/android/Kunlun;->getOpenUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget v1, p0, Lcom/kunlun/platform/android/KunlunSdkTracker$1;->bR:I

    if-ge v1, v5, :cond_2

    if-eqz v0, :cond_1

    const-string v1, "retcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "retcode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunSdkTracker$1;->p:Landroid/content/Context;

    iget v1, p0, Lcom/kunlun/platform/android/KunlunSdkTracker$1;->bR:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunSdkTracker;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget v1, p0, Lcom/kunlun/platform/android/KunlunSdkTracker$1;->bR:I

    if-ge v1, v5, :cond_4

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunSdkTracker$1;->p:Landroid/content/Context;

    iget v2, p0, Lcom/kunlun/platform/android/KunlunSdkTracker$1;->bR:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunSdkTracker;->a(Landroid/content/Context;I)V

    :cond_4
    const-string v1, "KunlunSdkTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":kunlunStartTracker:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
