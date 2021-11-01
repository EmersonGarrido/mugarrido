.class final Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/muzhiwan/sdk/core/callback/MzwLoignCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic iJ:Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2;->iJ:Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2;->iJ:Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;->a(Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "MZWAPPKEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mzw"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2;->val$activity:Landroid/app/Activity;

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2;->val$activity:Landroid/app/Activity;

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2$1;

    iget-object v5, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v4, v5}, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2$1;-><init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v1, -0x2

    const-string v2, "\u767b\u9646\u5931\u8d25"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v1, -0x1

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2;->iJ:Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;->a(Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2;->iJ:Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;->a(Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "reLogin"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2;->iJ:Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw$2;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/gamecenter/mzw/KunlunProxyStubImpl4mzw;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
