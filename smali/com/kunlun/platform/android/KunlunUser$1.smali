.class final Lcom/kunlun/platform/android/KunlunUser$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunUser;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic cN:Lcom/kunlun/platform/android/KunlunUser;

.field private final synthetic cO:Landroid/content/SharedPreferences;

.field private final synthetic p:Landroid/content/Context;

.field private final synthetic y:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunUser;Ljava/lang/String;Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunUser$1;->y:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunUser$1;->p:Landroid/content/Context;

    iput-object p4, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    :try_start_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$1;->y:Ljava/lang/String;

    const-string v1, "GET"

    const/4 v2, 0x0

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lcom/kunlun/platform/android/KunlunUtil;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "retcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunUser$1;->p:Landroid/content/Context;

    if-eqz v2, :cond_5

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "push_on"

    const-string v3, "push_on"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "log_on"

    const-string v3, "log_on"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "push_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "push_url"

    const-string v3, "push_url"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    const-string v1, "log_url"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "log_url"

    const-string v3, "log_url"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    const-string v1, "interval_time"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "interval_time"

    const-string v3, "interval_time"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    const-string v1, "t"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "t"

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    const-string v4, "t"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/kunlun/platform/android/KunlunUser;->a(Lcom/kunlun/platform/android/KunlunUser;I)V

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "time_diff"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    invoke-static {v3}, Lcom/kunlun/platform/android/KunlunUser;->a(Lcom/kunlun/platform/android/KunlunUser;)I

    move-result v3

    int-to-long v6, v3

    sub-long/2addr v4, v6

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "start_url"

    const-string v3, "start_url"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "start_times"

    const-string v3, "start_times"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "exit_url"

    const-string v3, "exit_url"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    const-string v2, "start_url"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUser;->a(Lcom/kunlun/platform/android/KunlunUser;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    const-string v2, "start_times"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUser;->b(Lcom/kunlun/platform/android/KunlunUser;I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    const-string v2, "exit_url"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUser;->b(Lcom/kunlun/platform/android/KunlunUser;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    const-string v2, "log_on"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUser;->c(Lcom/kunlun/platform/android/KunlunUser;I)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    const-string v2, "log_url"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUser;->c(Lcom/kunlun/platform/android/KunlunUser;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunUser;->b(Lcom/kunlun/platform/android/KunlunUser;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    invoke-static {v3}, Lcom/kunlun/platform/android/KunlunUser;->c(Lcom/kunlun/platform/android/KunlunUser;)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kunlun/platform/android/KunlunUser;->a(Lcom/kunlun/platform/android/KunlunUser;Landroid/content/Context;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$1;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUser;->b(Lcom/kunlun/platform/android/KunlunUser;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start"

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunUser;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$1;->p:Landroid/content/Context;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUser;->d(Lcom/kunlun/platform/android/KunlunUser;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exit"

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunUser;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_5
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$1;->p:Landroid/content/Context;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cO:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->p:Landroid/content/Context;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$1;->cN:Lcom/kunlun/platform/android/KunlunUser;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunUser$1;->p:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/kunlun/platform/android/KunlunUser;->n(Landroid/content/Context;)V

    :cond_6
    const-string v1, "KunlunUser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init error:"

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
