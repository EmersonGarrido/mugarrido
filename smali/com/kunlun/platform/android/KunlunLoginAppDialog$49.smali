.class final Lcom/kunlun/platform/android/KunlunLoginAppDialog$49;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

.field private final synthetic bj:Landroid/widget/TextView;

.field private final synthetic bk:Landroid/widget/EditText;

.field private final synthetic bl:Landroid/widget/EditText;

.field private final synthetic bm:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$49;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$49;->bj:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$49;->bk:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$49;->bl:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$49;->bm:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$49;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$49;->bj:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$49;->bk:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$49;->bl:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$49;->bm:Landroid/widget/EditText;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V

    const/4 v0, 0x1

    return v0
.end method
