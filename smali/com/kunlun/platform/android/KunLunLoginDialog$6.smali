.class final Lcom/kunlun/platform/android/KunLunLoginDialog$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunLunLoginDialog;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic e:I

.field private synthetic this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunLunLoginDialog;I)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$6;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iput p2, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$6;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$6;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/KunLunLoginDialog;->dismiss()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$6;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mDialogListener:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$6;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mDialogListener:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    iget v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$6;->e:I

    const-string v2, "Back Pressed"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$6;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$6;->this$0:Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v0, v0, Lcom/kunlun/platform/android/KunLunLoginDialog;->mLoginListener:Lcom/kunlun/platform/android/Kunlun$LoginListener;

    iget v1, p0, Lcom/kunlun/platform/android/KunLunLoginDialog$6;->e:I

    const-string v2, "Login Cancel"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/kunlun/platform/android/Kunlun$LoginListener;->onComplete(ILjava/lang/String;Lcom/kunlun/platform/android/KunlunEntity;)V

    goto :goto_0
.end method
