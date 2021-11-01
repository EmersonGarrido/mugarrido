.class final Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sogou/gamecenter/sdk/listener/LoginCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$3;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final loginFail(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x65

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final loginSuccess(ILcom/sogou/gamecenter/sdk/bean/UserInfo;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$3;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v1}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->i(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$3;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->a(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;Lcom/sogou/gamecenter/sdk/bean/UserInfo;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou$3;->jF:Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;->g(Lcom/kunlun/platform/android/gamecenter/sogou/KunlunProxyStubImpl4sogou;)V

    return-void
.end method
