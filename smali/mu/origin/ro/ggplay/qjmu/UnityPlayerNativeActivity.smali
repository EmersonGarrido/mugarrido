.class public Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;
.super Landroid/app/NativeActivity;
.source "UnityPlayerNativeActivity.java"


# static fields
.field public static PlayId:Ljava/lang/String;

.field public static _BackUnityObject:Ljava/lang/String;

.field public static _unityLoginFunc:Ljava/lang/String;

.field public static _unityLoginOutFunc:Ljava/lang/String;


# instance fields
.field public APPID:Ljava/lang/String;

.field activity:Landroid/app/Activity;

.field public isPack:Ljava/lang/Boolean;

.field protected mUnityPlayer:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "SdkPluginLayer"

    sput-object v0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->_BackUnityObject:Ljava/lang/String;

    .line 37
    const-string v0, "LoginCallback"

    sput-object v0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->_unityLoginFunc:Ljava/lang/String;

    .line 38
    const-string v0, "LoginOutCallback"

    sput-object v0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->_unityLoginOutFunc:Ljava/lang/String;

    .line 39
    const-string v0, ""

    sput-object v0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->PlayId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    .line 40
    const-string v0, "4058"

    iput-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->APPID:Ljava/lang/String;

    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->isPack:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public CreateRole(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Lmu/origin/ro/ggplay/qjmu/ADManager;->CreateRole(Landroid/app/Activity;)V

    .line 91
    invoke-static {p0, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->submitRoleInfo(Landroid/app/Activity;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public EnterGame(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "Serverip"    # Ljava/lang/String;

    .prologue
    .line 226
    const-string v1, "GAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID9 == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sput-object p1, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->PlayId:Ljava/lang/String;

    .line 229
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 231
    .local v0, "ip":I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 233
    const-string v1, "GAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ID8 == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/16 v0, 0x3b8

    .line 239
    :cond_0
    const-string v1, "%03d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 241
    const-string v1, "GAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ID6 ==  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string v1, "GAT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ID0 ==  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->APPID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->APPID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->setKunlunServerId(Landroid/app/Activity;Ljava/lang/String;)V

    .line 244
    invoke-static {p0, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->submitRoleInfo(Landroid/app/Activity;Ljava/lang/String;)V

    .line 245
    invoke-static {p0, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->setRoleInfo(Landroid/app/Activity;Ljava/lang/String;)V

    .line 247
    return-void
.end method

.method public GooglePay(Ljava/lang/String;)V
    .locals 0
    .param p1, "args"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-static {p0, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->GooglePay(Landroid/app/Activity;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public KunlunPay(Ljava/lang/String;)V
    .locals 0
    .param p1, "agrs"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p0, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->KunlunPay(Landroid/app/Activity;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public Login()V
    .locals 2

    .prologue
    .line 81
    invoke-static {p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->Login(Landroid/app/Activity;)V

    .line 82
    const-string v0, "GAT"

    const-string v1, "Login"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return-void
.end method

.method public LoginOut()V
    .locals 0

    .prologue
    .line 149
    invoke-static {p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->quit(Landroid/app/Activity;)V

    .line 150
    return-void
.end method

.method public OnAppQuit()V
    .locals 0

    .prologue
    .line 144
    invoke-static {p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->quit(Landroid/app/Activity;)V

    .line 145
    return-void
.end method

.method public ReLogin()V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0}, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->Login()V

    .line 122
    return-void
.end method

.method public ShowUserCenter()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public UserUpLevelListener(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {p0, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->submitRoleInfo(Landroid/app/Activity;Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 339
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 340
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    .line 341
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public incrementAchievements(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->isPack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "GAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id  201 == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "        index  201 ==  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {p0, p2, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->incrementAchievements(Landroid/app/Activity;ILjava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 346
    invoke-super {p0, p1, p2, p3}, Landroid/app/NativeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 347
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/kunlun/platform/android/KunlunProxy;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    .line 348
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 288
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-super {p0}, Landroid/app/NativeActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 324
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 325
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->configurationChanged(Landroid/content/res/Configuration;)V

    .line 326
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x1

    .line 48
    invoke-virtual {p0, v2}, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->requestWindowFeature(I)Z

    .line 49
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->takeSurface(Landroid/view/SurfaceHolder$Callback2;)V

    .line 52
    const v0, 0x1030007

    invoke-virtual {p0, v0}, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->setTheme(I)V

    .line 53
    invoke-virtual {p0}, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 55
    new-instance v0, Lcom/unity3d/player/UnityPlayer;

    invoke-direct {v0, p0}, Lcom/unity3d/player/UnityPlayer;-><init>(Landroid/content/ContextWrapper;)V

    iput-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 56
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getSettings()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "hide_status_bar"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 60
    :cond_0
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p0, v0}, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->setContentView(Landroid/view/View;)V

    .line 61
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->requestFocus()Z

    .line 63
    invoke-static {p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->Init(Landroid/app/Activity;)V

    .line 66
    invoke-static {p0}, Lmu/origin/ro/ggplay/qjmu/ADManager;->InitInfo(Landroid/app/Activity;)V

    .line 68
    invoke-static {}, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->getInstance()Lcom/tencent/gcloud/voice/GCloudVoiceEngine;

    move-result-object v0

    invoke-virtual {p0}, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/tencent/gcloud/voice/GCloudVoiceEngine;->init(Landroid/content/Context;Landroid/app/Activity;)I

    .line 69
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->quit()V

    .line 279
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    .line 280
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kunlun/platform/android/KunlunProxy;->onDestroy(Landroid/app/Activity;)V

    .line 281
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onDestroy(Landroid/app/Activity;)V

    .line 282
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 354
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 352
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 351
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p2}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 75
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/kunlun/platform/android/KunlunProxy;->onNewIntent(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Landroid/app/NativeActivity;->onPause()V

    .line 298
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->pause()V

    .line 299
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kunlun/platform/android/KunlunProxy;->onPause(Landroid/app/Activity;)V

    .line 300
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onPause(Landroid/app/Activity;)V

    .line 302
    return-void
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 316
    invoke-super {p0}, Landroid/app/NativeActivity;->onRestart()V

    .line 317
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kunlun/platform/android/KunlunProxy;->onRestart(Landroid/app/Activity;)V

    .line 318
    invoke-static {p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->showFaceBook(Landroid/app/Activity;)V

    .line 319
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 307
    invoke-super {p0}, Landroid/app/NativeActivity;->onResume()V

    .line 308
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->resume()V

    .line 309
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kunlun/platform/android/KunlunProxy;->onResume(Landroid/app/Activity;)V

    .line 310
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onResume(Landroid/app/Activity;)V

    .line 312
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 258
    invoke-super {p0}, Landroid/app/NativeActivity;->onStart()V

    .line 259
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 261
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kunlun/platform/android/KunlunProxy;->onStart(Landroid/app/Activity;)V

    .line 262
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    .line 269
    invoke-static {}, Lcom/kunlun/platform/android/KunlunProxy;->getInstance()Lcom/kunlun/platform/android/KunlunProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kunlun/platform/android/KunlunProxy;->onStop(Landroid/app/Activity;)V

    .line 270
    invoke-static {p0}, Lcom/chartboost/sdk/Chartboost;->onStop(Landroid/app/Activity;)V

    .line 272
    invoke-static {}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->HideFaceBook()V

    .line 273
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 353
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 331
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onWindowFocusChanged(Z)V

    .line 332
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->mUnityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0, p1}, Lcom/unity3d/player/UnityPlayer;->windowFocusChanged(Z)V

    .line 333
    return-void
.end method

.method public setLevelChengJiu(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0, p1}, Lmu/origin/ro/ggplay/qjmu/ADManager;->AFLev(Landroid/app/Activity;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public setPartyLevel()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->isPack:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "action_type"

    const-string v2, "level20"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {p0}, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "962307603"

    .line 110
    invoke-static {v1, v2, v0}, Lcom/google/ads/conversiontracking/AdWordsRemarketingReporter;->reportWithConversionId(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 116
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public showAchievements()V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->isPack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-static {p0}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->showAchievements(Landroid/app/Activity;)V

    .line 196
    :cond_0
    return-void
.end method

.method public submitScore(Ljava/lang/String;I)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 206
    const-string v0, "GAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " id == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "         index =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->isPack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    invoke-static {p0, p1, p2}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->submitScore(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 213
    :cond_0
    return-void
.end method

.method public unlockAchievements(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lmu/origin/ro/ggplay/qjmu/UnityPlayerNativeActivity;->isPack:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "GAT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id  200 == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-static {p0, p1}, Lmu/origin/ro/ggplay/qjmu/KunlunPlugin;->unlockAchievements(Landroid/app/Activity;Ljava/lang/String;)V

    .line 166
    :cond_0
    return-void
.end method
