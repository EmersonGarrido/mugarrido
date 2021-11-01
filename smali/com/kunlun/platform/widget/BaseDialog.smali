.class public Lcom/kunlun/platform/widget/BaseDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz p1, :cond_2

    const/16 v0, 0xe

    if-lt v1, v0, :cond_2

    const/4 v0, 0x2

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/16 v0, 0x706

    :cond_0
    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    or-int/lit16 v0, v0, 0x1000

    :cond_1
    invoke-virtual {p0}, Lcom/kunlun/platform/widget/BaseDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    return-void
.end method
