.class final Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/xxwan/sdkall/frame/listener/OnXXwanAPiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;->onSuccess(Ljava/lang/Object;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kG:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1$1;->kG:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFial(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;I)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1$1;->kG:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;

    iget-object v0, v0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;->kF:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->a(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1$1;->kG:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;

    iget-object v0, v0, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan$1;->kF:Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;->a(Lcom/kunlun/platform/android/gamecenter/xxwan/KunlunProxyStubImpl4xxwan;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "logout"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
