.class public Lcom/tianmashikong/tool/OpenApplicationUtils;
.super Ljava/lang/Object;
.source "OpenApplicationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyToClipboard(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 68
    new-instance v0, Lcom/tianmashikong/tool/OpenApplicationUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/tianmashikong/tool/OpenApplicationUtils$2;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 75
    return-void
.end method

.method public static isAvilible(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 6
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 17
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 18
    .local v2, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_0

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .end local v0    # "i":I
    :cond_0
    move v4, v5

    .line 26
    :goto_1
    return v4

    .line 20
    .restart local v0    # "i":I
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v3, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 21
    .local v3, "pn":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 22
    const/4 v4, 0x1

    goto :goto_1

    .line 19
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static jumpToWeb(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "platname"    # Ljava/lang/String;

    .prologue
    .line 79
    const-string v2, ""

    .line 80
    .local v2, "url":Ljava/lang/String;
    const-string v3, "QQ"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 81
    const-string v2, "http://im.qq.com/mobileqq/"

    .line 85
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 86
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    const-string v3, "WX"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const-string v2, "http://weixin.qq.com/"

    goto :goto_0
.end method

.method public static openAPP(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "platname"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lcom/tianmashikong/tool/OpenApplicationUtils$1;

    invoke-direct {v0, p1, p0}, Lcom/tianmashikong/tool/OpenApplicationUtils$1;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public static superVIPFunc(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "act"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "platname"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p0, p2}, Lcom/tianmashikong/tool/OpenApplicationUtils;->openAPP(Landroid/app/Activity;Ljava/lang/String;)V

    .line 93
    invoke-static {p0, p1}, Lcom/tianmashikong/tool/OpenApplicationUtils;->copyToClipboard(Landroid/app/Activity;Ljava/lang/String;)V

    .line 94
    return-void
.end method
