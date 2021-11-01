.class final Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/youku/gamesdk/act/YKCallBackWithContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$1;->kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callback(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Lcom/youku/gamesdk/act/YKPlatform;->logout(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/youku/gamesdk/act/YKPlatform;->closeYKFloat(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$1;->kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->a(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku$1;->kO:Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;->a(Lcom/kunlun/platform/android/gamecenter/youku/KunlunProxyStubImpl4youku;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    const-string v1, "logout onSuccess"

    invoke-interface {v0, v1}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
