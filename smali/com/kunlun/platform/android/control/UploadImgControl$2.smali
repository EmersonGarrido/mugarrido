.class final Lcom/kunlun/platform/android/control/UploadImgControl$2;
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


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/control/UploadImgControl;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/control/UploadImgControl$2;->dL:Lcom/kunlun/platform/android/control/UploadImgControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl$2;->dL:Lcom/kunlun/platform/android/control/UploadImgControl;

    invoke-static {v0}, Lcom/kunlun/platform/android/control/UploadImgControl;->access$2(Lcom/kunlun/platform/android/control/UploadImgControl;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
