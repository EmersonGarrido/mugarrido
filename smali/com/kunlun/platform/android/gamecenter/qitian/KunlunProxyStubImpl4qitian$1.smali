.class final Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ledi/util/CallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jl:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->jl:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;)Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->jl:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

    return-object v0
.end method


# virtual methods
.method public final init(Z)Z
    .locals 3

    const-string v0, "KunlunProxyStubImpl4qitian"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, 0x0

    const-string v2, "finish"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    :goto_0
    return p1

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, -0x1

    const-string v2, "qitian init error"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final loginBackKey(Z)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->jl:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;->b(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->jl:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;->b(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x64

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    return-void
.end method

.method public final loginReback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "KunlunProxyStubImpl4qitian"

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x1

    new-instance v2, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1$1;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1$1;-><init>(Landroid/app/Activity;)V

    invoke-static {v0, v4, v4, v1, v2}, Lcom/ledi/util/Operate;->showFloatView(Landroid/app/Activity;IIZLcom/ledi/floatwindow/util/FloatView$KeyBackListener;)V

    :cond_0
    const-string v0, "KunlunProxyStubImpl4qitian"

    const-string v1, "loginReback"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->jl:Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;->a(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.qitian.gameId"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qitian"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1$2;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1$2;-><init>(Lcom/kunlun/platform/android/gamecenter/qitian/KunlunProxyStubImpl4qitian$1;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method
