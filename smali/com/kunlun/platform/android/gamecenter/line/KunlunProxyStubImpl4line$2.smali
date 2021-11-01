.class final Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/linecorp/lgcorelite/listener/LGCoreLiteSocialGraphListener;


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

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$2;->hU:Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGetMyFriendsAsyncComplete(ILjava/lang/String;Ljp/line/android/sdk/model/Users;)V
    .locals 0

    return-void
.end method

.method public final onGetMyGameFriendsAsyncComplete(ILjava/lang/String;Ljp/line/android/sdk/model/Users;)V
    .locals 0

    return-void
.end method

.method public final onGetMyProfileAsyncComplete(ILjava/lang/String;Ljp/line/android/sdk/model/Profile;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4line"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "status:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", statusMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$2;->hU:Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->d(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line$2;->hU:Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;->d(Lcom/kunlun/platform/android/gamecenter/line/KunlunProxyStubImpl4line;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "Unbind the application"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public final onSendMessageAsyncComplete(ILjava/lang/String;)V
    .locals 0

    return-void
.end method
