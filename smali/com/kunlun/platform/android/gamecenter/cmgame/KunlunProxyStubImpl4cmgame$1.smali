.class final Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/cmgame/billing/api/GameInterface$ILoginCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;->init(Landroid/app/Activity;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic fr:Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;

.field private final synthetic val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;Lcom/kunlun/platform/android/Kunlun$initCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$1;->fr:Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;

    iput-object p2, p0, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "KunlunProxyStubImpl4cmgame"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ILoginCallback:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":obj:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$1;->fr:Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;

    invoke-static {v0, p2}, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;->a(Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const/4 v1, 0x0

    const-string v2, "finish"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/gamecenter/cmgame/KunlunProxyStubImpl4cmgame$1;->val$initCallback:Lcom/kunlun/platform/android/Kunlun$initCallback;

    const-string v1, "Login faild"

    invoke-interface {v0, p1, v1}, Lcom/kunlun/platform/android/Kunlun$initCallback;->onComplete(ILjava/lang/Object;)V

    goto :goto_0
.end method
