.class Lcom/tianmashikong/crashtool/CrashHandler$2;
.super Ljava/lang/Thread;
.source "CrashHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/crashtool/CrashHandler;->handleException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tianmashikong/crashtool/CrashHandler;


# direct methods
.method constructor <init>(Lcom/tianmashikong/crashtool/CrashHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tianmashikong/crashtool/CrashHandler$2;->this$0:Lcom/tianmashikong/crashtool/CrashHandler;

    .line 291
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 296
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 297
    iget-object v0, p0, Lcom/tianmashikong/crashtool/CrashHandler$2;->this$0:Lcom/tianmashikong/crashtool/CrashHandler;

    invoke-static {v0}, Lcom/tianmashikong/crashtool/CrashHandler;->access$0(Lcom/tianmashikong/crashtool/CrashHandler;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Sorry, because of exception, will exit !"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 298
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 299
    return-void
.end method
