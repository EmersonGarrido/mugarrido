.class final Lcom/kunlun/platform/android/control/UploadImgControl$1$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/control/UploadImgControl$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic dM:Ljava/lang/String;

.field private synthetic dN:Lcom/kunlun/platform/android/control/UploadImgControl$1;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/control/UploadImgControl$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1$1;->dN:Lcom/kunlun/platform/android/control/UploadImgControl$1;

    iput-object p2, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1$1;->dM:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/control/UploadImgControl$1$1;)Lcom/kunlun/platform/android/control/UploadImgControl$1;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1$1;->dN:Lcom/kunlun/platform/android/control/UploadImgControl$1;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1$1;->dN:Lcom/kunlun/platform/android/control/UploadImgControl$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/control/UploadImgControl$1;->a(Lcom/kunlun/platform/android/control/UploadImgControl$1;)Lcom/kunlun/platform/android/control/UploadImgControl;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1$1;->dM:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/control/UploadImgControl;->access$1(Lcom/kunlun/platform/android/control/UploadImgControl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1$1;->dN:Lcom/kunlun/platform/android/control/UploadImgControl$1;

    invoke-static {v1}, Lcom/kunlun/platform/android/control/UploadImgControl$1;->a(Lcom/kunlun/platform/android/control/UploadImgControl$1;)Lcom/kunlun/platform/android/control/UploadImgControl;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/control/UploadImgControl;->access$2(Lcom/kunlun/platform/android/control/UploadImgControl;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/kunlun/platform/android/control/UploadImgControl$1$1$1;

    invoke-direct {v2, p0, v0}, Lcom/kunlun/platform/android/control/UploadImgControl$1$1$1;-><init>(Lcom/kunlun/platform/android/control/UploadImgControl$1$1;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1$1;->dN:Lcom/kunlun/platform/android/control/UploadImgControl$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/control/UploadImgControl$1;->a(Lcom/kunlun/platform/android/control/UploadImgControl$1;)Lcom/kunlun/platform/android/control/UploadImgControl;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/control/UploadImgControl;->access$0(Lcom/kunlun/platform/android/control/UploadImgControl;Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1$1;->dN:Lcom/kunlun/platform/android/control/UploadImgControl$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/control/UploadImgControl$1;->a(Lcom/kunlun/platform/android/control/UploadImgControl$1;)Lcom/kunlun/platform/android/control/UploadImgControl;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/control/UploadImgControl;->access$2(Lcom/kunlun/platform/android/control/UploadImgControl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1$1;->dN:Lcom/kunlun/platform/android/control/UploadImgControl$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/control/UploadImgControl$1;->a(Lcom/kunlun/platform/android/control/UploadImgControl$1;)Lcom/kunlun/platform/android/control/UploadImgControl;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/control/UploadImgControl;->access$2(Lcom/kunlun/platform/android/control/UploadImgControl;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1$1;->dN:Lcom/kunlun/platform/android/control/UploadImgControl$1;

    invoke-static {v1}, Lcom/kunlun/platform/android/control/UploadImgControl$1;->a(Lcom/kunlun/platform/android/control/UploadImgControl$1;)Lcom/kunlun/platform/android/control/UploadImgControl;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/control/UploadImgControl;->access$3(Lcom/kunlun/platform/android/control/UploadImgControl;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
