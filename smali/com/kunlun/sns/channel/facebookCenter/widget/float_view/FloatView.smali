.class public Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;
.super Ljava/lang/Object;
.source "FloatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;
    }
.end annotation


# static fields
.field private static final HAS_NOT_INIT_VIEW:I = 0x1869f

.field private static final TAG:Ljava/lang/String;

.field private static barHeight:I

.field private static floatMenuLayout:Landroid/widget/LinearLayout;

.field private static floatPresentImageView:Landroid/widget/ImageView;

.field private static floatView:Landroid/widget/RelativeLayout;

.field public static float_button_state:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

.field private static hasMoved:Z

.field private static isMenuOpen:Z

.field private static mContext:Landroid/content/Context;

.field private static messageCenterImageView:Landroid/widget/ImageView;

.field private static oldX:F

.field private static onFlaotMenuItemClickListener:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/OnFlaotMenuItemClickListener;

.field private static onTouchListener:Landroid/view/View$OnTouchListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation
.end field

.field private static rigthCornerBlock:Landroid/view/View;

.field private static startRawX:F

.field private static startRawY:F

.field private static startX:F

.field private static startY:F

.field private static windowManager:Landroid/view/WindowManager;

.field private static windowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    const-class v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->TAG:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;->SHOW:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->float_button_state:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    .line 49
    const v0, 0x1869f

    sput v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->barHeight:I

    .line 53
    sput-boolean v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->hasMoved:Z

    .line 54
    sput-boolean v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->isMenuOpen:Z

    .line 74
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$1;

    invoke-direct {v0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$1;-><init>()V

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->onTouchListener:Landroid/view/View$OnTouchListener;

    .line 129
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(F)V
    .locals 0

    .prologue
    .line 55
    sput p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->startX:F

    return-void
.end method

.method static synthetic access$1(F)V
    .locals 0

    .prologue
    .line 56
    sput p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->startY:F

    return-void
.end method

.method static synthetic access$10()F
    .locals 1

    .prologue
    .line 57
    sget v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->startRawX:F

    return v0
.end method

.method static synthetic access$11()F
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->startRawY:F

    return v0
.end method

.method static synthetic access$12()I
    .locals 1

    .prologue
    .line 431
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->getItemWith()I

    move-result v0

    return v0
.end method

.method static synthetic access$13(I)V
    .locals 0

    .prologue
    .line 410
    invoke-static {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->updateFloatViewWith(I)V

    return-void
.end method

.method static synthetic access$14()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatPresentImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$16(Z)V
    .locals 0

    .prologue
    .line 53
    sput-boolean p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->hasMoved:Z

    return-void
.end method

.method static synthetic access$17()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->hasMoved:Z

    return v0
.end method

.method static synthetic access$18()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->isMenuOpen:Z

    return v0
.end method

.method static synthetic access$19(F)V
    .locals 0

    .prologue
    .line 389
    invoke-static {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->openFloatMenu(F)V

    return-void
.end method

.method static synthetic access$2(F)V
    .locals 0

    .prologue
    .line 57
    sput p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->startRawX:F

    return-void
.end method

.method static synthetic access$20(I)V
    .locals 0

    .prologue
    .line 49
    sput p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->barHeight:I

    return-void
.end method

.method static synthetic access$21()Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/OnFlaotMenuItemClickListener;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->onFlaotMenuItemClickListener:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/OnFlaotMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$22()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(F)V
    .locals 0

    .prologue
    .line 58
    sput p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->startRawY:F

    return-void
.end method

.method static synthetic access$4()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$5()F
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->startX:F

    return v0
.end method

.method static synthetic access$6()F
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->startY:F

    return v0
.end method

.method static synthetic access$7()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->barHeight:I

    return v0
.end method

.method static synthetic access$8()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$9()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static closeFloatMenu()V
    .locals 5

    .prologue
    const/16 v2, 0x8

    .line 376
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->rigthCornerBlock:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 377
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 381
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatPresentImageView:Landroid/widget/ImageView;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->mContext:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "kunlun_fb_float_default"

    invoke-static {v2, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 383
    const/4 v1, 0x0

    sput-boolean v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->isMenuOpen:Z

    .line 384
    return-void

    .line 379
    :cond_0
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static closeMenuToOldLocation()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->closeFloatMenu()V

    .line 134
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->oldX:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 135
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->getItemWith()I

    move-result v0

    invoke-static {v0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->updateFloatViewWith(I)V

    .line 136
    return-void
.end method

.method private static getItemWith()I
    .locals 1

    .prologue
    .line 432
    const/high16 v0, 0x42380000    # 46.0f

    invoke-static {v0}, Lcom/kunlun/sns/net_engine/toolutils/SimplePxDipSpTools;->dipToPx(F)I

    move-result v0

    return v0
.end method

.method private static getShowFloatViewWith()I
    .locals 2

    .prologue
    .line 421
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->getItemWith()I

    move-result v0

    .line 423
    .local v0, "floatButtonSize":I
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->getInstance:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;

    invoke-virtual {v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->getFloatMenu()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0x5

    return v1
.end method

.method public static hide()V
    .locals 1

    .prologue
    .line 168
    :try_start_0
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->removeFloatBttonFromWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static initFloatMenu()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 282
    sget-object v4, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatMenuLayout:Landroid/widget/LinearLayout;

    if-nez v4, :cond_1

    .line 301
    .local v0, "item":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .local v3, "menuItem":Landroid/view/ViewGroup;
    :cond_0
    :goto_0
    return-void

    .line 285
    .end local v0    # "item":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "menuItem":Landroid/view/ViewGroup;
    :cond_1
    sget-object v4, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->getInstance:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;

    invoke-virtual {v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->getFloatMenu()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_2

    .line 286
    sget-object v4, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatView:Landroid/widget/RelativeLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 289
    :cond_2
    sget-object v4, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->getInstance:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;

    invoke-virtual {v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatMenuItemEnum;->getFloatMenu()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v0    # "item":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;
    .restart local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3    # "menuItem":Landroid/view/ViewGroup;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;
    check-cast v0, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;

    .line 290
    .restart local v0    # "item":Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;
    sget-object v5, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->mContext:Landroid/content/Context;

    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "menuItem":Landroid/view/ViewGroup;
    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 291
    .restart local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    sget v5, Lcom/kunlun/sns/R$layout;->kunlun_fb_float_button_menu_item:I

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 293
    .restart local v3    # "menuItem":Landroid/view/ViewGroup;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->getItemWith()I

    move-result v5

    const/4 v6, -0x1

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 295
    .restart local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    sget-object v5, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    invoke-static {v3, v0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->initFloatMenuItemData(Landroid/view/ViewGroup;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;)V

    goto :goto_1
.end method

.method private static initFloatMenuItemData(Landroid/view/ViewGroup;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;)V
    .locals 5
    .param p0, "menuItemViewGroup"    # Landroid/view/ViewGroup;
    .param p1, "floatMenuItem"    # Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 311
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 312
    .local v0, "icnImageView":Landroid/widget/ImageView;
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->mContext:Landroid/content/Context;

    const-string v3, "drawable"

    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->getPicname()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 315
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 316
    .local v1, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-virtual {p1}, Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;->getMethodName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onMessageCenterLayoutClick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->messageCenterImageView:Landroid/widget/ImageView;

    .line 326
    :cond_0
    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3;

    invoke-direct {v2, p0, p1}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$3;-><init>(Landroid/view/ViewGroup;Lcom/kunlun/sns/channel/facebookCenter/networkInterface_model/user_login/FloatMenuItem;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    return-void
.end method

.method private static initView(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;)V
    .locals 5
    .param p0, "location"    # Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 205
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 206
    .local v0, "layoutInflater":Landroid/view/LayoutInflater;
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->mContext:Landroid/content/Context;

    const-string v2, "layout"

    const-string v3, "kunlun_fb_float_button_layout"

    invoke-static {v1, v2, v3}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    sput-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatView:Landroid/widget/RelativeLayout;

    .line 208
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatView:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->onTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 210
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatView:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "kunlun_fb_right_corner_block"

    invoke-static {v2, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->rigthCornerBlock:Landroid/view/View;

    .line 212
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatView:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "kunlun_fb_float_present_button"

    invoke-static {v2, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sput-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatPresentImageView:Landroid/widget/ImageView;

    .line 214
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatView:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->mContext:Landroid/content/Context;

    const-string v3, "id"

    const-string v4, "kunlun_fb_float_menu_layout"

    invoke-static {v2, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    sput-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatMenuLayout:Landroid/widget/LinearLayout;

    .line 216
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$2;

    invoke-direct {v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$2;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 230
    invoke-static {p0}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->initWindowManager(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;)V

    .line 231
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->initFloatMenu()V

    .line 232
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->closeFloatMenu()V

    .line 234
    return-void
.end method

.method private static initWindowManager(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;)V
    .locals 6
    .param p0, "location"    # Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    .prologue
    const/4 v5, -0x2

    .line 241
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    .line 274
    :goto_0
    return-void

    .line 245
    :cond_0
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    sput-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowManager:Landroid/view/WindowManager;

    .line 247
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    sput-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    .line 250
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 252
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 253
    .local v0, "mtyb":Ljava/lang/String;
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 254
    .local v1, "sdkVersion":I
    const-string v2, "Letv"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2

    .line 255
    :cond_1
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 258
    :cond_2
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 261
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x8

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 265
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->getRL()I

    move-result v3

    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->getTB()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 268
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 269
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 272
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 273
    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;->getY()I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0
.end method

.method private static openFloatMenu(F)V
    .locals 5
    .param p0, "startX"    # F

    .prologue
    const/4 v2, 0x0

    .line 390
    sput p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->oldX:F

    .line 391
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->getShowFloatViewWith()I

    move-result v1

    invoke-static {v1}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->updateFloatViewWith(I)V

    .line 393
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->rigthCornerBlock:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 395
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 399
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatPresentImageView:Landroid/widget/ImageView;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->mContext:Landroid/content/Context;

    const-string v3, "drawable"

    const-string v4, "kunlun_fb_float_left"

    invoke-static {v2, v3, v4}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 401
    const/4 v1, 0x1

    sput-boolean v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->isMenuOpen:Z

    .line 402
    return-void

    .line 396
    :cond_0
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 395
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static removeFloatBttonFromWindow()V
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatView:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 181
    :cond_0
    return-void
.end method

.method public static setDefaultMessageCenterIcon(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->messageCenterImageView:Landroid/widget/ImageView;

    const-string v1, "drawable"

    const-string v2, "kunlun_fb_float_message_center"

    invoke-static {p0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 197
    return-void
.end method

.method public static setNewMessageIcons(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatPresentImageView:Landroid/widget/ImageView;

    const-string v1, "drawable"

    const-string v2, "kunlun_fb_float_new_message"

    invoke-static {p0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 189
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->messageCenterImageView:Landroid/widget/ImageView;

    const-string v1, "drawable"

    const-string v2, "kunlun_fb_float_message_center_new"

    invoke-static {p0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/ResourceUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 190
    return-void
.end method

.method public static setOnFlaotMenuItemClickListener(Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/OnFlaotMenuItemClickListener;)V
    .locals 0
    .param p0, "onFlaotMenuItemClickListener"    # Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/OnFlaotMenuItemClickListener;

    .prologue
    .line 200
    sput-object p0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->onFlaotMenuItemClickListener:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/OnFlaotMenuItemClickListener;

    .line 201
    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "location"    # Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/KunlunSnsLanguageConfigs;->hasInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "\u8bed\u8a00\u5305\u5c1a\u672a\u521d\u59cb\u5316."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_0
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->float_button_state:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;->SHOW:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    if-eq v0, v1, :cond_1

    .line 147
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "\u5f53\u524d\u767b\u5f55\u975eFacebook\u8d26\u53f7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->removeFloatBttonFromWindow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->mContext:Landroid/content/Context;

    .line 157
    invoke-static {p1}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->initView(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;)V

    .line 158
    const-string v0, "kunlun"

    const-string v1, "\u663e\u793a\u60ac\u6d6e\u7a97"

    invoke-static {v0, v1}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatView:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->mContext:Landroid/content/Context;

    .line 157
    invoke-static {p1}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->initView(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;)V

    .line 158
    const-string v0, "kunlun"

    const-string v1, "\u663e\u793a\u60ac\u6d6e\u7a97"

    invoke-static {v0, v1}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatView:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->mContext:Landroid/content/Context;

    .line 157
    invoke-static {p1}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->initView(Lcom/kunlun/sns/channel/facebookCenter/sdkcommand_model/show/FacebookCenterPositionEnum;)V

    .line 158
    const-string v1, "kunlun"

    const-string v2, "\u663e\u793a\u60ac\u6d6e\u7a97"

    invoke-static {v1, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowManager:Landroid/view/WindowManager;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatView:Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    throw v0
.end method

.method private static updateFloatViewWith(I)V
    .locals 3
    .param p0, "newWidth"    # I

    .prologue
    .line 411
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 412
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->floatView:Landroid/widget/RelativeLayout;

    sget-object v2, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;->windowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    return-void
.end method
