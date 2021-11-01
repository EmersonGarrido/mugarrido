.class public Lcom/bluepay/sdk/log/Trace;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bluepay/sdk/log/Trace$CustomLogger;
    }
.end annotation


# static fields
.field private static a:Z = false

.field public static allowD:Z = false

.field public static allowE:Z = false

.field public static allowI:Z = false

.field public static allowV:Z = false

.field public static allowW:Z = false

.field public static allowWtf:Z = false

.field private static final b:Ljava/lang/String; = "BluePay"

.field public static customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

.field public static customTagPrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/bluepay/sdk/log/Trace;->a:Z

    const-string v0, ""

    sput-object v0, Lcom/bluepay/sdk/log/Trace;->customTagPrefix:Ljava/lang/String;

    sput-boolean v1, Lcom/bluepay/sdk/log/Trace;->allowD:Z

    sput-boolean v1, Lcom/bluepay/sdk/log/Trace;->allowE:Z

    sput-boolean v1, Lcom/bluepay/sdk/log/Trace;->allowI:Z

    sput-boolean v1, Lcom/bluepay/sdk/log/Trace;->allowV:Z

    sput-boolean v1, Lcom/bluepay/sdk/log/Trace;->allowW:Z

    sput-boolean v1, Lcom/bluepay/sdk/log/Trace;->allowWtf:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    const-string v0, "%s.%s(L:%d)"

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/bluepay/sdk/log/Trace;->customTagPrefix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/bluepay/sdk/log/Trace;->customTagPrefix:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowD:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    const-string v1, "BluePay"

    invoke-interface {v0, v1, p0}, Lcom/bluepay/sdk/log/Trace$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "BluePay"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowD:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    const-string v1, "BluePay"

    invoke-interface {v0, v1, p0, p1}, Lcom/bluepay/sdk/log/Trace$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v0, "BluePay"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowE:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    const-string v1, "BluePay"

    invoke-interface {v0, v1, p0}, Lcom/bluepay/sdk/log/Trace$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "BluePay"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowE:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    const-string v1, "BluePay"

    invoke-interface {v0, v1, p0, p1}, Lcom/bluepay/sdk/log/Trace$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v0, "BluePay"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getCallerStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getCurrentStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowI:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    const-string v1, "BluePay"

    invoke-interface {v0, v1, p0}, Lcom/bluepay/sdk/log/Trace$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "BluePay"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowI:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    const-string v1, "BluePay"

    invoke-interface {v0, v1, p0, p1}, Lcom/bluepay/sdk/log/Trace$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v0, "BluePay"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static off()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bluepay/sdk/log/Trace;->a:Z

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->a:Z

    sput-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowD:Z

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->a:Z

    sput-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowE:Z

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->a:Z

    sput-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowI:Z

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->a:Z

    sput-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowV:Z

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->a:Z

    sput-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowW:Z

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->a:Z

    sput-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowWtf:Z

    return-void
.end method

.method public static on()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bluepay/sdk/log/Trace;->a:Z

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->a:Z

    sput-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowD:Z

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->a:Z

    sput-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowE:Z

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->a:Z

    sput-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowI:Z

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->a:Z

    sput-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowV:Z

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->a:Z

    sput-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowW:Z

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->a:Z

    sput-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowWtf:Z

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowV:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    const-string v1, "BluePay"

    invoke-interface {v0, v1, p0}, Lcom/bluepay/sdk/log/Trace$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "BluePay"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowV:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    const-string v1, "BluePay"

    invoke-interface {v0, v1, p0, p1}, Lcom/bluepay/sdk/log/Trace$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v0, "BluePay"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowW:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    const-string v1, "BluePay"

    invoke-interface {v0, v1, p0}, Lcom/bluepay/sdk/log/Trace$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "BluePay"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowW:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    const-string v1, "BluePay"

    invoke-interface {v0, v1, p0, p1}, Lcom/bluepay/sdk/log/Trace$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v0, "BluePay"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowW:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    const-string v1, "BluePay"

    invoke-interface {v0, v1, p0}, Lcom/bluepay/sdk/log/Trace$CustomLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v0, "BluePay"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowWtf:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    const-string v1, "BluePay"

    invoke-interface {v0, v1, p0}, Lcom/bluepay/sdk/log/Trace$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "BluePay"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowWtf:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    const-string v1, "BluePay"

    invoke-interface {v0, v1, p0, p1}, Lcom/bluepay/sdk/log/Trace$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v0, "BluePay"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .locals 2

    sget-boolean v0, Lcom/bluepay/sdk/log/Trace;->allowWtf:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bluepay/sdk/log/Trace;->customLogger:Lcom/bluepay/sdk/log/Trace$CustomLogger;

    const-string v1, "BluePay"

    invoke-interface {v0, v1, p0}, Lcom/bluepay/sdk/log/Trace$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const-string v0, "BluePay"

    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
