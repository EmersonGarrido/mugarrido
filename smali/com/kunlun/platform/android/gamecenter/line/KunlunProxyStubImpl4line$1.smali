.class final Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linecorp/lgcorelite/listener/LGCoreLiteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hU:Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$1;->hU:Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$1;)Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$1;->hU:Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;

    return-object v0
.end method


# virtual methods
.method public final onLitmusState(Lcom/linecorp/lgcorelite/state/LGLitmusState;)V
    .locals 0

    return-void
.end method

.method public final onLoginResult(Lcom/linecorp/lgcorelite/state/LGLoginState;Lcom/linecorp/lgcorelite/model/LGLoginData;Lcom/linecorp/lgcorelite/model/LGErrorResponse;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/linecorp/lgcorelite/state/LGLoginState;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p2}, Lcom/linecorp/lgcorelite/model/LGLoginData;->mid()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$1;->hU:Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;

    invoke-virtual {p2}, Lcom/linecorp/lgcorelite/model/LGLoginData;->accessToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->a(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "appid\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$1;->hU:Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;

    invoke-static {v3}, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->a(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "jp.line.sdk.ChannelId"

    invoke-static {v3, v4}, Lcom/kunlun/platform/android/KunlunUtil;->getMetadata(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uid\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "token\":\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$1;->hU:Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->b(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunUtil;->listToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "line"

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$1;->hU:Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;

    invoke-static {v2}, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->a(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->isDebug()Z

    move-result v3

    new-instance v4, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$1$1;

    invoke-direct {v4, p0}, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$1;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/kunlun/platform/android/Kunlun;->thirdPartyLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$RegistListener;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$1;->hU:Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->c(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x64

    const-string v2, "\u767b\u9646\u5931\u8d25"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-static {}, Lcom/kunlun/platform/android/KunlunToastUtil;->hideProgressDialog()V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$1;->hU:Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->c(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;)Lcom/kunlun/platform/android/Kunlun$LoginListener;

    move-result-object v0

    const/16 v1, -0x66

    const-string v2, "\u53d6\u6d88\u767b\u5f55"

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onNoticeResult(Lcom/linecorp/lgcorelite/state/LGLanState;Lorg/json/JSONObject;Lcom/linecorp/lgcorelite/model/LGErrorResponse;)V
    .locals 0

    return-void
.end method

.method public final onRetryLogin()V
    .locals 0

    return-void
.end method
