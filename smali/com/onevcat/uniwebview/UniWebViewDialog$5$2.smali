.class Lcom/onevcat/uniwebview/UniWebViewDialog$5$2;
.super Ljava/lang/Object;
.source "UniWebViewDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onevcat/uniwebview/UniWebViewDialog$5;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/onevcat/uniwebview/UniWebViewDialog$5;

.field final synthetic val$result:Landroid/webkit/JsResult;


# direct methods
.method constructor <init>(Lcom/onevcat/uniwebview/UniWebViewDialog$5;Landroid/webkit/JsResult;)V
    .locals 0
    .param p1, "this$1"    # Lcom/onevcat/uniwebview/UniWebViewDialog$5;

    .prologue
    .line 629
    iput-object p1, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$2;->this$1:Lcom/onevcat/uniwebview/UniWebViewDialog$5;

    iput-object p2, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$2;->val$result:Landroid/webkit/JsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 631
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 632
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$2;->val$result:Landroid/webkit/JsResult;

    invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V

    .line 633
    iget-object v0, p0, Lcom/onevcat/uniwebview/UniWebViewDialog$5$2;->this$1:Lcom/onevcat/uniwebview/UniWebViewDialog$5;

    iget-object v0, v0, Lcom/onevcat/uniwebview/UniWebViewDialog$5;->this$0:Lcom/onevcat/uniwebview/UniWebViewDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->access$1502(Lcom/onevcat/uniwebview/UniWebViewDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 634
    return-void
.end method
