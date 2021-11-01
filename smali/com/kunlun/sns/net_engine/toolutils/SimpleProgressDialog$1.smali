.class Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog$1;
.super Ljava/lang/Object;
.source "SimpleProgressDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->show(Landroid/content/Context;Landroid/content/DialogInterface$OnCancelListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$dialogCancelDelegate:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method constructor <init>(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog$1;->val$dialogCancelDelegate:Landroid/content/DialogInterface$OnCancelListener;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 71
    invoke-static {}, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->access$0()V

    .line 73
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog$1;->val$dialogCancelDelegate:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog$1;->val$dialogCancelDelegate:Landroid/content/DialogInterface$OnCancelListener;

    invoke-static {}, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->access$1()Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 76
    :cond_0
    return-void
.end method
