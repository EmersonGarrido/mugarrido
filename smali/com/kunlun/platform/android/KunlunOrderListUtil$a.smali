.class final Lcom/kunlun/platform/android/KunlunOrderListUtil$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kunlun/platform/android/KunlunOrderListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private synthetic bt:Lcom/kunlun/platform/android/KunlunOrderListUtil;


# direct methods
.method private constructor <init>(Lcom/kunlun/platform/android/KunlunOrderListUtil;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil$a;->bt:Lcom/kunlun/platform/android/KunlunOrderListUtil;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kunlun/platform/android/KunlunOrderListUtil;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/kunlun/platform/android/KunlunOrderListUtil$a;-><init>(Lcom/kunlun/platform/android/KunlunOrderListUtil;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil$a;->bt:Lcom/kunlun/platform/android/KunlunOrderListUtil;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->a(Lcom/kunlun/platform/android/KunlunOrderListUtil;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_3

    :cond_0
    invoke-static {}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->bg()I

    move-result v1

    invoke-static {}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->bh()[I

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_1

    if-eqz v2, :cond_1

    array-length v1, v2

    if-gtz v1, :cond_4

    :cond_1
    invoke-static {v0}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->b(I)V

    :cond_2
    :goto_1
    const-string v1, "KunlunOrderListUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doUnFinishedPurchase:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->bg()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v2, :cond_5

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/kunlun/platform/android/KunlunUtil;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/kunlun/platform/android/KunlunUtil;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/kunlun/platform/android/KunlunUtil;->decodeUrl(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "filePath"

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil$a;->bt:Lcom/kunlun/platform/android/KunlunOrderListUtil;

    invoke-virtual {v4, v5}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->platFormPurchase(Landroid/os/Bundle;)Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil$a;->bt:Lcom/kunlun/platform/android/KunlunOrderListUtil;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->b(Lcom/kunlun/platform/android/KunlunOrderListUtil;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil$a;->bt:Lcom/kunlun/platform/android/KunlunOrderListUtil;

    invoke-static {v1}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->b(Lcom/kunlun/platform/android/KunlunOrderListUtil;)Ljava/util/Timer;

    move-result-object v1

    new-instance v3, Lcom/kunlun/platform/android/KunlunOrderListUtil$a;

    iget-object v4, p0, Lcom/kunlun/platform/android/KunlunOrderListUtil$a;->bt:Lcom/kunlun/platform/android/KunlunOrderListUtil;

    invoke-direct {v3, v4}, Lcom/kunlun/platform/android/KunlunOrderListUtil$a;-><init>(Lcom/kunlun/platform/android/KunlunOrderListUtil;)V

    invoke-static {}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->bh()[I

    move-result-object v4

    invoke-static {}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->bg()I

    move-result v5

    add-int/lit8 v6, v5, 0x1

    invoke-static {v6}, Lcom/kunlun/platform/android/KunlunOrderListUtil;->b(I)V

    aget v4, v4, v5

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    :cond_5
    array-length v0, v2

    goto :goto_2
.end method
