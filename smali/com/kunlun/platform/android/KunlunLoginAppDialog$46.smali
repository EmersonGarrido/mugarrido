.class final Lcom/kunlun/platform/android/KunlunLoginAppDialog$46;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunlunLoginAppDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

.field private final synthetic aW:Landroid/widget/LinearLayout;

.field private final synthetic aX:I


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$46;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$46;->aW:Landroid/widget/LinearLayout;

    iput p3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$46;->aX:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$46;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$46;->aW:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$46;->aX:I

    invoke-static {v0, v1, v2}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->g(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/LinearLayout;I)V

    return-void
.end method
