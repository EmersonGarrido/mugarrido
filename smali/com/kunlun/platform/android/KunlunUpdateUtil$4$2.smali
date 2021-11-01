.class final Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunUpdateUtil$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cA:I

.field private final synthetic cB:Ljava/lang/String;

.field private final synthetic cC:Ljava/lang/String;

.field private final synthetic cz:Z


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput p1, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2;->cA:I

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2;->cB:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2;->cC:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2;->cz:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    const/4 v6, 0x0

    iget v0, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2;->cA:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bB()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2;->cB:Ljava/lang/String;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2;->cC:Ljava/lang/String;

    new-instance v3, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2$1;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2;->cC:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2;->cz:Z

    invoke-direct {v3, v4, v5}, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2$1;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0, v1, v2, v6, v3}, Lcom/kunlun/platform/android/Kunlun;->downloadApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$DownloadListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2;->cC:Ljava/lang/String;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->m(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/kunlun/platform/android/KunlunUpdateUtil$4$2;->cz:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bB()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    const-string v0, ""

    invoke-static {v6, v0}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->a(ILjava/lang/String;)V

    goto :goto_0
.end method
