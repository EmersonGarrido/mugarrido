.class public Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;
.super Landroid/widget/RelativeLayout;
.source "KL_BottomLayout.java"


# instance fields
.field private contentLayout:Landroid/widget/LinearLayout;

.field private imageLoadingListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field private imageSrcId:I

.field private inviteFriendsView:Landroid/widget/Button;

.field private onImageViewClickListener:Landroid/view/View$OnClickListener;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->init()V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const-string v3, "KL_BottomLayout"

    invoke-static {p1, v3}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getStyleableArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 56
    .local v1, "resIndex":[I
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 57
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "KL_BottomLayout_KL_imageSrc"

    invoke-static {v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 58
    .local v0, "resId":I
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->imageSrcId:I

    .line 59
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 61
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->init()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const-string v3, "KL_BottomLayout"

    invoke-static {p1, v3}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getStyleableArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v1

    .line 38
    .local v1, "resIndex":[I
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 39
    .local v2, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "KL_BottomLayout_KL_imageSrc"

    invoke-static {v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getStyleable(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "resId":I
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->imageSrcId:I

    .line 41
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    invoke-direct {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->init()V

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->onImageViewClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;)Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->imageLoadingListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;)Landroid/widget/Toast;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->toast:Landroid/widget/Toast;

    return-object v0
.end method

.method private init()V
    .locals 5

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 84
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout"

    const-string v4, "kunlun_fb_bottom_layout"

    invoke-static {v2, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 85
    .local v1, "resId":I
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "kunlun_fb_content_Layout"

    invoke-static {v2, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 88
    invoke-virtual {p0, v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->contentLayout:Landroid/widget/LinearLayout;

    .line 90
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "kunlun_fb_btn_request"

    invoke-static {v2, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 91
    invoke-virtual {p0, v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->inviteFriendsView:Landroid/widget/Button;

    .line 92
    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->inviteFriendsView:Landroid/widget/Button;

    iget v3, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->imageSrcId:I

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 93
    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->inviteFriendsView:Landroid/widget/Button;

    new-instance v3, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$1;

    invoke-direct {v3, p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$1;-><init>(Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v2, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->toast:Landroid/widget/Toast;

    .line 103
    iget-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->toast:Landroid/widget/Toast;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setDuration(I)V

    .line 105
    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$2;

    invoke-direct {v2, p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$2;-><init>(Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;)V

    iput-object v2, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->imageLoadingListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 131
    return-void
.end method


# virtual methods
.method public addAwardImages(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "awards":Ljava/util/List;, "Ljava/util/List<Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;>;"
    const/high16 v8, 0x42700000    # 60.0f

    .line 134
    if-nez p1, :cond_1

    .line 135
    sget-object v4, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5165\u53c2\u4e0d\u5408\u6cd5: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".addAwardImages\u7684\u65b9\u6cd5\u53c2\u6570---awards\u4e3a\u7a7a\uff01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    return-void

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 142
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;

    .line 143
    .local v0, "award":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 145
    .local v1, "awardImageView":Landroid/widget/ImageView;
    new-instance v5, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$3;

    invoke-direct {v5, p0, v2, v0}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$3;-><init>(Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;Landroid/view/LayoutInflater;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;)V

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v8}, Lcom/kunlun/sns/net_engine/toolutils/SimplePxDipSpTools;->dipToPx(F)I

    move-result v5

    invoke-static {v8}, Lcom/kunlun/sns/net_engine/toolutils/SimplePxDipSpTools;->dipToPx(F)I

    move-result v6

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 162
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v5}, Lcom/kunlun/sns/net_engine/toolutils/SimplePxDipSpTools;->dipToPx(F)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 163
    iget-object v5, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->contentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    invoke-virtual {v0}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;->getBottom_img()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->imageLoadingListener:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    invoke-virtual {v5, v6, v1, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    goto :goto_0
.end method

.method public setIamgeViewbg(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->inviteFriendsView:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 66
    return-void
.end method

.method public setOnImageViewClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->onImageViewClickListener:Landroid/view/View$OnClickListener;

    .line 171
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->inviteFriendsView:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->inviteFriendsView:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 74
    return-void
.end method
