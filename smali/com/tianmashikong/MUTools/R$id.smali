.class public final Lcom/tianmashikong/MUTools/R$id;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tianmashikong/MUTools/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "id"
.end annotation


# static fields
.field public static iv_show:I

.field public static menu_settings:I

.field public static tianma_notification_text:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/high16 v0, 0x7f070000

    sput v0, Lcom/tianmashikong/MUTools/R$id;->iv_show:I

    .line 18
    const v0, 0x7f070002

    sput v0, Lcom/tianmashikong/MUTools/R$id;->menu_settings:I

    .line 19
    const v0, 0x7f070001

    sput v0, Lcom/tianmashikong/MUTools/R$id;->tianma_notification_text:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
