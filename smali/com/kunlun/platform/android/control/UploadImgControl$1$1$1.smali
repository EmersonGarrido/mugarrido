.class final Lcom/kunlun/platform/android/control/UploadImgControl$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/control/UploadImgControl$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic dO:Lcom/kunlun/platform/android/control/UploadImgControl$1$1;

.field private final synthetic dP:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/control/UploadImgControl$1$1;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1$1$1;->dO:Lcom/kunlun/platform/android/control/UploadImgControl$1$1;

    iput-object p2, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1$1$1;->dP:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1$1$1;->dO:Lcom/kunlun/platform/android/control/UploadImgControl$1$1;

    invoke-static {v0}, Lcom/kunlun/platform/android/control/UploadImgControl$1$1;->a(Lcom/kunlun/platform/android/control/UploadImgControl$1$1;)Lcom/kunlun/platform/android/control/UploadImgControl$1;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/control/UploadImgControl$1;->a(Lcom/kunlun/platform/android/control/UploadImgControl$1;)Lcom/kunlun/platform/android/control/UploadImgControl;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/control/UploadImgControl$1$1$1;->dP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/control/UploadImgControl;->onSucess(Ljava/lang/String;)V

    return-void
.end method
