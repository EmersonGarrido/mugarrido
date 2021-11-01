.class final Lcom/kunlun/platform/android/Kunlun$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->a(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic p:Landroid/content/Context;

.field private final synthetic z:Lcom/kunlun/platform/android/Kunlun$DialogListener;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/Kunlun$DialogListener;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$6;->z:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$6;->p:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v3, 0x0

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getLocation()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$6;->z:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    const-string v1, "0"

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$6;->p:Landroid/content/Context;

    const-string v1, "KUNLUN_USER_AGE"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/kunlun/platform/android/Kunlun;->getUserId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$6;->z:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/kunlun/platform/widget/KunlunDialog;

    iget-object v2, p0, Lcom/kunlun/platform/android/Kunlun$6;->p:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;-><init>(Landroid/content/Context;)V

    const-string v2, "\u5e74\u9f62\u78ba\u8a8d"

    invoke-virtual {v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "\u672a\u6210\u5e74\u306e\u304a\u5ba2\u69d8\u306f\u3001\u30b3\u30a4\u30f3\u306e\u8cfc\u5165\u306b\u3064\u3044\u3066\u4fdd\u8b77\u8005\u306e\u540c\u610f\u304c\u5fc5\u8981\u3067\u3059\u3002\n\u3042\u306a\u305f\u306f20\u6b73\u4ee5\u4e0a\u3067\u3059\u304b\uff1f"

    invoke-virtual {v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-string v2, "\u306f\u3044"

    new-instance v3, Lcom/kunlun/platform/android/Kunlun$6$1;

    iget-object v4, p0, Lcom/kunlun/platform/android/Kunlun$6;->z:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    invoke-direct {v3, v0, v4}, Lcom/kunlun/platform/android/Kunlun$6$1;-><init>(Landroid/content/SharedPreferences;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    invoke-virtual {v1, v2, v3}, Lcom/kunlun/platform/widget/KunlunDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v2, "\u3044\u3044\u3048"

    new-instance v3, Lcom/kunlun/platform/android/Kunlun$6$2;

    iget-object v4, p0, Lcom/kunlun/platform/android/Kunlun$6;->p:Landroid/content/Context;

    iget-object v5, p0, Lcom/kunlun/platform/android/Kunlun$6;->z:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    invoke-direct {v3, v4, v0, v5}, Lcom/kunlun/platform/android/Kunlun$6$2;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    invoke-virtual {v1, v2, v3}, Lcom/kunlun/platform/widget/KunlunDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v1}, Lcom/kunlun/platform/widget/KunlunDialog;->show()V

    goto :goto_0
.end method
