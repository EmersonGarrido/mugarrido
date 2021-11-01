.class public Lcom/kunlun/platform/android/KunlunSmsProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/KunlunProxyStub;


# static fields
.field private static cf:Ljava/lang/String;

.field private static cg:I

.field private static ch:Ljava/lang/String;

.field private static channel:Ljava/lang/String;

.field private static ci:Z

.field private static cj:Lcom/kunlun/platform/android/KunlunSmsProxy;

.field private static msg:Ljava/lang/String;

.field private static province:Ljava/lang/String;


# instance fields
.field protected hasInit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->channel:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->cf:Ljava/lang/String;

    sput v1, Lcom/kunlun/platform/android/KunlunSmsProxy;->cg:I

    const-string v0, ""

    sput-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->province:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->ch:Ljava/lang/String;

    sput-boolean v1, Lcom/kunlun/platform/android/KunlunSmsProxy;->ci:Z

    const-string v0, ""

    sput-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->msg:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->cj:Lcom/kunlun/platform/android/KunlunSmsProxy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kunlun/platform/android/KunlunSmsProxy;->hasInit:Z

    return-void
.end method

.method static a(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, ""

    const-string v2, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v2, "Kunlun.mergeSmsSdk"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunSmsProxy;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->cf:Ljava/lang/String;

    sput-object v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->channel:Ljava/lang/String;

    new-instance v2, Lcom/kunlun/platform/android/KunlunSmsProxy$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, v1, p0, p1}, Lcom/kunlun/platform/android/KunlunSmsProxy$1;-><init>(Landroid/os/Looper;ZLandroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    sget-object v3, Lcom/kunlun/platform/android/KunlunSmsProxy;->channel:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void

    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    const-string v1, "no channel"

    invoke-interface {p1, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method static a(Landroid/app/Application;)V
    .locals 5

    const/4 v0, 0x1

    sget-object v1, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v2, "Kunlun.mergeSmsSdk"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sget-object v1, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v3, "Kunlun.smsChannel"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kunlun/platform/android/KunlunSmsProxy;->channel:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v1, "cmgame"

    sget-object v3, Lcom/kunlun/platform/android/KunlunSmsProxy;->channel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unicom"

    sget-object v3, Lcom/kunlun/platform/android/KunlunSmsProxy;->channel:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunUtil;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "megjb"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    sget-object v1, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v3, "wostore_billing_otherpay"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunUtil;->getSimType(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "unicom"

    sget-object v1, Lcom/kunlun/platform/android/KunlunSmsProxy;->channel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :try_start_0
    const-string v0, "com.kunlun.platform.android.carrier.KunlunSmsProxy4unicom"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "initSDK"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Application;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    sget v1, Lcom/kunlun/platform/android/KunlunSmsProxy;->cg:I

    if-lez v1, :cond_0

    const-string v1, "00"

    sget-object v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->province:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://api.mobilearea.kunlun.com/?m="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GET"

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/kunlun/platform/android/KunlunUtil;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    const-string v1, "retcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/common/ImsiUtil;->isStringEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->province:Ljava/lang/String;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "area_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->province:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static bl()Lcom/kunlun/platform/android/KunlunSmsProxy;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->cj:Lcom/kunlun/platform/android/KunlunSmsProxy;

    return-object v0
.end method

.method static synthetic bm()Z
    .locals 1

    sget-boolean v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->ci:Z

    return v0
.end method

.method static synthetic bn()V
    .locals 5

    sget-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->channel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v1, Lcom/kunlun/platform/android/KunlunSmsProxy;->channel:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "com.kunlun.platform.android.carrier.KunlunSmsProxy4"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->channel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->cj:Lcom/kunlun/platform/android/KunlunSmsProxy;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->cj:Lcom/kunlun/platform/android/KunlunSmsProxy;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kunlun/platform/android/KunlunSmsProxy;

    sput-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->cj:Lcom/kunlun/platform/android/KunlunSmsProxy;

    const-string v0, "KunlunSmsProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load channel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/kunlun/platform/android/KunlunSmsProxy;->channel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1

    :cond_2
    return-void

    :catch_0
    move-exception v0

    const-string v2, "KunlunSmsProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load class error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic bo()Lcom/kunlun/platform/android/KunlunSmsProxy;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->cj:Lcom/kunlun/platform/android/KunlunSmsProxy;

    return-object v0
.end method

.method static synthetic bp()I
    .locals 1

    sget v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->cg:I

    return v0
.end method

.method static synthetic bq()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->province:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic br()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->channel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bs()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->ci:Z

    return-void
.end method

.method public static getChannel()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->channel:Ljava/lang/String;

    return-object v0
.end method

.method private static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->msg:Ljava/lang/String;

    sget v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->cg:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->cf:Ljava/lang/String;

    :goto_0
    sget-object v2, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v3, "wostore_billing_otherpay"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sget v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->cg:I

    if-nez v2, :cond_0

    if-nez v4, :cond_0

    sget-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->cf:Ljava/lang/String;

    :cond_0
    sget-object v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->ch:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    sget v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->cg:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const-string v0, "telecom"

    goto :goto_0

    :cond_3
    const-string v0, "unicom"

    goto :goto_0

    :cond_4
    :try_start_0
    const-string v2, ""

    sget-object v3, Lcom/kunlun/platform/android/KunlunSmsProxy;->ch:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v3, v1

    :goto_2
    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunUtil;->getApplicationVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_a

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_14

    if-eqz v3, :cond_5

    const-string v2, "default"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v1, "default"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    :cond_5
    :goto_4
    if-eqz v1, :cond_1

    const-string v2, "mobile"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cmgame"

    const-string v5, ""

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "telecom"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "unicom"

    const-string v7, ""

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mobile"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    sget-object v7, Lcom/kunlun/platform/android/KunlunSmsProxy;->province:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "all"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_6
    sget-object v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->province:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunSmsProxy;->j(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_7
    const-string v0, "unicom"

    :cond_8
    :goto_5
    sget v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->cg:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const-string v2, "unicom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v4, :cond_1

    const-string v2, "msg"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/kunlun/platform/android/KunlunSmsProxy;->msg:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "\u652f\u4ed8\u7cfb\u7edf\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u6216\u9009\u62e9\u5176\u5b83\u6863\u4f4d"

    sput-object v1, Lcom/kunlun/platform/android/KunlunSmsProxy;->msg:Ljava/lang/String;

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto/16 :goto_1

    :cond_9
    sget-object v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->ch:Ljava/lang/String;

    invoke-static {v2}, Lcom/kunlun/platform/android/KunlunUtil;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_2

    :cond_a
    move-object v2, v1

    goto/16 :goto_3

    :cond_b
    const-string v0, "cmgame"

    goto :goto_5

    :cond_c
    const-string v7, "cmgame"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    sget-object v7, Lcom/kunlun/platform/android/KunlunSmsProxy;->province:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "all"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_d
    sget-object v3, Lcom/kunlun/platform/android/KunlunSmsProxy;->province:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "all"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunSmsProxy;->k(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_e
    const-string v0, "unicom"

    goto :goto_5

    :cond_f
    const-string v0, "mobile"

    goto :goto_5

    :cond_10
    const-string v2, "telecom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    sget-object v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->province:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "all"

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    const-string v0, "unicom"

    goto/16 :goto_5

    :cond_12
    const-string v2, "unicom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->province:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "all"

    invoke-virtual {v6, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_13
    const-string v2, "msg"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->msg:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "\u652f\u4ed8\u7cfb\u7edf\u5f02\u5e38\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u6216\u9009\u62e9\u5176\u5b83\u6863\u4f4d"

    sput-object v2, Lcom/kunlun/platform/android/KunlunSmsProxy;->msg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :cond_14
    move-object v1, v2

    goto/16 :goto_4
.end method

.method static synthetic h(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/kunlun/platform/android/KunlunSmsProxy;->channel:Ljava/lang/String;

    return-void
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/kunlun/platform/android/Kunlun;->metaData:Landroid/os/Bundle;

    const-string v1, "Kunlun.smsChannel"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "kl_mobile"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "mobile"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic i(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/kunlun/platform/android/KunlunSmsProxy;->ch:Ljava/lang/String;

    return-void
.end method

.method static synthetic j(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/kunlun/platform/android/KunlunSmsProxy;->province:Ljava/lang/String;

    return-void
.end method

.method private static j(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    const-string v3, "mm.purchasesdk.Purchase"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "mmiap.xml"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->ready()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_1

    move v3, v2

    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    const-string v0, "kunlun_mm_appid"

    invoke-static {p0, v0}, Lcom/kunlun/platform/android/KunlunUtil;->getResourcesString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_3
    return v0

    :cond_1
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ProgramId"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_3

    :catch_0
    move-exception v3

    move v3, v2

    goto :goto_2

    :catch_1
    move-exception v4

    goto :goto_2

    :catch_2
    move-exception v3

    goto :goto_0

    :cond_3
    move v3, v2

    goto :goto_2
.end method

.method private static k(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "iridver.dat"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic l(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunSmsProxy;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static m()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->msg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->ci:Z

    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunUtil;->getImsi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUtil;->getSimTypeByImsi(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->cg:I

    if-lez v0, :cond_0

    invoke-static {p0}, Lcom/kunlun/platform/android/KunlunUtil;->getSimProvince(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    sput-object v0, Lcom/kunlun/platform/android/KunlunSmsProxy;->province:Ljava/lang/String;

    new-instance v0, Lcom/kunlun/platform/android/KunlunSmsProxy$2;

    invoke-direct {v0, p0, v1}, Lcom/kunlun/platform/android/KunlunSmsProxy$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunSmsProxy$2;->start()V

    return-void

    :cond_0
    const-string v0, "00"

    goto :goto_0
.end method


# virtual methods
.method protected danjiPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    return-void
.end method

.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/kunlun/platform/android/Kunlun;->appLogin(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method

.method public exit(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$ExitCallback;)V
    .locals 2

    const-string v0, "KunlunSmsProxy"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/kunlun/platform/android/Kunlun$ExitCallback;->onNodialog()V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 2

    const-string v0, "KunlunSmsProxy"

    const-string v1, "init"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kunlun/platform/android/KunlunSmsProxy;->hasInit:Z

    const/4 v0, 0x0

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    return-void
.end method

.method protected netPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 0

    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "KunlunSmsProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onActivityResult:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/app/Application;)V
    .locals 2

    const-string v0, "KunlunSmsProxy"

    const-string v1, "ApplicationOnCreate"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunSmsProxy"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunSmsProxy"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRestart(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunSmsProxy"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunSmsProxy"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "KunlunSmsProxy"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public purchase(Landroid/app/Activity;Ljava/lang/String;IILjava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V
    .locals 3

    const-string v0, "KunlunSmsProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "activity:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "purchase:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p5, p6}, Lcom/kunlun/platform/android/Kunlun;->prepareSingleChannelPurchase(Landroid/content/Context;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$PurchaseDialogListener;)V

    invoke-static {p1, p2, p3}, Lcom/kunlun/platform/android/Kunlun;->appPay(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 2

    invoke-static {p1}, Lcom/kunlun/platform/android/Kunlun;->logout(Landroid/content/Context;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "success"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1, p2}, Lcom/kunlun/platform/android/Kunlun;->appLogin(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    return-void
.end method

.method public smsPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V
    .locals 13

    const-string v1, "KunlunSmsProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smsPay:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":itemCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":price:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v2, "\u8bf7\u7a0d\u540e\u2026\u2026"

    invoke-static {p1, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/kunlun/platform/android/KunlunSmsProxy;->hasInit:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/kunlun/platform/android/KunlunSmsProxy$3;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/kunlun/platform/android/KunlunSmsProxy$3;-><init>(Lcom/kunlun/platform/android/KunlunSmsProxy;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    invoke-virtual {p0, p1, v1}, Lcom/kunlun/platform/android/KunlunSmsProxy;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunSmsProxy;->getChannel()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {p3 .. p3}, Lcom/kunlun/platform/android/Kunlun;->setPartenersOrderId(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "kunlun_paycode_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/kunlun/platform/android/KunlunUtil;->getResourcesString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    move-object/from16 v4, p3

    :cond_1
    invoke-static {p1}, Lcom/kunlun/platform/android/Kunlun;->getOpenUDID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Kunlun.isNetGame"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/kunlun/platform/android/KunlunSmsProxy;->netPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    :goto_1
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "itemName\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "itemCode\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "price\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "channel\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "udid\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/kunlun/platform/android/Kunlun;->setPayOrderExt(Ljava/util/List;)V

    const-string v1, "sms"

    new-instance v2, Lcom/kunlun/platform/android/KunlunSmsProxy$4;

    invoke-direct {v2}, Lcom/kunlun/platform/android/KunlunSmsProxy$4;-><init>()V

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/Kunlun;->getOrder(Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$GetOrderListener;)V

    new-instance v5, Lcom/kunlun/platform/android/KunlunSmsProxy$5;

    move/from16 v7, p4

    move-object v8, p2

    move-object/from16 v9, p3

    move-object v11, p1

    move-object/from16 v12, p5

    invoke-direct/range {v5 .. v12}, Lcom/kunlun/platform/android/KunlunSmsProxy$5;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, v4

    move/from16 v10, p4

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/kunlun/platform/android/KunlunSmsProxy;->danjiPay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ILcom/kunlun/platform/android/Kunlun$PurchaseListener;)V

    goto/16 :goto_1
.end method
