.class final Lcom/kunlun/platform/android/Kunlun$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->facebookAppLogin(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic p:Landroid/content/Context;

.field private final synthetic val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$LoginListener;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$15;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$15;->p:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$15;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunConf;->getConf()Lcom/kunlun/platform/android/KunlunConf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunlunConf;->x()Lcom/kunlun/platform/android/KunlunConf$T;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "location,lang,pid"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunlunConf$T;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "pid"

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getProductId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "fb_app_id"

    const-string v3, "fbappid"

    invoke-static {v3}, Lcom/kunlun/platform/android/KunlunConf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "access_token"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "POST"

    new-instance v3, Lcom/kunlun/platform/android/Kunlun$15$1;

    iget-object v4, p0, Lcom/kunlun/platform/android/Kunlun$15;->p:Landroid/content/Context;

    iget-object v5, p0, Lcom/kunlun/platform/android/Kunlun$15;->val$loginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    invoke-direct {v3, p2, v4, v5}, Lcom/kunlun/platform/android/Kunlun$15$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$LoginListener;)V

    invoke-static {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun;->asyncRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/kunlun/platform/android/Kunlun$RequestListener;)V

    goto :goto_0
.end method
