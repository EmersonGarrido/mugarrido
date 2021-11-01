.class public final enum Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;
.super Ljava/lang/Enum;
.source "FloatView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FLOAT_BUTTON_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

.field public static final enum HIDE:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

.field public static final enum SHOW:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v2}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;-><init>(Ljava/lang/String;I)V

    .line 68
    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;->SHOW:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    .line 69
    new-instance v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    const-string v1, "HIDE"

    invoke-direct {v0, v1, v3}, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;-><init>(Ljava/lang/String;I)V

    .line 70
    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;->HIDE:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;->SHOW:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;->HIDE:Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;->ENUM$VALUES:[Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    return-object v0
.end method

.method public static values()[Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;->ENUM$VALUES:[Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    array-length v1, v0

    new-array v2, v1, [Lcom/kunlun/sns/channel/facebookCenter/widget/float_view/FloatView$FLOAT_BUTTON_STATE;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
