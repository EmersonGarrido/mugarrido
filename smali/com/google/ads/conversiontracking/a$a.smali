.class Lcom/google/ads/conversiontracking/a$a;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/conversiontracking/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/ads/conversiontracking/a$b;

.field private final b:Lcom/google/ads/conversiontracking/a$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Lcom/google/ads/conversiontracking/a$b;

    invoke-direct {v0, p1}, Lcom/google/ads/conversiontracking/a$b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/ads/conversiontracking/a$a;->a:Lcom/google/ads/conversiontracking/a$b;

    .line 75
    new-instance v0, Lcom/google/ads/conversiontracking/a$c;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ads/conversiontracking/a$c;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/google/ads/conversiontracking/a$a;->b:Lcom/google/ads/conversiontracking/a$c;

    .line 76
    return-void
.end method


# virtual methods
.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$a;->a:Lcom/google/ads/conversiontracking/a$b;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/ads/conversiontracking/a$a;->b:Lcom/google/ads/conversiontracking/a$c;

    return-object v0
.end method
