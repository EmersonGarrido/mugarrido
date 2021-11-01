.class Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$3;
.super Ljava/lang/Object;
.source "KL_BottomLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->addAwardImages(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

.field private final synthetic val$award:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;

.field private final synthetic val$layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;Landroid/view/LayoutInflater;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    iput-object p2, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$3;->val$layoutInflater:Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$3;->val$award:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$3;->val$layoutInflater:Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    invoke-virtual {v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "layout"

    const-string v6, "kunlun_fb_present_toast"

    invoke-static {v4, v5, v6}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 150
    .local v2, "toastView":Landroid/view/View;
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    invoke-virtual {v3}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "award_msg_text_TextView"

    invoke-static {v3, v4, v5}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 151
    .local v1, "textView":Landroid/widget/TextView;
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$3;->val$award:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;

    invoke-virtual {v3}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;->getPrompt_msg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    invoke-virtual {v3}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "id"

    const-string v5, "award_msg_img_ImageView"

    invoke-static {v3, v4, v5}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 154
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$3;->val$award:Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;

    invoke-virtual {v4}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/get_all_friends/Award;->getPrompt_img()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    invoke-static {v5}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->access$1(Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;)Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 156
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    invoke-static {v3}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->access$2(Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 157
    iget-object v3, p0, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout$3;->this$0:Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;

    invoke-static {v3}, Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;->access$2(Lcom/kunlun/sns/channel/facebookCenter/widget/KL_BottomLayout;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 158
    return-void
.end method
