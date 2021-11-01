.class Lcom/tianmashikong/tool/OpenApplicationUtils$1;
.super Ljava/lang/Object;
.source "OpenApplicationUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/tool/OpenApplicationUtils;->openAPP(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$platname:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$platname:Ljava/lang/String;

    iput-object p2, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$act:Landroid/app/Activity;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 37
    const-string v1, ""

    .line 38
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$platname:Ljava/lang/String;

    const-string v3, "QQ"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 39
    const-string v1, "com.tencent.mobileqq"

    .line 40
    iget-object v2, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$act:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/tianmashikong/tool/OpenApplicationUtils;->isAvilible(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    iget-object v2, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    .local v0, "launchIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 60
    .end local v0    # "launchIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$act:Landroid/app/Activity;

    const-string v3, "\u60a8\u5c1a\u672a\u5b89\u88c5QQ ,\u8bf7\u5148\u4e0b\u8f7d\u5b89\u88c5"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 46
    iget-object v2, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$act:Landroid/app/Activity;

    iget-object v3, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$platname:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tianmashikong/tool/OpenApplicationUtils;->jumpToWeb(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_2
    iget-object v2, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$platname:Ljava/lang/String;

    const-string v3, "WX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const-string v1, "com.tencent.mm"

    .line 51
    iget-object v2, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$act:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/tianmashikong/tool/OpenApplicationUtils;->isAvilible(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 52
    iget-object v2, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 53
    .restart local v0    # "launchIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$act:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 56
    .end local v0    # "launchIntent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$act:Landroid/app/Activity;

    const-string v3, "\u60a8\u5c1a\u672a\u5b89\u88c5\u5fae\u4fe1 ,\u8bf7\u5148\u4e0b\u8f7d\u5b89\u88c5"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 57
    iget-object v2, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$act:Landroid/app/Activity;

    iget-object v3, p0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;->val$platname:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/tianmashikong/tool/OpenApplicationUtils;->jumpToWeb(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method
