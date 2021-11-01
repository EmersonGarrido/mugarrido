.class public final Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;
.super Ljava/lang/Object;
.source "SimpleProgressDialog.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "SimpleProgressDialog"

.field private static lastContext:Landroid/content/Context;

.field private static progressDialog:Landroid/app/ProgressDialog;

.field private static referenceCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 12
    const-class v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->$assertionsDisabled:Z

    .line 21
    sput v1, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->referenceCounter:I

    return-void

    :cond_0
    move v0, v1

    .line 12
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method static synthetic access$0()V
    .locals 0

    .prologue
    .line 34
    invoke-static {}, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->reset()V

    return-void
.end method

.method static synthetic access$1()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method public static declared-synchronized dismiss(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-class v1, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->lastContext:Landroid/content/Context;

    if-eq p0, v0, :cond_0

    .line 88
    sget-boolean v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "context != lastContext"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 92
    :cond_0
    :try_start_1
    sget v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->referenceCounter:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->referenceCounter:I

    .line 94
    const-string v0, "SimpleProgressDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8c03\u7528 dismiss(), \u6700\u65b0\u8ba1\u6570\u5668="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->referenceCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    sget-object v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->lastContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    sget v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->referenceCounter:I

    if-lez v0, :cond_1

    sget-object v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_2

    .line 97
    :cond_1
    invoke-static {}, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :cond_2
    monitor-exit v1

    return-void
.end method

.method public static declared-synchronized isShowing()Z
    .locals 2

    .prologue
    .line 107
    const-class v1, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;

    monitor-enter v1

    :try_start_0
    sget v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->referenceCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized reset()V
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->lastContext:Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    sput v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->referenceCounter:I

    .line 37
    sget-object v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 38
    sget-object v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 41
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->progressDialog:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    monitor-exit v1

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized resetByThisContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-class v1, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->lastContext:Landroid/content/Context;

    if-ne p0, v0, :cond_0

    .line 30
    invoke-static {}, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    monitor-exit v1

    return-void

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized show(Landroid/content/Context;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialogCancelDelegate"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 51
    const-class v1, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 52
    :try_start_0
    const-string v0, "SimpleProgressDialog"

    const-string v2, "\u5165\u53c2 context \u4e3a null ! "

    invoke-static {v0, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 56
    :cond_1
    :try_start_1
    sget-object v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->lastContext:Landroid/content/Context;

    if-eq p0, v0, :cond_2

    .line 58
    invoke-static {}, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->reset()V

    .line 61
    :cond_2
    sget v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->referenceCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->referenceCounter:I

    .line 63
    const-string v0, "SimpleProgressDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5728\u7c7b <"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> \u4e2d\u8c03\u7528 show(), \u6700\u65b0\u8ba1\u6570\u5668="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->referenceCounter:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/kunlun/sns/net_engine/toolutils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 66
    const-string v0, "\u7f51\u7edc\u8bbf\u95ee\u4e2d"

    const-string v2, "\u8bf7\u8010\u5fc3\u7b49\u5f85..."

    invoke-static {p0, v0, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    sput-object v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 67
    sget-object v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 68
    sget-object v0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog$1;

    invoke-direct {v2, p1}, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog$1;-><init>(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 79
    sput-object p0, Lcom/kunlun/sns/net_engine/toolutils/SimpleProgressDialog;->lastContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
