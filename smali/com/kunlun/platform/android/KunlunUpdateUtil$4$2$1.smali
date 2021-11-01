.class final Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cC:Ljava/lang/String;

.field private final synthetic cz:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2$1;->cC:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2$1;->cz:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChangeStat(ILjava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bz()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "downloadApk onChangeStat:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x65

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2$1;->cC:Ljava/lang/String;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->m(Ljava/lang/String;)V

    :cond_0
    if-gez p1, :cond_1

    iget-boolean v0, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2$1;->cz:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bB()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, -0x4

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bC()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->U()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->a(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bC()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->U()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
