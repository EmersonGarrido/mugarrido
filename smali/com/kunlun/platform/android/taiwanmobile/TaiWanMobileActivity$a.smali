.class final Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twm/android/ssoutil/TWMAuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$a;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/twm/android/ssoutil/LoginData;)V
    .locals 2

    invoke-static {p1}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->a(Lcom/twm/android/ssoutil/LoginData;)V

    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->cc()V

    invoke-virtual {p1}, Lcom/twm/android/ssoutil/LoginData;->getRetCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$a;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->a(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$a;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->a(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;Z)V

    goto :goto_0
.end method

.method public final onError(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->cc()V

    return-void
.end method

.method public final onLogout(I)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$a;->mI:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->a(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;Z)V

    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->cc()V

    return-void
.end method
