.class final Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/pay/callback/PPLoginCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;->iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;)Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;->iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;

    return-object v0
.end method


# virtual methods
.method public final onLoginFinish(Lcom/papa91/pay/pa/business/LoginResult;)V
    .locals 5

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/papa91/pay/pa/business/LoginResult;->getCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;->iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;

    iget-object v0, v0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const-string v1, "login error"

    invoke-interface {v0, v2, v1, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "app_key\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;->iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->a(Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "PA_APP_KEY"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/papa91/pay/pa/business/LoginResult;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;->iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;

    invoke-virtual {p1}, Lcom/papa91/pay/pa/business/LoginResult;->getOpenUid()I

    move-result v2

    iput v2, v1, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->iO:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "uid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;->iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;

    iget v2, v2, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->iO:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "papa"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;->iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->b(Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;)Landroid/content/Context;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\u52a0\u8f7d\u4e2d\u2026\u2026"

    invoke-static {v2, v3, v4}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;->iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->b(Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;->iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;

    iget-object v0, v0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const-string v1, "login error"

    invoke-interface {v0, v2, v1, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;->iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;

    iget-object v0, v0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v1, -0x2

    const-string v2, "login cancel"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa$1;->iQ:Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;

    iget-object v0, v0, Lcom/kunlun/platform/android/gamecenter/papa/KunlunProxyStubImpl4papa;->fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const-string v1, "login error"

    invoke-interface {v0, v2, v1, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x22b8 -> :sswitch_4
    .end sparse-switch
.end method
