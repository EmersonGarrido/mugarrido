.class public final Lcom/tianmashikong/MUTools/R$layout;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tianmashikong/MUTools/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "layout"
.end annotation


# static fields
.field public static activity_logo:I

.field public static tianma_notification_layout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/high16 v0, 0x7f030000

    sput v0, Lcom/tianmashikong/MUTools/R$layout;->activity_logo:I

    .line 23
    const v0, 0x7f030001

    sput v0, Lcom/tianmashikong/MUTools/R$layout;->tianma_notification_layout:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
