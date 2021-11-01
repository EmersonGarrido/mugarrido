.class final Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$1;
.super Lcom/dh/loginsdk/listener/LoginListening;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fJ:Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$1;->fJ:Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Lcom/dh/loginsdk/listener/LoginListening;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnFailure(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final OnSuccess(Lcom/dh/loginsdk/entities/LoginReturn;)V
    .locals 6

    invoke-virtual {p1}, Lcom/dh/loginsdk/entities/LoginReturn;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->q(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/dh/loginsdk/entities/LoginReturn;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "userid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->bO()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$1;->fJ:Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;->a(Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dianhun2"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$1;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$1;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$1$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v4, v5}, Lcom/kunlun/platform/android/gamecenter/dianhun2/KunlunProxyStubImpl4dianhun2$1$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method
