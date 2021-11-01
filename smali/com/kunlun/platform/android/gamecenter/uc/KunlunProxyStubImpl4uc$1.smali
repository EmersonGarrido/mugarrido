.class final Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/uc/gamesdk/UCCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/uc/gamesdk/UCCallbackListener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic jP:Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$1;->jP:Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic callback(ILjava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/lang/String;

    invoke-static {}, Lcn/uc/gamesdk/UCGameSDK;->defaultSDK()Lcn/uc/gamesdk/UCGameSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcn/uc/gamesdk/UCGameSDK;->destoryFloatButton(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$1;->jP:Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;->a(Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc$1;->jP:Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;

    invoke-static {v0}, Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;->a(Lcom/kunlun/platform/android/gamecenter/uc/KunlunProxyStubImpl4uc;)Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    iget-object v0, v0, Lcom/kunlun/platform/android/KunlunProxy;->logoutListener:Lcom/kunlun/platform/android/Kunlun$LogoutListener;

    invoke-interface {v0, p2}, Lcom/kunlun/platform/android/Kunlun$LogoutListener;->onLogout(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
