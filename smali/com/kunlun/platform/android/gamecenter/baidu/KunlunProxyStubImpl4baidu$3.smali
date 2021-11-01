.class final Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$3;
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

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$3;->eR:Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onResponse(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4baidu"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ChangeAccountListener onResponse:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":resultDesc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$3;->eR:Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->b(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$3;->eR:Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->b(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "\u5207\u6362\u8d26\u53f7"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu$3;->eR:Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;

    invoke-static {v0, p1}, Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;->a(Lcom/kunlun/platform/android/gamecenter/baidu/KunlunProxyStubImpl4baidu;I)V

    return-void
.end method
