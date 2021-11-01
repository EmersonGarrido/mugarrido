.class final Lcom/appsflyer/AppsFlyerLib$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/AppsFlyerLib;->registerOnGCM(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/appsflyer/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsflyer/AppsFlyerLib;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$gcmProjectNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appsflyer/AppsFlyerLib;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLib$1;->this$0:Lcom/appsflyer/AppsFlyerLib;

    iput-object p2, p0, Lcom/appsflyer/AppsFlyerLib$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/appsflyer/AppsFlyerLib$1;->val$gcmProjectNumber:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Lcom/appsflyer/e;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 327
    :try_start_0
    const-string v0, "com.google.android.gms.iid.InstanceID"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 328
    const-string v0, "com.google.android.gms.gcm.GcmReceiver"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 329
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/iid/InstanceID;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/iid/InstanceID;

    move-result-object v0

    .line 330
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$1;->val$gcmProjectNumber:Ljava/lang/String;

    const-string v3, "GCM"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/iid/InstanceID;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {v0}, Lcom/google/android/gms/iid/InstanceID;->getId()Ljava/lang/String;

    move-result-object v3

    .line 332
    new-instance v0, Lcom/appsflyer/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/appsflyer/e;-><init>(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 341
    :goto_0
    return-object v0

    .line 334
    :catch_0
    move-exception v0

    .line 335
    const-string v2, "Please integrate Google Play Services in order to support uninstall feature"

    invoke-static {v2, v0}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move-object v0, v1

    .line 341
    goto :goto_0

    .line 336
    :catch_1
    move-exception v0

    .line 337
    const-string v2, "Could not load registration ID"

    invoke-static {v2, v0}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 338
    :catch_2
    move-exception v0

    .line 339
    const-string v2, "Error registering for uninstall feature"

    invoke-static {v2, v0}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 323
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib$1;->doInBackground([Ljava/lang/Void;)Lcom/appsflyer/e;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Lcom/appsflyer/e;)V
    .locals 4
    .param p1, "newGcmToken"    # Lcom/appsflyer/e;

    .prologue
    .line 346
    if-eqz p1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$1;->this$0:Lcom/appsflyer/AppsFlyerLib;

    const-string v1, "gcmToken"

    invoke-static {v0, v1}, Lcom/appsflyer/AppsFlyerLib;->access$300(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$1;->this$0:Lcom/appsflyer/AppsFlyerLib;

    const-string v2, "gcmInstanceId"

    invoke-static {v1, v2}, Lcom/appsflyer/AppsFlyerLib;->access$300(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    iget-object v2, p0, Lcom/appsflyer/AppsFlyerLib$1;->this$0:Lcom/appsflyer/AppsFlyerLib;

    const-string v3, "gcmTokenTimestamp"

    invoke-static {v2, v3}, Lcom/appsflyer/AppsFlyerLib;->access$300(Lcom/appsflyer/AppsFlyerLib;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    new-instance v3, Lcom/appsflyer/e;

    invoke-direct {v3, v2, v0, v1}, Lcom/appsflyer/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    invoke-virtual {v3, p1}, Lcom/appsflyer/e;->update(Lcom/appsflyer/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/appsflyer/e;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/a;->afLog(Ljava/lang/String;)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "instance id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/appsflyer/e;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appsflyer/a;->afLog(Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLib$1;->this$0:Lcom/appsflyer/AppsFlyerLib;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLib$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v3, v1}, Lcom/appsflyer/AppsFlyerLib;->updateServerGcmToken(Lcom/appsflyer/e;Landroid/content/Context;)V

    .line 358
    :cond_0
    return-void
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 323
    check-cast p1, Lcom/appsflyer/e;

    invoke-virtual {p0, p1}, Lcom/appsflyer/AppsFlyerLib$1;->onPostExecute(Lcom/appsflyer/e;)V

    return-void
.end method
