.class final Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/gamesdk/IResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/baidu/gamesdk/IResponse",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic eR:Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$4;->eR:Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResponse(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$4;->eR:Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->b(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$4;->eR:Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->b(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "\u4f1a\u8bdd\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
