.class final Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cm:Ljava/lang/String;

.field private synthetic ji:Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;

.field private final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$1;->ji:Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$1;->p:Landroid/content/Context;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$1;->cm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$1;->p:Landroid/content/Context;

    const-string v2, "KunlunProxyStubImpl4qihoodanji"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$1;->ji:Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;

    const-string v3, "chinamobile_config"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;->a(Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$1;->ji:Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;->a(Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;)I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "00"

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$1;->ji:Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;

    invoke-static {v3}, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;->b(Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$1;->cm:Ljava/lang/String;

    invoke-static {v0}, Lcom/kunlun/platform/android/common/ImsiUtil;->getLineNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$1;->ji:Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "area_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "00"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;->b(Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/qihoodanji.html?t="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://f-cn-1.kunlun.com/pt/v6/sdkapi/sms/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://static.kunlun.com/sdkapi/sms/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, ""

    :try_start_0
    const-string v5, "GET"

    const/4 v6, 0x0

    const-string v7, ""

    invoke-static {v3, v5, v6, v7}, Lcom/kunlun/platform/android/KunlunUtil;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    :try_start_1
    const-string v3, "GET"

    const/4 v5, 0x0

    const-string v6, ""

    invoke-static {v4, v3, v5, v6}, Lcom/kunlun/platform/android/KunlunUtil;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :cond_2
    :goto_1
    const-string v3, "{"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "}"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$1;->ji:Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;

    invoke-static {v3, v1}, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;->a(Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;Ljava/lang/String;)V

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "chinamobile_config"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v3, "\"00\""

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji$1;->ji:Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;

    invoke-static {v1, v2, v0}, Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;->a(Lcom/kunlun/platform/android/gamecenter/qihoodanji/KunlunProxyStubImpl4qihoodanji;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :cond_4
    return-void

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_0
.end method
