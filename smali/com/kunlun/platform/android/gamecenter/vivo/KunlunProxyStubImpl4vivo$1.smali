.class final Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/vivo/account/base/accounts/OnVivoAccountChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ki:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;->ki:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;)Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;->ki:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;

    return-object v0
.end method


# virtual methods
.method public final onAccountLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;->ki:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/vivo/account/base/accounts/VivoAccountManager;->vivoAccountStartAssistView(Landroid/content/Context;)V

    const-string v1, "vivo"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;->ki:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;->ki:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->a(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method

.method public final onAccountLoginCancled()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;->ki:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->c(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo$1;->ki:Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;->c(Lcom/kunlun/platform/android/gamecenter/vivo/KunlunProxyStubImpl4vivo;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :cond_0
    return-void
.end method

.method public final onAccountRemove(Z)V
    .locals 0

    return-void
.end method
