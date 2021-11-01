.class final Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/letv/letvsdk/LetvSDK$LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;->hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;)Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;->hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;

    return-object v0
.end method


# virtual methods
.method public final onLoginQuit()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;->hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->e(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x65

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onLoginResult(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;->hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;

    const-string v2, "letv_uid"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->a(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;->hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;

    const-string v2, "access_token"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->b(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;->hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->a(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;->hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->b(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;->hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->c(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "letv"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;->hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->d(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;->hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->d(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv$1;->hH:Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;->e(Lcom/kunlun/platform/android/gamecenter/letv/KunlunProxyStubImpl4letv;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x64

    const-string v2, "\u767b\u5f55\u9519\u8bef"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method
