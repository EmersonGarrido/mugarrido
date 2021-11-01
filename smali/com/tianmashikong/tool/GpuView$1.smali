.class Lcom/tianmashikong/tool/GpuView$1;
.super Ljava/lang/Object;
.source "GpuView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/tool/GpuView;->InitGpu(Lcom/unity3d/player/UnityPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$con:Landroid/app/Activity;

.field private final synthetic val$unityPlayer:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tianmashikong/tool/GpuView$1;->val$con:Landroid/app/Activity;

    iput-object p2, p0, Lcom/tianmashikong/tool/GpuView$1;->val$unityPlayer:Lcom/unity3d/player/UnityPlayer;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 73
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/tianmashikong/tool/GpuView$1;->val$con:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "gpuframe":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    new-instance v1, Lcom/tianmashikong/tool/GpuView;

    iget-object v2, p0, Lcom/tianmashikong/tool/GpuView$1;->val$con:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/tianmashikong/tool/GpuView;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, "gv":Lcom/tianmashikong/tool/GpuView;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 78
    iget-object v2, p0, Lcom/tianmashikong/tool/GpuView$1;->val$unityPlayer:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v2, v0}, Lcom/unity3d/player/UnityPlayer;->addView(Landroid/view/View;)V

    .line 81
    return-void
.end method
