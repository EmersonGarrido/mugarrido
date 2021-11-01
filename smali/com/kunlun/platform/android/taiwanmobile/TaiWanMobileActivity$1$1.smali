.class final Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunDataEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic mJ:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1$1;->mJ:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    new-instance v0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;

    iget-object v1, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1$1;->mJ:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;

    invoke-static {v1}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;->a(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;)Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;-><init>(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;)V

    invoke-static {v0}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->a(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;)V

    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->ci()Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1$1;->mJ:Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;

    invoke-static {v1}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;->a(Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$1;)Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;

    move-result-object v1

    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->cj()Lcom/twm/android/ssoutil/LoginData;

    move-result-object v2

    invoke-static {}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity;->cg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/kunlun/platform/android/taiwanmobile/TaiWanMobileActivity$inAPP;->getIAPInfo(Landroid/content/Context;Lcom/twm/android/ssoutil/LoginData;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
