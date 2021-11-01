.class final Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->goBack()V
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

    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface$1;->this$1:Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface$1;->this$1:Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;->access$0(Lcom/kunlun/platform/android/KunLunLoginDialog$LoginJavaScriptInterface;)Lcom/kunlun/platform/android/KunLunLoginDialog;

    move-result-object v0

    invoke-static {v0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->b(Lcom/kunlun/platform/android/KunLunLoginDialog;)V

    return-void
.end method
