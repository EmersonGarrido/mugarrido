.class final Lcom/kunlun/platform/android/KunlunDownloadManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kunlun/platform/android/KunlunDownloadManager;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic L:Ljava/lang/String;

.field private final synthetic M:Ljava/lang/String;

.field private final synthetic O:Ljava/lang/String;

.field private final synthetic P:Ljava/lang/String;

.field private synthetic au:Lcom/kunlun/platform/android/KunlunDownloadManager;

.field private final synthetic av:Ljava/lang/String;

.field private final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/kunlun/platform/android/KunlunDownloadManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$3;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    iput-object p2, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$3;->p:Landroid/content/Context;

    iput-object p3, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$3;->L:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$3;->M:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$3;->av:Ljava/lang/String;

    iput-object p6, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$3;->O:Ljava/lang/String;

    iput-object p7, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$3;->P:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$3;->au:Lcom/kunlun/platform/android/KunlunDownloadManager;

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$3;->p:Landroid/content/Context;

    iget-object v2, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$3;->L:Ljava/lang/String;

    iget-object v3, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$3;->M:Ljava/lang/String;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$3;->av:Ljava/lang/String;

    iget-object v5, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$3;->O:Ljava/lang/String;

    iget-object v6, p0, Lcom/kunlun/platform/android/KunlunDownloadManager$3;->P:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/kunlun/platform/android/KunlunDownloadManager;->a(Lcom/kunlun/platform/android/KunlunDownloadManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
