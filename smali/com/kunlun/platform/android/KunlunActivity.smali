.class public Lcom/kunlun/platform/android/KunlunActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

.field protected activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object p0, p0, Lcom/kunlun/platform/android/KunlunActivity;->activity:Landroid/app/Activity;

    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/kunlun/platform/android/common/KunlunActivityControl;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kunlun/platform/android/KunlunActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "callback"

    invoke-static {p1}, Lcom/kunlun/platform/android/common/KunlunActivityUtil;->addCallback(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    goto :goto_1
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onActivityResult(IILandroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const-wide/16 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/kunlun/platform/android/KunlunActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "callback"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/common/KunlunActivityUtil;->removeCallback(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kunlun/platform/android/common/KunlunActivityControl;

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    if-nez v0, :cond_1

    new-instance v0, Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-direct {v0}, Lcom/kunlun/platform/android/common/KunlunActivityControl;-><init>()V

    iput-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    :cond_1
    const-string v0, "com.kunlun.platform.android.KunlunActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mKunlunActivityControl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0, p0}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->setActivity(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0, p1}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onDestroy()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0, p1, p2}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0, p1, p2}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0, p1}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onNewIntent(Landroid/content/Intent;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onPause()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onRestart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onRestart()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0, p1}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onRestoreInstanceState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0, p1}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onStop()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0, p1}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0, p1}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunActivity;->W:Lcom/kunlun/platform/android/common/KunlunActivityControl;

    invoke-virtual {v0, p1}, Lcom/kunlun/platform/android/common/KunlunActivityControl;->onWindowFocusChanged(Z)V

    return-void
.end method
