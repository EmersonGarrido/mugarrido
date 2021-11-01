.class final Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yyh/sdk/LoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$3;->eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoginCancel()V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$3;->eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;

    invoke-static {}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->bK()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x66

    const-string v2, "\u767b\u5f55\u53d6\u6d88"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onLoginError(Landroid/app/Activity;Lcom/appchina/model/ErrorMsg;)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$3;->eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;

    invoke-static {}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->bK()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x65

    const-string v2, "\u767b\u5f55\u9519\u8bef"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onLoginSuccess(Landroid/app/Activity;Lcom/appchina/usersdk/Account;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$3;->eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->c(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;)Lcom/yyh/sdk/CPInfo;

    move-result-object v2

    iget v2, v2, Lcom/yyh/sdk/CPInfo;->loginId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcom/appchina/usersdk/Account;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/appchina/usersdk/Account;->ticket:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "userName\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p2, Lcom/appchina/usersdk/Account;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "v\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$3;->eM:Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;->d(Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "KunlunProxyStubImpl4appchina"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "userName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p2, Lcom/appchina/usersdk/Account;->userName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nuserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/appchina/usersdk/Account;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "appchina"

    const-string v2, ""

    const-string v3, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {p1, v2, v3}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v2

    new-instance v3, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$3$1;

    iget-object v4, p0, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$3;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v3, v4}, Lcom/kunlun/platform/android/gamecenter/appchina/KunlunProxyStubImpl4appchina$3$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {p1, v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/yyh/sdk/YYHSDKAPI;->showToolbar(Z)V

    return-void
.end method
