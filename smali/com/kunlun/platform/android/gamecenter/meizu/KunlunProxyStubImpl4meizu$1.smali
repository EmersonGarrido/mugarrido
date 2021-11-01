.class final Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/gamecenter/sdk/MzLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ii:Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1;->ii:Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoginResult(ILcom/meizu/gamecenter/sdk/MzAccountInfo;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    const/16 v3, -0x64

    const-string v0, "KunlunProxyStubImpl4meizu"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u767b\u5f55 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u767b\u5f55\u5931\u8d25 : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1, v4}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :goto_0
    return-void

    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "app_id\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1;->ii:Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->a(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "Kunlun.meizu.appid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1;->ii:Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;

    invoke-virtual {p2}, Lcom/meizu/gamecenter/sdk/MzAccountInfo;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->a(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1;->ii:Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;->b(Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "session_id\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/meizu/gamecenter/sdk/MzAccountInfo;->getSession()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "meizu"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v4, v5}, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/meizu/KunlunProxyStubImpl4meizu$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const-string v1, "\u53d6\u6d88\u767b\u5f55"

    invoke-interface {v0, v3, v1, v4}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
