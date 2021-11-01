.class final Lcom/kunlun/platform/android/Kunlun$6$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun$6$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic p:Landroid/content/Context;

.field private final synthetic z:Lcom/kunlun/platform/android/Kunlun$DialogListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/kunlun/platform/android/Kunlun$DialogListener;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/Kunlun$6$2$2;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$6$2$2;->z:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$6$2$2;->p:Landroid/content/Context;

    const-string v1, "\u672a\u6210\u5e74\u8005\u306e\u30b2\u30fc\u30e0\u30dd\u30a4\u30f3\u30c8\u8cfc\u5165\u306f\u4fdd\u8b77\u8005\u306e\u540c\u610f\u304c\u5fc5\u8981\u306b\u306a\u308a\u307e\u3059\u3002"

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunToastUtil;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/kunlun/platform/android/Kunlun$6$2$2;->z:Lcom/kunlun/platform/android/Kunlun$DialogListener;

    const/4 v1, 0x1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/kunlun/platform/android/Kunlun$DialogListener;->onComplete(ILjava/lang/String;)V

    return-void
.end method
