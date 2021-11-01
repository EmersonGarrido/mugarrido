.class final Lcom/kunlun/platform/android/KunlunUser$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kunlun/platform/android/Kunlun$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunUser$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic cO:Landroid/content/SharedPreferences;

.field private final synthetic cR:I

.field private synthetic cS:Lcom/kunlun/platform/android/KunlunUser$2;

.field private final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunUser$2;Landroid/content/SharedPreferences;ILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunUser$2$1;->cS:Lcom/kunlun/platform/android/KunlunUser$2;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunUser$2$1;->cO:Landroid/content/SharedPreferences;

    iput p3, p0, Lcom/kunlun/platform/android/KunlunUser$2$1;->cR:I

    iput-object p4, p0, Lcom/kunlun/platform/android/KunlunUser$2$1;->p:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$2$1;->cO:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_start_times"

    iget v2, p0, Lcom/kunlun/platform/android/KunlunUser$2$1;->cR:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$2$1;->cS:Lcom/kunlun/platform/android/KunlunUser$2;

    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunUser$2;->a(Lcom/kunlun/platform/android/KunlunUser$2;)Lcom/kunlun/platform/android/KunlunUser;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$2$1;->p:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunlunUser;->n(Landroid/content/Context;)V

    return-void
.end method
