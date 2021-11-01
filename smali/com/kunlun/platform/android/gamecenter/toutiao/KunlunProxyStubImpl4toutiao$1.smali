.class final Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ss/android/login/sdk/StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jL:Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao$1;->jL:Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/Exception;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao$1;->jL:Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao;->a(Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x68

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u767b\u5f55\u9519\u8bef\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;J)V
    .locals 6

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao$1;->jL:Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao;->a(Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "access_token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "client_key\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao$1;->jL:Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao;->b(Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "toutiao"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao$1;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao$1;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao$1$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v4, v5}, Lcom/kunlun/platform/android/gamecenter/toutiao/KunlunProxyStubImpl4toutiao$1$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    return-void
.end method
