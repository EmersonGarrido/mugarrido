.class final Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/changba/callback/UserInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;->onComplete(Lcom/changba/aidl/AccessToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fk:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;

.field private final synthetic fl:Lcom/changba/aidl/AccessToken;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;Lcom/changba/aidl/AccessToken;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;->fk:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;->fl:Lcom/changba/aidl/AccessToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;)Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;->fk:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;

    return-object v0
.end method


# virtual methods
.method public final onComplete(Lcom/changba/entity/UserInfo;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;->fk:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;->a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;)Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    move-result-object v1

    invoke-virtual {p1}, Lcom/changba/entity/UserInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "userid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;->fk:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;->a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;)Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    move-result-object v2

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->c(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "accessToken\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;->fl:Lcom/changba/aidl/AccessToken;

    invoke-virtual {v2}, Lcom/changba/aidl/AccessToken;->getAccess_token()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ver\":\"1.0"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "id\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;->fk:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;->a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;)Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    move-result-object v2

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->d(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "changba"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;->fk:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;->a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;)Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    move-result-object v2

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->e(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;->fk:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;->a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;)Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    move-result-object v2

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->e(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method

.method public final onError(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;->fk:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;->a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;)Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1$1;->fk:Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;->a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba$1;)Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;->a(Lcom/kunlun/platform/android/gamecenter/changba/KunlunProxyStubImpl4changba;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/4 v1, -0x2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u767b\u5f55\u5931\u8d25"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    return-void
.end method
