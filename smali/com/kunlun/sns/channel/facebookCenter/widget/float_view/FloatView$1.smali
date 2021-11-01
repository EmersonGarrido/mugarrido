.class Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$1;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x41200000    # 10.0f

    .line 78
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    return v4

    .line 80
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$0(F)V

    .line 81
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$1(F)V

    .line 83
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$2(F)V

    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$3(F)V

    goto :goto_0

    .line 88
    :pswitch_1
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$4()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 90
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$4()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$5()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 91
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$4()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$6()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$7()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 93
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$8()Landroid/view/WindowManager;

    move-result-object v0

    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$9()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$4()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$10()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$11()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 99
    :cond_1
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->closeFloatMenu()V

    .line 100
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$12()I

    move-result v0

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$13(I)V

    .line 101
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$14()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$15()Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "kunlun_fb_float_moving"

    invoke-static {v1, v2, v3}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 102
    invoke-static {v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$16(Z)V

    goto/16 :goto_0

    .line 108
    :pswitch_2
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$17()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$14()Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$15()Landroid/content/Context;

    move-result-object v1

    const-string v2, "drawable"

    const-string v3, "kunlun_fb_float_default"

    invoke-static {v1, v2, v3}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 111
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$16(Z)V

    goto/16 :goto_0

    .line 116
    :cond_2
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$18()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->closeMenuToOldLocation()V

    goto/16 :goto_0

    .line 120
    :cond_3
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$10()F

    move-result v0

    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$5()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->access$19(F)V

    goto/16 :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
