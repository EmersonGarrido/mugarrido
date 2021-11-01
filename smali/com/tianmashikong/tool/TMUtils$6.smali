.class Lcom/tianmashikong/tool/TMUtils$6;
.super Ljava/lang/Object;
.source "TMUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/tool/TMUtils;->startMemLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field MEM_LOG_FILE:Ljava/lang/String;

.field _m1Count:J

.field _m1USS:J

.field _maxUSS:J

.field _totalCount:J

.field _totalUSS:J

.field private final synthetic val$am:Landroid/app/ActivityManager;

.field private final synthetic val$pid:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/app/ActivityManager;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 1
    iput p3, p0, Lcom/tianmashikong/tool/TMUtils$6;->val$pid:I

    iput-object p4, p0, Lcom/tianmashikong/tool/TMUtils$6;->val$am:Landroid/app/ActivityManager;

    .line 923
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    iput-wide v0, p0, Lcom/tianmashikong/tool/TMUtils$6;->_maxUSS:J

    .line 927
    iput-wide v0, p0, Lcom/tianmashikong/tool/TMUtils$6;->_totalUSS:J

    .line 928
    iput-wide v0, p0, Lcom/tianmashikong/tool/TMUtils$6;->_totalCount:J

    .line 930
    iput-wide v0, p0, Lcom/tianmashikong/tool/TMUtils$6;->_m1USS:J

    .line 931
    iput-wide v0, p0, Lcom/tianmashikong/tool/TMUtils$6;->_m1Count:J

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/tool/TMUtils$6;->MEM_LOG_FILE:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 939
    const/4 v5, 0x1

    new-array v2, v5, [I

    const/4 v5, 0x0

    iget v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->val$pid:I

    aput v8, v2, v5

    .line 941
    .local v2, "pids":[I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 942
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "MANUFACTURER:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "PRODUCT:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "MODE:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "SDK:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\r\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->getDeviceTotalMemory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    const-string v5, "cpu:\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 948
    invoke-static {v4}, Lcom/tianmashikong/tool/TMUtils;->getDeviceCpuInfo(Ljava/lang/StringBuilder;)V

    .line 954
    :cond_0
    :goto_0
    const-wide/16 v8, 0x5dc

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 956
    iget-object v5, p0, Lcom/tianmashikong/tool/TMUtils$6;->val$am:Landroid/app/ActivityManager;

    invoke-virtual {v5, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 958
    .local v1, "infos":[Landroid/os/Debug$MemoryInfo;
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-virtual {v5}, Landroid/os/Debug$MemoryInfo;->getTotalPrivateDirty()I

    move-result v5

    int-to-long v6, v5

    .line 959
    .local v6, "uss":J
    iget-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_maxUSS:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 961
    iput-wide v6, p0, Lcom/tianmashikong/tool/TMUtils$6;->_maxUSS:J

    .line 964
    :cond_1
    iget-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_totalCount:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_totalCount:J

    .line 965
    iget-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_totalUSS:J

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_totalUSS:J

    .line 967
    iget-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_m1USS:J

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_m1USS:J

    .line 968
    iget-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_m1Count:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_m1Count:J

    .line 970
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "KB "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    iget-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_m1Count:J

    const-wide/16 v10, 0x1e

    rem-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-nez v5, :cond_2

    .line 972
    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    :cond_2
    const/4 v3, 0x0

    .line 975
    .local v3, "save":Z
    iget-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_m1Count:J

    const-wide/16 v10, 0x28

    cmp-long v5, v8, v10

    if-ltz v5, :cond_3

    .line 977
    const-string v5, "\r\n-----minutes 1:%s, max:%s \r\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/tianmashikong/tool/TMUtils$6;->_m1USS:J

    iget-wide v12, p0, Lcom/tianmashikong/tool/TMUtils$6;->_m1Count:J

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-wide v10, p0, Lcom/tianmashikong/tool/TMUtils$6;->_maxUSS:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_m1USS:J

    .line 979
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_m1Count:J

    .line 980
    const/4 v3, 0x1

    .line 983
    :cond_3
    iget-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_totalCount:J

    const-wide/16 v10, 0x258

    cmp-long v5, v8, v10

    if-ltz v5, :cond_4

    .line 985
    const-string v5, "-----minutes 15:%s, max:%s \r\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-wide v10, p0, Lcom/tianmashikong/tool/TMUtils$6;->_totalUSS:J

    iget-wide v12, p0, Lcom/tianmashikong/tool/TMUtils$6;->_totalCount:J

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-wide v10, p0, Lcom/tianmashikong/tool/TMUtils$6;->_maxUSS:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 986
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_totalCount:J

    .line 987
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/tianmashikong/tool/TMUtils$6;->_totalUSS:J

    .line 988
    const/4 v3, 0x1

    .line 991
    :cond_4
    if-eqz v3, :cond_0

    .line 993
    iget-object v5, p0, Lcom/tianmashikong/tool/TMUtils$6;->MEM_LOG_FILE:Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/tianmashikong/tool/TMUtils;->writeCpuMemLog(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 998
    .end local v1    # "infos":[Landroid/os/Debug$MemoryInfo;
    .end local v3    # "save":Z
    .end local v6    # "uss":J
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method
