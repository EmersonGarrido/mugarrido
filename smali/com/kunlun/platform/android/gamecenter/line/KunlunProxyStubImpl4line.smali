.class public Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;
.super Lcom/kunlun/platform/android/KunlunProxyStubImpl;
.source "SourceFile"


# instance fields
.field private accessToken:Ljava/lang/String;

.field private fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

.field private hP:Lcom/linecorp/lgcorelite/LGCoreLiteAPI;

.field private hQ:Ljava/lang/String;

.field private hR:Lcom/linecorp/lgcorelite/listener/LGCoreLiteListener;

.field private hS:Lcom/linecorp/lgcorelite/state/LGInitState;

.field private hT:Lcom/linecorp/lgcorelite/listener/LGCoreLiteSocialGraphListener;

.field private kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunProxyStubImpl;-><init>()V

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->hP:Lcom/linecorp/lgcorelite/LGCoreLiteAPI;

    const-string v0, "HIGH"

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->hQ:Ljava/lang/String;

    iput-object v1, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->accessToken:Ljava/lang/String;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$1;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$1;-><init>(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->hR:Lcom/linecorp/lgcorelite/listener/LGCoreLiteListener;

    sget-object v0, Lcom/linecorp/lgcorelite/state/LGInitState;->UNKNOWN:Lcom/linecorp/lgcorelite/state/LGInitState;

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->hS:Lcom/linecorp/lgcorelite/state/LGInitState;

    new-instance v0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$2;

    invoke-direct {v0, p0}, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$2;-><init>(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;)V

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->hT:Lcom/linecorp/lgcorelite/listener/LGCoreLiteSocialGraphListener;

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->accessToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;)Lcom/kunlun/platform/android/Kunlun$LoginListener;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    return-object v0
.end method

.method static synthetic d(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;)Lcom/kunlun/platform/android/KunlunProxy;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    return-object v0
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4line"

    const-string v1, "login"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->fx:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, "Please wait\u2026\u2026"

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunToastUtil;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->hP:Lcom/linecorp/lgcorelite/LGCoreLiteAPI;

    invoke-interface {v0, p1}, Lcom/linecorp/lgcorelite/LGCoreLiteAPI;->login(Landroid/app/Activity;)V

    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->mActivity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->kunlunProxy:Lcom/kunlun/platform/android/KunlunProxy;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunProxy;->getMetaData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Kunlun.LGcore.appid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->hQ:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->hR:Lcom/linecorp/lgcorelite/listener/LGCoreLiteListener;

    invoke-static {p1, v0, v1, v2}, Lcom/linecorp/lgcorelite/LGCoreLiteAPIFactory;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/linecorp/lgcorelite/listener/LGCoreLiteListener;)Lcom/linecorp/lgcorelite/LGCoreLiteAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->hP:Lcom/linecorp/lgcorelite/LGCoreLiteAPI;

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->hP:Lcom/linecorp/lgcorelite/LGCoreLiteAPI;

    invoke-interface {v0}, Lcom/linecorp/lgcorelite/LGCoreLiteAPI;->init()Lcom/linecorp/lgcorelite/state/LGInitState;

    move-result-object v0

    iput-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->hS:Lcom/linecorp/lgcorelite/state/LGInitState;

    const-string v0, "KunlunProxyStubImpl4line"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate is ended. lgInitState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->hS:Lcom/linecorp/lgcorelite/state/LGInitState;

    invoke-virtual {v2}, Lcom/linecorp/lgcorelite/state/LGInitState;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->hS:Lcom/linecorp/lgcorelite/state/LGInitState;

    sget-object v1, Lcom/linecorp/lgcorelite/state/LGInitState;->SUCCESS:Lcom/linecorp/lgcorelite/state/LGInitState;

    invoke-virtual {v0, v1}, Lcom/linecorp/lgcorelite/state/LGInitState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/kunlun/platform/android/KunlunProxyStubImpl;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/kunlun/platform/android/KunlunProxyStubImpl;->onResume(Landroid/app/Activity;)V

    invoke-static {p1}, Lcom/kunlun/platform/android/KunlunUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->hP:Lcom/linecorp/lgcorelite/LGCoreLiteAPI;

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->hT:Lcom/linecorp/lgcorelite/listener/LGCoreLiteSocialGraphListener;

    invoke-interface {v0, v1}, Lcom/linecorp/lgcorelite/LGCoreLiteAPI;->getMyProfile(Lcom/linecorp/lgcorelite/listener/LGCoreLiteSocialGraphListener;)V

    :cond_0
    return-void
.end method
