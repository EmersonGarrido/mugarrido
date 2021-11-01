.class public Lcom/tianmashikong/sdk/LogoActivity;
.super Landroid/app/Activity;
.source "LogoActivity.java"


# static fields
.field public static final MSG_HIDE:I


# instance fields
.field private handler:Landroid/os/Handler;

.field private imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static ShowLogo()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    const-class v2, Lcom/tianmashikong/sdk/LogoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 67
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 69
    return-void
.end method

.method private getPicInAssets()V
    .locals 8

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/tianmashikong/sdk/LogoActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 55
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    const-string v3, "Loading2.png"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 56
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/tianmashikong/sdk/LogoActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    iget-object v3, p0, Lcom/tianmashikong/sdk/LogoActivity;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/tianmashikong/sdk/LogoActivity;->handler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v6, 0xbb8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v2

    .line 59
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tianmashikong/sdk/LogoActivity;->requestWindowFeature(I)Z

    .line 29
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tianmashikong/sdk/LogoActivity;->imageView:Landroid/widget/ImageView;

    .line 30
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/tianmashikong/sdk/LogoActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFlags(II)V

    .line 32
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 33
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v2, p0, Lcom/tianmashikong/sdk/LogoActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/tianmashikong/sdk/LogoActivity;->setContentView(Landroid/view/View;)V

    .line 35
    iget-object v2, p0, Lcom/tianmashikong/sdk/LogoActivity;->imageView:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 37
    new-instance v2, Lcom/tianmashikong/sdk/LogoActivity$1;

    invoke-direct {v2, p0}, Lcom/tianmashikong/sdk/LogoActivity$1;-><init>(Lcom/tianmashikong/sdk/LogoActivity;)V

    iput-object v2, p0, Lcom/tianmashikong/sdk/LogoActivity;->handler:Landroid/os/Handler;

    .line 45
    invoke-direct {p0}, Lcom/tianmashikong/sdk/LogoActivity;->getPicInAssets()V

    .line 46
    return-void
.end method
