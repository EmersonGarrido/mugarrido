.class Lcom/tianmashikong/sdk/LogoActivity$1;
.super Landroid/os/Handler;
.source "LogoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/sdk/LogoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tianmashikong/sdk/LogoActivity;


# direct methods
.method constructor <init>(Lcom/tianmashikong/sdk/LogoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tianmashikong/sdk/LogoActivity$1;->this$0:Lcom/tianmashikong/sdk/LogoActivity;

    .line 37
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 41
    iget-object v0, p0, Lcom/tianmashikong/sdk/LogoActivity$1;->this$0:Lcom/tianmashikong/sdk/LogoActivity;

    invoke-virtual {v0}, Lcom/tianmashikong/sdk/LogoActivity;->finish()V

    .line 42
    return-void
.end method
