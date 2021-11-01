.class final Lcom/kunlun/platform/android/kt/KTIAPActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/kt/KTIAPActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic md:Lcom/kunlun/platform/android/kt/KTIAPActivity;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/kt/KTIAPActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity$3;->md:Lcom/kunlun/platform/android/kt/KTIAPActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity$3;->md:Lcom/kunlun/platform/android/kt/KTIAPActivity;

    iget-object v1, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity$3;->md:Lcom/kunlun/platform/android/kt/KTIAPActivity;

    invoke-static {v1}, Lcom/kunlun/platform/android/kt/KTIAPActivity;->d(Lcom/kunlun/platform/android/kt/KTIAPActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/kunlun/platform/android/kt/KTIAPActivity$3;->md:Lcom/kunlun/platform/android/kt/KTIAPActivity;

    invoke-static {v2}, Lcom/kunlun/platform/android/kt/KTIAPActivity;->e(Lcom/kunlun/platform/android/kt/KTIAPActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/kunlun/platform/android/kt/KTIAPActivity;->purchase(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
