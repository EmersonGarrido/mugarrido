.class Lcom/tianmashikong/tool/TMUtils$4;
.super Ljava/lang/Object;
.source "TMUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/tool/TMUtils;->UploadToFtp(Landroid/app/Activity;[Ljava/io/File;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$del:Ljava/lang/Boolean;

.field private final synthetic val$files:[Ljava/io/File;


# direct methods
.method constructor <init>([Ljava/io/File;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tianmashikong/tool/TMUtils$4;->val$files:[Ljava/io/File;

    iput-object p2, p0, Lcom/tianmashikong/tool/TMUtils$4;->val$del:Ljava/lang/Boolean;

    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 777
    iget-object v5, p0, Lcom/tianmashikong/tool/TMUtils$4;->val$files:[Ljava/io/File;

    array-length v0, v5

    .line 778
    .local v0, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v0, :cond_0

    .line 799
    return-void

    .line 780
    :cond_0
    iget-object v5, p0, Lcom/tianmashikong/tool/TMUtils$4;->val$files:[Ljava/io/File;

    aget-object v2, v5, v3

    .line 782
    .local v2, "f":Ljava/io/File;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    .line 778
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 787
    :cond_2
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->access$3()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->access$4()I

    move-result v7

    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->access$5()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->access$6()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Lcom/tianmashikong/tool/FtpUtil;->Send2Server(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 788
    .local v4, "ok":Z
    const-string v5, "LOG"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u4e0a\u4f20 fps  OK == "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/tianmashikong/tool/TMUtils$4;->val$del:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 790
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 792
    :cond_3
    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 794
    .end local v4    # "ok":Z
    :catch_0
    move-exception v1

    .line 796
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
