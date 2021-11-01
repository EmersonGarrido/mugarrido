.class final Lcom/kunlun/platform/android/common/JavaScriptInterface$1;
.super Lcom/kunlun/platform/android/control/UploadImgControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/common/JavaScriptInterface;->uploadImg(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$0:Lcom/kunlun/platform/android/common/JavaScriptInterface;

.field private final synthetic val$callback:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/common/JavaScriptInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/common/JavaScriptInterface$1;->this$0:Lcom/kunlun/platform/android/common/JavaScriptInterface;

    iput-object p3, p0, Lcom/kunlun/platform/android/common/JavaScriptInterface$1;->val$callback:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/kunlun/platform/android/control/UploadImgControl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onSucess(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/common/JavaScriptInterface$1;->this$0:Lcom/kunlun/platform/android/common/JavaScriptInterface;

    invoke-static {v0}, Lcom/kunlun/platform/android/common/JavaScriptInterface;->access$0(Lcom/kunlun/platform/android/common/JavaScriptInterface;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:window."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/common/JavaScriptInterface$1;->val$callback:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
