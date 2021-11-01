.class final Lcom/kunlun/platform/android/Kunlun$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/Kunlun;->downloadApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/kunlun/platform/android/Kunlun$DownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic J:Z

.field private final synthetic K:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

.field private final synthetic L:Ljava/lang/String;

.field private final synthetic M:Ljava/lang/String;

.field private final synthetic N:I

.field private final synthetic O:Ljava/lang/String;

.field private final synthetic P:Ljava/lang/String;

.field private final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(ZLcom/kunlun/platform/android/Kunlun$DownloadListener;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/kunlun/platform/android/Kunlun$16;->J:Z

    iput-object p2, p0, Lcom/kunlun/platform/android/Kunlun$16;->K:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    iput-object p3, p0, Lcom/kunlun/platform/android/Kunlun$16;->p:Landroid/content/Context;

    iput-object p4, p0, Lcom/kunlun/platform/android/Kunlun$16;->L:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/Kunlun$16;->M:Ljava/lang/String;

    iput p6, p0, Lcom/kunlun/platform/android/Kunlun$16;->N:I

    iput-object p7, p0, Lcom/kunlun/platform/android/Kunlun$16;->O:Ljava/lang/String;

    iput-object p8, p0, Lcom/kunlun/platform/android/Kunlun$16;->P:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const/4 v3, 0x0

    invoke-static {}, Lcom/kunlun/platform/android/KunlunDownloadManager;->getInstance()Lcom/kunlun/platform/android/KunlunDownloadManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/kunlun/platform/android/Kunlun$16;->J:Z

    iget-object v2, p0, Lcom/kunlun/platform/android/Kunlun$16;->K:Lcom/kunlun/platform/android/Kunlun$DownloadListener;

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/kunlun/platform/android/KunlunDownloadManager;->init(ZZZLcom/kunlun/platform/android/Kunlun$DownloadListener;)Lcom/kunlun/platform/android/KunlunDownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/Kunlun$16;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/kunlun/platform/android/Kunlun$16;->L:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/Kunlun$16;->M:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/kunlun/platform/android/Kunlun$16;->N:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/kunlun/platform/android/Kunlun$16;->O:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/kunlun/platform/android/Kunlun$16;->P:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/kunlun/platform/android/KunlunDownloadManager;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
