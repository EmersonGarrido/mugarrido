.class final Lcom/kunlun/platform/android/Kunlun$6$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic A:Landroid/content/SharedPreferences;

.field private final synthetic p:Landroid/content/Context;

.field private final synthetic z:Lcom/kunlun/platform/android/Kunlun$DialogListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$6$2;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$6$2;->A:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/kunlun/platform/android/Kunlun$6$2;->z:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    new-instance v0, Lcom/kunlun/platform/widget/KunlunDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$6$2;->p:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/kunlun/platform/widget/KunlunDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "\u672c\u30b2\u30fc\u30e0\u306e\u30b2\u30fc\u30e0\u30dd\u30a4\u30f3\u30c8\u8cfc\u5165\u306b\u3064\u3044\u3066\u3001\u4fdd\u8b77\u8005\u306e\u65b9\u306e\u540c\u610f\u3092\u5f97\u3066\u3044\u307e\u3059\u304b\uff1f"

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/widget/KunlunDialog;->setMessage(Ljava/lang/CharSequence;)V

    const-string v1, "\u306f\u3044"

    new-instance v2, Lcom/kunlun/platform/android/Kunlun$6$2$1;

    iget-object v3, p0, Lcom/kunlun/platform/android/Kunlun$6$2;->A:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/kunlun/platform/android/Kunlun$6$2;->z:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    invoke-direct {v2, v3, v4}, Lcom/kunlun/platform/android/Kunlun$6$2$1;-><init>(Landroid/content/SharedPreferences;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v1, "\u3044\u3044\u3048"

    new-instance v2, Lcom/kunlun/platform/android/Kunlun$6$2$2;

    iget-object v3, p0, Lcom/kunlun/platform/android/Kunlun$6$2;->p:Landroid/content/Context;

    iget-object v4, p0, Lcom/kunlun/platform/android/Kunlun$6$2;->z:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    invoke-direct {v2, v3, v4}, Lcom/kunlun/platform/android/Kunlun$6$2$2;-><init>(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/widget/KunlunDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/kunlun/platform/widget/KunlunDialog;->show()V

    return-void
.end method
