.class Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2$1;
.super Ljava/lang/Object;
.source "KunlunPlugin.java"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$LogoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;


# direct methods
.method constructor <init>(Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;)V
    .locals 0
    .param p1, "this$0"    # Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;

    .prologue
    .line 116
    iput-object p1, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2$1;->this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogout(Ljava/lang/Object;)V
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 121
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2$1;->this$0:Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;

    iget-object v0, v0, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin$2;->val$act:Landroid/app/Activity;

    const-string v1, "\u7528\u6237\u5df2\u9000\u51fa\u767b\u5f55"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    return-void
.end method
