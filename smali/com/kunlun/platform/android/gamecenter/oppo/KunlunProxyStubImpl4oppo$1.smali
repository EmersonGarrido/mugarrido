.class final Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nearme/game/sdk/callback/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;->doLogin(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic iL:Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;Lcom/kunlun/platform/android/Kunlun$LoginListener;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;->iL:Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iput-object p3, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/16 v1, -0x65

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    return-void
.end method

.method public final onSuccess(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/nearme/game/sdk/GameCenterSDK;->getInstance()Lcom/nearme/game/sdk/GameCenterSDK;

    move-result-object v0

    new-instance v1, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1$1;

    iget-object v2, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1$1;-><init>(Lcom/kunlun/platform/android/gamecenter/oppo/KunlunProxyStubImpl4oppo$1;Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-virtual {v0, v1}, Lcom/nearme/game/sdk/GameCenterSDK;->doGetTokenAndSsoid(Lcom/nearme/game/sdk/callback/ApiCallback;)V

    return-void
.end method
