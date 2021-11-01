.class final Lcom/kunlun/platform/android/KunlunLoginAppDialog$38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kunlun/platform/widget/WonCheckBox;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

.field private final synthetic bb:Landroid/widget/TextView;

.field private final synthetic bc:Landroid/widget/EditText;

.field private final synthetic bd:Landroid/widget/EditText;

.field private final synthetic bg:Landroid/widget/EditText;

.field private final synthetic bh:Lcom/kunlun/platform/widget/WonCheckBox;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kunlun/platform/widget/WonCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$38;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$38;->bb:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$38;->bc:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$38;->bd:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$38;->bg:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$38;->bh:Lcom/kunlun/platform/widget/WonCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$38;->aU:Lcom/kunlun/platform/android/KunlunLoginAppDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$38;->bb:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$38;->bc:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$38;->bd:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$38;->bg:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunLoginAppDialog$38;->bh:Lcom/kunlun/platform/widget/WonCheckBox;

    invoke-static/range {v0 .. v5}, Lcom/kunlun/platform/android/KunlunLoginAppDialog;->a(Lcom/kunlun/platform/android/KunlunLoginAppDialog;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Lcom/kunlun/platform/widget/WonCheckBox;)V

    const/4 v0, 0x1

    return v0
.end method
