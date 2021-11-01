.class final Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fivegwan/multisdk/api/ResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;->reLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic gs:Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;Lcom/kunlun/platform/android/Kunlun$LoginListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$4;->gs:Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$4;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailture(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$4;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x64

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]\u767b\u9646\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onSuccess(Landroid/os/Bundle;)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$4;->gs:Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;->d(Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.fgwan.appid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "userid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "token"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fgwan"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$4;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$4;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$4$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$4;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v4, v5}, Lcom/kunlun/platform/android/gamecenter/fgwan/KunlunProxyStubImpl4fgwan$4$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method
