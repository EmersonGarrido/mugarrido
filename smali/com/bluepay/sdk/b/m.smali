.class Lcom/bluepay/sdk/b/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/CharSequence;

.field private final synthetic c:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/bluepay/sdk/b/m;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bluepay/sdk/b/m;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/bluepay/sdk/b/m;->c:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "show loading:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bluepay/sdk/log/Trace;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bluepay/sdk/b/m;->a:Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/bluepay/sdk/b/m;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/sdk/b/m;->a:Landroid/app/Activity;

    const-string v2, "layout"

    const-string v3, "view_loading"

    invoke-static {v1, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v0, p0, Lcom/bluepay/sdk/b/m;->a:Landroid/app/Activity;

    const-string v2, "id"

    const-string v3, "tv_loading"

    invoke-static {v0, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/bluepay/sdk/b/h;->a(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/bluepay/sdk/b/m;->a:Landroid/app/Activity;

    const-string v2, "id"

    const-string v3, "pb_loading"

    invoke-static {v0, v2, v3}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget-object v2, p0, Lcom/bluepay/sdk/b/m;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/bluepay/sdk/b/m;->a:Landroid/app/Activity;

    const-string v4, "anim"

    const-string v5, "loading"

    invoke-static {v3, v4, v5}, Lcom/bluepay/sdk/b/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-static {}, Lcom/bluepay/sdk/b/h;->h()Landroid/widget/TextView;

    move-result-object v0

    iget-object v2, p0, Lcom/bluepay/sdk/b/m;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    sget-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCancelable(Z)V

    sget-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    sget-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/bluepay/sdk/b/m;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object v0, Lcom/bluepay/sdk/b/h;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_0
    invoke-static {}, Lcom/bluepay/sdk/b/h;->h()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/bluepay/sdk/b/m;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
