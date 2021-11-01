.class public Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter;
.super Lcom/kunlun/platform/android/KunlunProxyStubImpl;
.source "KunlunProxyStubImpl4facebookCenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/kunlun/platform/android/KunlunProxyStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "loginListener"    # Lcom/kunlun/platform/android/Kunlun$LoginListener;

    .prologue
    .line 24
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$2;-><init>(Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-super {p0, p1, v0}, Lcom/kunlun/platform/android/KunlunProxyStubImpl;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    .line 44
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "initCallback"    # Lcom/kunlun/platform/android/Kunlun$initCallback;

    .prologue
    .line 14
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$1;

    invoke-direct {v0, p0, p2}, Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter$1;-><init>(Lcom/kunlun/sns/channel/facebookCenter/KunlunProxyStubImpl4facebookCenter;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    invoke-super {p0, p1, v0}, Lcom/kunlun/platform/android/KunlunProxyStubImpl;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V

    .line 20
    return-void
.end method

.method public setKunlunServerId(Ljava/lang/String;)V
    .locals 1
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/kunlun/sns/core/KunlunSNS;->getInstance:Lcom/kunlun/sns/core/KunlunSNS;

    invoke-virtual {v0}, Lcom/kunlun/sns/core/KunlunSNS;->getSdkParams()Lcom/kunlun/sns/core/channel/SdkParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/kunlun/sns/core/channel/SdkParams;->setServerID(Ljava/lang/String;)V

    .line 48
    return-void
.end method
