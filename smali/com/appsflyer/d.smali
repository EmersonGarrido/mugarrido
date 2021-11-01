.class final Lcom/appsflyer/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    api = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/d$a;
    }
.end annotation


# static fields
.field private static instance:Lcom/appsflyer/d;


# instance fields
.field private foreground:Z

.field private listener:Lcom/appsflyer/d$a;

.field private paused:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appsflyer/d;->foreground:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsflyer/d;->paused:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsflyer/d;->listener:Lcom/appsflyer/d$a;

    return-void
.end method

.method static synthetic access$000(Lcom/appsflyer/d;)Z
    .locals 1
    .param p0, "x0"    # Lcom/appsflyer/d;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/appsflyer/d;->foreground:Z

    return v0
.end method

.method static synthetic access$002(Lcom/appsflyer/d;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/appsflyer/d;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/appsflyer/d;->foreground:Z

    return p1
.end method

.method static synthetic access$100(Lcom/appsflyer/d;)Z
    .locals 1
    .param p0, "x0"    # Lcom/appsflyer/d;

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/appsflyer/d;->paused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/appsflyer/d;)Lcom/appsflyer/d$a;
    .locals 1
    .param p0, "x0"    # Lcom/appsflyer/d;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/appsflyer/d;->listener:Lcom/appsflyer/d$a;

    return-object v0
.end method

.method public static getInstance()Lcom/appsflyer/d;
    .locals 2

    .prologue
    .line 108
    sget-object v0, Lcom/appsflyer/d;->instance:Lcom/appsflyer/d;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Foreground is not initialised - invoke at least once with parameter init/get"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    sget-object v0, Lcom/appsflyer/d;->instance:Lcom/appsflyer/d;

    return-object v0
.end method

.method public static init(Landroid/app/Application;)Lcom/appsflyer/d;
    .locals 2
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 79
    sget-object v0, Lcom/appsflyer/d;->instance:Lcom/appsflyer/d;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/appsflyer/d;

    invoke-direct {v0}, Lcom/appsflyer/d;-><init>()V

    sput-object v0, Lcom/appsflyer/d;->instance:Lcom/appsflyer/d;

    .line 81
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 82
    sget-object v0, Lcom/appsflyer/d;->instance:Lcom/appsflyer/d;

    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 84
    :cond_0
    sget-object v0, Lcom/appsflyer/d;->instance:Lcom/appsflyer/d;

    return-object v0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 189
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appsflyer/d;->paused:Z

    .line 151
    new-instance v0, Lcom/appsflyer/d$1;

    invoke-direct {v0, p0, p1}, Lcom/appsflyer/d$1;-><init>(Lcom/appsflyer/d;Landroid/app/Activity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 172
    invoke-virtual {v0, v1}, Lcom/appsflyer/d$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 174
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/appsflyer/d;->paused:Z

    .line 135
    iget-boolean v2, p0, Lcom/appsflyer/d;->foreground:Z

    if-nez v2, :cond_0

    move v0, v1

    .line 136
    :cond_0
    iput-boolean v1, p0, Lcom/appsflyer/d;->foreground:Z

    .line 138
    if-eqz v0, :cond_1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/d;->listener:Lcom/appsflyer/d$a;

    invoke-interface {v0, p1}, Lcom/appsflyer/d$a;->onBecameForeground(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    const-string v1, "Listener threw exception! "

    invoke-static {v1, v0}, Lcom/appsflyer/a;->afLogE(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method public final registerListener(Lcom/appsflyer/d$a;)V
    .locals 0
    .param p1, "listener"    # Lcom/appsflyer/d$a;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/appsflyer/d;->listener:Lcom/appsflyer/d$a;

    .line 126
    return-void
.end method
