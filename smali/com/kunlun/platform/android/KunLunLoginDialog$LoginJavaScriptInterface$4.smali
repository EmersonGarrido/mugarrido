.class final Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$LoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->googlePlusLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface$4;->this$1:Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V
    .locals 2

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface$4;->this$1:Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->access$0(Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;)Lcom/kunlun/platform/android/KunLunLoginDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->a(Lcom/kunlun/platform/android/KunLunLoginDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    invoke-virtual {p3}, Lcom/kunlun/platform/android/KunlunEntity;->getKLSSO()Ljava/lang/String;

    move-result-object p2

    :cond_0
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface$4;->this$1:Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->access$0(Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;)Lcom/kunlun/platform/android/KunLunLoginDialog;

    move-result-object v1

    invoke-static {v1}, Lcom/kunlun/platform/android/KunLunLoginDialog;->a(Lcom/kunlun/platform/android/KunLunLoginDialog;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
