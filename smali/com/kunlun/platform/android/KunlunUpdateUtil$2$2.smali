.class final Lcom/kunlun/platform/android/KunlunUpdateUtil$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunUpdateUtil$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bB()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, -0x1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->bC()Lcom/kunlun/platform/android/KunlunLang;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kunlun/platform/android/KunlunLang;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kunlun/platform/android/KunlunUpdateUtil;->a(ILjava/lang/String;)V

    return-void
.end method
