.class public final Lcom/facebook/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final CardView:[I

.field public static final CardView_cardBackgroundColor:I = 0x0

.field public static final CardView_cardCornerRadius:I = 0x1

.field public static final CardView_cardElevation:I = 0x2

.field public static final CardView_cardMaxElevation:I = 0x3

.field public static final CardView_cardPreventCornerOverlap:I = 0x5

.field public static final CardView_cardUseCompatPadding:I = 0x4

.field public static final CardView_contentPadding:I = 0x6

.field public static final CardView_contentPaddingBottom:I = 0xa

.field public static final CardView_contentPaddingLeft:I = 0x7

.field public static final CardView_contentPaddingRight:I = 0x8

.field public static final CardView_contentPaddingTop:I = 0x9

.field public static final com_facebook_like_view:[I

.field public static final com_facebook_like_view_com_facebook_auxiliary_view_position:I = 0x4

.field public static final com_facebook_like_view_com_facebook_foreground_color:I = 0x0

.field public static final com_facebook_like_view_com_facebook_horizontal_alignment:I = 0x5

.field public static final com_facebook_like_view_com_facebook_object_id:I = 0x1

.field public static final com_facebook_like_view_com_facebook_object_type:I = 0x2

.field public static final com_facebook_like_view_com_facebook_style:I = 0x3

.field public static final com_facebook_login_view:[I

.field public static final com_facebook_login_view_com_facebook_confirm_logout:I = 0x0

.field public static final com_facebook_login_view_com_facebook_login_text:I = 0x1

.field public static final com_facebook_login_view_com_facebook_logout_text:I = 0x2

.field public static final com_facebook_login_view_com_facebook_tooltip_mode:I = 0x3

.field public static final com_facebook_profile_picture_view:[I

.field public static final com_facebook_profile_picture_view_com_facebook_is_cropped:I = 0x1

.field public static final com_facebook_profile_picture_view_com_facebook_preset_size:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 218
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/R$styleable;->CardView:[I

    .line 230
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/facebook/R$styleable;->com_facebook_like_view:[I

    .line 237
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/facebook/R$styleable;->com_facebook_login_view:[I

    .line 242
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/facebook/R$styleable;->com_facebook_profile_picture_view:[I

    return-void

    .line 218
    :array_0
    .array-data 4
        0x7f010036
        0x7f010037
        0x7f010038
        0x7f010039
        0x7f01003a
        0x7f01003b
        0x7f01003c
        0x7f01003d
        0x7f01003e
        0x7f01003f
        0x7f010040
    .end array-data

    .line 230
    :array_1
    .array-data 4
        0x7f010030
        0x7f010031
        0x7f010032
        0x7f010033
        0x7f010034
        0x7f010035
    .end array-data

    .line 237
    :array_2
    .array-data 4
        0x7f01002a
        0x7f01002b
        0x7f01002c
        0x7f01002d
    .end array-data

    .line 242
    :array_3
    .array-data 4
        0x7f01002e
        0x7f01002f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
