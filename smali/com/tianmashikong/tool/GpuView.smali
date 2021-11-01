.class public Lcom/tianmashikong/tool/GpuView;
.super Landroid/opengl/GLSurfaceView;
.source "GpuView.java"


# static fields
.field private static _exts:Ljava/lang/String;

.field private static _render:Ljava/lang/String;

.field private static _vender:Ljava/lang/String;

.field private static _version:Ljava/lang/String;


# instance fields
.field private _myRender:Lcom/tianmashikong/tool/GpuViewRender;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, ""

    sput-object v0, Lcom/tianmashikong/tool/GpuView;->_render:Ljava/lang/String;

    .line 15
    const-string v0, ""

    sput-object v0, Lcom/tianmashikong/tool/GpuView;->_vender:Ljava/lang/String;

    .line 16
    const-string v0, ""

    sput-object v0, Lcom/tianmashikong/tool/GpuView;->_version:Ljava/lang/String;

    .line 17
    const-string v0, ""

    sput-object v0, Lcom/tianmashikong/tool/GpuView;->_exts:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 58
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    .line 59
    invoke-virtual/range {v0 .. v6}, Lcom/tianmashikong/tool/GpuView;->setEGLConfigChooser(IIIIII)V

    .line 60
    new-instance v0, Lcom/tianmashikong/tool/GpuViewRender;

    invoke-direct {v0}, Lcom/tianmashikong/tool/GpuViewRender;-><init>()V

    iput-object v0, p0, Lcom/tianmashikong/tool/GpuView;->_myRender:Lcom/tianmashikong/tool/GpuViewRender;

    .line 61
    iget-object v0, p0, Lcom/tianmashikong/tool/GpuView;->_myRender:Lcom/tianmashikong/tool/GpuViewRender;

    invoke-virtual {p0, v0}, Lcom/tianmashikong/tool/GpuView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 62
    return-void
.end method

.method public static InitGpu(Lcom/unity3d/player/UnityPlayer;)V
    .locals 3
    .param p0, "unityPlayer"    # Lcom/unity3d/player/UnityPlayer;

    .prologue
    .line 66
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 67
    .local v0, "con":Landroid/app/Activity;
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    new-instance v2, Lcom/tianmashikong/tool/GpuView$1;

    invoke-direct {v2, v0, p0}, Lcom/tianmashikong/tool/GpuView$1;-><init>(Landroid/app/Activity;Lcom/unity3d/player/UnityPlayer;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method public static getGpuExtension()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/tianmashikong/tool/GpuView;->_exts:Ljava/lang/String;

    return-object v0
.end method

.method public static getGpuType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/tianmashikong/tool/GpuView;->_render:Ljava/lang/String;

    return-object v0
.end method

.method public static getGpuVender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/tianmashikong/tool/GpuView;->_vender:Ljava/lang/String;

    return-object v0
.end method

.method public static getGpuVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/tianmashikong/tool/GpuView;->_version:Ljava/lang/String;

    return-object v0
.end method

.method public static setGpuExtension(Ljava/lang/String;)V
    .locals 0
    .param p0, "ext"    # Ljava/lang/String;

    .prologue
    .line 52
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "ext":Ljava/lang/String;
    :cond_0
    sput-object p0, Lcom/tianmashikong/tool/GpuView;->_exts:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public static setGpuType(Ljava/lang/String;)V
    .locals 0
    .param p0, "r"    # Ljava/lang/String;

    .prologue
    .line 25
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "r":Ljava/lang/String;
    :cond_0
    sput-object p0, Lcom/tianmashikong/tool/GpuView;->_render:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static setGpuVender(Ljava/lang/String;)V
    .locals 0
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 34
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "v":Ljava/lang/String;
    :cond_0
    sput-object p0, Lcom/tianmashikong/tool/GpuView;->_vender:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static setGpuVersion(Ljava/lang/String;)V
    .locals 0
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 43
    if-nez p0, :cond_0

    const-string p0, ""

    .end local p0    # "v":Ljava/lang/String;
    :cond_0
    sput-object p0, Lcom/tianmashikong/tool/GpuView;->_version:Ljava/lang/String;

    .line 44
    return-void
.end method
