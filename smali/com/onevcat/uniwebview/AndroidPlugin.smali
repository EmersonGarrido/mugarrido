.class public Lcom/onevcat/uniwebview/AndroidPlugin;
.super Lcom/unity3d/player/UnityPlayerActivity;
.source "AndroidPlugin.java"


# static fields
.field public static final FILECHOOSER_RESULTCODE:I = 0x1258e43

.field protected static final LOG_TAG:Ljava/lang/String; = "UniWebView"

.field protected static _cameraPhotoPath:Ljava/lang/String;

.field protected static _uploadCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field protected static _uploadMessages:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayerActivity;-><init>()V

    return-void
.end method

.method public static _UniWebViewAddJavaScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    .line 323
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$10;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$10;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 333
    return-void
.end method

.method public static _UniWebViewAddPermissionRequestTrustSite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "site"    # Ljava/lang/String;

    .prologue
    .line 625
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 626
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-eqz v0, :cond_0

    .line 627
    invoke-virtual {v0, p1}, Lcom/onevcat/uniwebview/UniWebViewDialog;->AddPermissionRequestTrustSite(Ljava/lang/String;)V

    .line 629
    :cond_0
    return-void
.end method

.method public static _UniWebViewAddUrlScheme(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 541
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$24;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$24;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 551
    return-void
.end method

.method public static _UniWebViewAnimateTo(Ljava/lang/String;IIFFLjava/lang/String;)V
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "duration"    # F
    .param p4, "delay"    # F
    .param p5, "identifier"    # Ljava/lang/String;

    .prologue
    .line 652
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$31;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/onevcat/uniwebview/AndroidPlugin$31;-><init>(Ljava/lang/String;IIFFLjava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 659
    return-void
.end method

.method public static _UniWebViewCanGoBack(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 437
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 438
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->canGoBack()Z

    move-result v1

    .line 441
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static _UniWebViewCanGoForward(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 446
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 447
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-eqz v0, :cond_0

    .line 448
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->canGoForward()Z

    move-result v1

    .line 450
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static _UniWebViewChangeInsets(Ljava/lang/String;IIII)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "top"    # I
    .param p2, "left"    # I
    .param p3, "bottom"    # I
    .param p4, "right"    # I

    .prologue
    .line 271
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$6;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/onevcat/uniwebview/AndroidPlugin$6;-><init>(Ljava/lang/String;IIII)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 281
    return-void
.end method

.method public static _UniWebViewCleanCache(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 336
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$11;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$11;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 346
    return-void
.end method

.method public static _UniWebViewCleanCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 349
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$12;

    invoke-direct {v0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$12;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method

.method public static _UniWebViewDestroy(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 372
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$13;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$13;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method

.method public static _UniWebViewEvaluatingJavaScript(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    .line 310
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$9;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$9;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 320
    return-void
.end method

.method public static _UniWebViewGetAlpha(Ljava/lang/String;)F
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 605
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 606
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-eqz v0, :cond_0

    .line 607
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getAlpha()F

    move-result v1

    .line 609
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static _UniWebViewGetCurrentUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 495
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 498
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static _UniWebViewGetUserAgent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 584
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/onevcat/uniwebview/UniWebViewManager;->getUniWebViewDialog(Ljava/lang/String;)Lcom/onevcat/uniwebview/UniWebViewDialog;

    move-result-object v0

    .line 585
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-eqz v0, :cond_0

    .line 586
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    .line 588
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static _UniWebViewGoBack(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 455
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$18;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$18;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 465
    return-void
.end method

.method public static _UniWebViewGoForward(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 468
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$19;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$19;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 478
    return-void
.end method

.method public static _UniWebViewHide(Ljava/lang/String;ZIF)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fade"    # Z
    .param p2, "direction"    # I
    .param p3, "duration"    # F

    .prologue
    .line 297
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$8;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/onevcat/uniwebview/AndroidPlugin$8;-><init>(Ljava/lang/String;ZIF)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 307
    return-void
.end method

.method public static _UniWebViewInit(Ljava/lang/String;IIII)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "top"    # I
    .param p2, "left"    # I
    .param p3, "bottom"    # I
    .param p4, "right"    # I

    .prologue
    .line 136
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$2;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/onevcat/uniwebview/AndroidPlugin$2;-><init>(Ljava/lang/String;IIII)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method public static _UniWebViewLoad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$3;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$3;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method

.method public static _UniWebViewLoadHTMLString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "htmlString"    # Ljava/lang/String;
    .param p2, "baseURL"    # Ljava/lang/String;

    .prologue
    .line 481
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/AndroidPlugin$20;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 491
    return-void
.end method

.method public static _UniWebViewReload(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 244
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$4;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public static _UniWebViewRemoveUrlScheme(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    .line 554
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$25;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$25;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 564
    return-void
.end method

.method public static _UniWebViewSetAlpha(Ljava/lang/String;F)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "alpha"    # F

    .prologue
    .line 592
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$27;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$27;-><init>(FLjava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 602
    return-void
.end method

.method public static _UniWebViewSetBackButtonEnable(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .prologue
    .line 502
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$21;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$21;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 512
    return-void
.end method

.method public static _UniWebViewSetBackgroundColor(Ljava/lang/String;FFFF)V
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 398
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$15;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/onevcat/uniwebview/AndroidPlugin$15;-><init>(Ljava/lang/String;FFFF)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 408
    return-void
.end method

.method public static _UniWebViewSetBounces(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .prologue
    .line 515
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$22;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$22;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 525
    return-void
.end method

.method public static _UniWebViewSetHeaderField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 662
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$32;

    invoke-direct {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/AndroidPlugin$32;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 669
    return-void
.end method

.method public static _UniWebViewSetImmersiveModeEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enabled"    # Z

    .prologue
    .line 613
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$28;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$28;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 622
    return-void
.end method

.method public static _UniWebViewSetPosition(Ljava/lang/String;II)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 632
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$29;

    invoke-direct {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/AndroidPlugin$29;-><init>(Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 639
    return-void
.end method

.method public static _UniWebViewSetSize(Ljava/lang/String;II)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 642
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$30;

    invoke-direct {v0, p0, p1, p2}, Lcom/onevcat/uniwebview/AndroidPlugin$30;-><init>(Ljava/lang/String;II)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 649
    return-void
.end method

.method public static _UniWebViewSetSpinnerShowWhenLoading(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "show"    # Z

    .prologue
    .line 411
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$16;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$16;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 421
    return-void
.end method

.method public static _UniWebViewSetSpinnerText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 424
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$17;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$17;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 434
    return-void
.end method

.method public static _UniWebViewSetUserAgent(Ljava/lang/String;)V
    .locals 0
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 580
    sput-object p0, Lcom/onevcat/uniwebview/UniWebView;->customUserAgent:Ljava/lang/String;

    .line 581
    return-void
.end method

.method public static _UniWebViewSetZoomEnable(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .prologue
    .line 528
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$23;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$23;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 538
    return-void
.end method

.method public static _UniWebViewShow(Ljava/lang/String;ZIF)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "fade"    # Z
    .param p2, "direction"    # I
    .param p3, "duration"    # F

    .prologue
    .line 284
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$7;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/onevcat/uniwebview/AndroidPlugin$7;-><init>(Ljava/lang/String;ZIF)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 294
    return-void
.end method

.method public static _UniWebViewStop(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 257
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$5;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$5;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method public static _UniWebViewTransparentBackground(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "transparent"    # Z

    .prologue
    .line 385
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$14;

    invoke-direct {v0, p0, p1}, Lcom/onevcat/uniwebview/AndroidPlugin$14;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 395
    return-void
.end method

.method public static _UniWebViewUseWideViewPort(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "use"    # Z

    .prologue
    .line 567
    new-instance v0, Lcom/onevcat/uniwebview/AndroidPlugin$26;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$26;-><init>(ZLjava/lang/String;)V

    invoke-static {v0}, Lcom/onevcat/uniwebview/AndroidPlugin;->runSafelyOnUiThread(Ljava/lang/Runnable;)V

    .line 577
    return-void
.end method

.method public static getUnityActivity_()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method protected static runSafelyOnUiThread(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 672
    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/onevcat/uniwebview/AndroidPlugin$33;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$33;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 681
    return-void
.end method

.method public static setUploadCallback(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "message":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    sput-object p0, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadCallback:Landroid/webkit/ValueCallback;

    .line 45
    return-void
.end method

.method public static setUploadMessage(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "message":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    sput-object p0, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    .line 41
    return-void
.end method


# virtual methods
.method protected ShowAllWebViewDialogs(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    .line 684
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onevcat/uniwebview/UniWebViewManager;->getShowingWebViewDialogs()Ljava/util/ArrayList;

    move-result-object v1

    .line 685
    .local v1, "webViewDialogs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/onevcat/uniwebview/UniWebViewDialog;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onevcat/uniwebview/UniWebViewDialog;

    .line 686
    .local v0, "webViewDialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    if-eqz p1, :cond_0

    .line 687
    const-string v3, "UniWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "goForeGround"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->goForeGround()V

    .line 689
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    goto :goto_0

    .line 691
    :cond_0
    const-string v3, "UniWebView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "goBackGround"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->goBackGround()V

    .line 693
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    goto :goto_0

    .line 696
    .end local v0    # "webViewDialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 98
    const v3, 0x1258e43

    if-ne p1, v3, :cond_0

    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    if-nez v3, :cond_1

    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadCallback:Landroid/webkit/ValueCallback;

    if-nez v3, :cond_1

    .line 99
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/unity3d/player/UnityPlayerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 133
    :goto_0
    return-void

    .line 103
    :cond_1
    const/4 v2, 0x0

    .line 104
    .local v2, "results":[Landroid/net/Uri;
    const/4 v1, 0x0

    .line 106
    .local v1, "result":Landroid/net/Uri;
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 107
    if-nez p3, :cond_5

    .line 108
    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_cameraPhotoPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 109
    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_cameraPhotoPath:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 110
    new-array v2, v6, [Landroid/net/Uri;

    .end local v2    # "results":[Landroid/net/Uri;
    aput-object v1, v2, v5

    .line 121
    .restart local v2    # "results":[Landroid/net/Uri;
    :cond_2
    :goto_1
    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadCallback:Landroid/webkit/ValueCallback;

    if-eqz v3, :cond_3

    .line 122
    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v3, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 123
    sput-object v4, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadCallback:Landroid/webkit/ValueCallback;

    .line 126
    :cond_3
    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    if-eqz v3, :cond_4

    .line 127
    sget-object v3, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    invoke-interface {v3, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 128
    sput-object v4, Lcom/onevcat/uniwebview/AndroidPlugin;->_uploadMessages:Landroid/webkit/ValueCallback;

    .line 131
    :cond_4
    sput-object v4, Lcom/onevcat/uniwebview/AndroidPlugin;->_cameraPhotoPath:Ljava/lang/String;

    goto :goto_0

    .line 113
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "dataString":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 115
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 116
    new-array v2, v6, [Landroid/net/Uri;

    .end local v2    # "results":[Landroid/net/Uri;
    aput-object v1, v2, v5

    .restart local v2    # "results":[Landroid/net/Uri;
    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    const-string v1, "UniWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Rotation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {}, Lcom/onevcat/uniwebview/UniWebViewManager;->Instance()Lcom/onevcat/uniwebview/UniWebViewManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/onevcat/uniwebview/UniWebViewManager;->allDialogs()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onevcat/uniwebview/UniWebViewDialog;

    .line 91
    .local v0, "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->updateContentSize()V

    .line 92
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/UniWebViewDialog;->HideSystemUI()V

    goto :goto_0

    .line 94
    .end local v0    # "dialog":Lcom/onevcat/uniwebview/UniWebViewDialog;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/unity3d/player/UnityPlayerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-static {}, Lcom/onevcat/uniwebview/AndroidPlugin;->getUnityActivity_()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 51
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onPause()V

    .line 59
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/onevcat/uniwebview/AndroidPlugin;->ShowAllWebViewDialogs(Z)V

    .line 61
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 62
    .local v0, "manager":Landroid/webkit/CookieSyncManager;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 65
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 69
    invoke-super {p0}, Lcom/unity3d/player/UnityPlayerActivity;->onResume()V

    .line 70
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/onevcat/uniwebview/AndroidPlugin;->ShowAllWebViewDialogs(Z)V

    .line 73
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/onevcat/uniwebview/AndroidPlugin$1;

    invoke-direct {v2, p0}, Lcom/onevcat/uniwebview/AndroidPlugin$1;-><init>(Lcom/onevcat/uniwebview/AndroidPlugin;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 81
    .local v0, "manager":Landroid/webkit/CookieSyncManager;
    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 84
    :cond_0
    return-void
.end method
