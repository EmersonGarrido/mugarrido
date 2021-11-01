.class final Lcom/kunlun/platform/android/KunlunUser$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunlunUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic bR:I

.field private synthetic cN:Lcom/kunlun/platform/android/KunlunUser;

.field private final synthetic cO:Landroid/content/SharedPreferences;

.field private final synthetic cP:Ljava/io/File;

.field private final synthetic cQ:I

.field private final synthetic cR:I

.field private final synthetic p:Landroid/content/Context;

.field private final synthetic y:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunUser;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;IILandroid/content/SharedPreferences;I)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunUser$2;->cN:Lcom/kunlun/platform/android/KunlunUser;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunUser$2;->cP:Ljava/io/File;

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunUser$2;->p:Landroid/content/Context;

    iput-object p4, p0, Lcom/kunlun/platform/android/KunlunUser$2;->y:Ljava/lang/String;

    iput p5, p0, Lcom/kunlun/platform/android/KunlunUser$2;->bR:I

    iput p6, p0, Lcom/kunlun/platform/android/KunlunUser$2;->cQ:I

    iput-object p7, p0, Lcom/kunlun/platform/android/KunlunUser$2;->cO:Landroid/content/SharedPreferences;

    iput p8, p0, Lcom/kunlun/platform/android/KunlunUser$2;->cR:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/kunlun/platform/android/KunlunUser$2;)Lcom/kunlun/platform/android/KunlunUser;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$2;->cN:Lcom/kunlun/platform/android/KunlunUser;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$2;->cP:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/kunlun/platform/android/KunLunLoginDialog;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$2;->p:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunUser$2;->cP:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/kunlun/platform/android/KunLunLoginDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/kunlun/platform/android/KunlunUser$2$1;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunUser$2;->cO:Landroid/content/SharedPreferences;

    iget v3, p0, Lcom/kunlun/platform/android/KunlunUser$2;->cR:I

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunUser$2;->p:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/kunlun/platform/android/KunlunUser$2$1;-><init>(Lcom/kunlun/platform/android/KunlunUser$2;Landroid/content/SharedPreferences;ILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/kunlun/platform/android/KunLunLoginDialog;->showDialog(Lcom/kunlun/platform/android/Kunlun$DialogListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunUser$2;->cN:Lcom/kunlun/platform/android/KunlunUser;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunUser$2;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunUser$2;->y:Ljava/lang/String;

    iget v3, p0, Lcom/kunlun/platform/android/KunlunUser$2;->bR:I

    iget v4, p0, Lcom/kunlun/platform/android/KunlunUser$2;->cQ:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/kunlun/platform/android/KunlunUser;->a(Lcom/kunlun/platform/android/KunlunUser;Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0
.end method
