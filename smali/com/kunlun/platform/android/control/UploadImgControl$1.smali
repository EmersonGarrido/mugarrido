.class final Lcom/kunlun/platform/android/control/UploadImgControl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/control/UploadImgControl;->dialog(Landroid/widget/ImageView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic dL:Lcom/kunlun/platform/android/control/UploadImgControl;

.field private final synthetic dM:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/control/UploadImgControl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1;->dL:Lcom/kunlun/platform/android/control/UploadImgControl;

    iput-object p2, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1;->dM:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/control/UploadImgControl$1;)Lcom/kunlun/platform/android/control/UploadImgControl;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1;->dL:Lcom/kunlun/platform/android/control/UploadImgControl;

    return-object v0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1;->dL:Lcom/kunlun/platform/android/control/UploadImgControl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/control/UploadImgControl;->access$0(Lcom/kunlun/platform/android/control/UploadImgControl;Z)V

    new-instance v0, Lcom/kunlun/platform/android/control/UploadImgControl$1$1;

    iget-object v1, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1;->dM:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/kunlun/platform/android/control/UploadImgControl$1$1;-><init>(Lcom/kunlun/platform/android/control/UploadImgControl$1;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/android/control/UploadImgControl$1$1;->start()V

    return-void
.end method
