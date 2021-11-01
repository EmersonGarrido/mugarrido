.class Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$2$2;
.super Ljava/lang/Object;
.source "FacebookCenterShowHandleStrategy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$2;


# direct methods
.method constructor <init>(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$2$2;->this$1:Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterShowHandleStrategy$2;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 187
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;->HIDE:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->float_button_state:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    .line 188
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->hide()V

    .line 189
    return-void
.end method
