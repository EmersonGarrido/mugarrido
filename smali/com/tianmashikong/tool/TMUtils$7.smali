.class Lcom/tianmashikong/tool/TMUtils$7;
.super Ljava/lang/Object;
.source "TMUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tianmashikong/tool/TMUtils;->startCpuLog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field _m10Count:I

.field _m10Rate:F

.field _m5Count:I

.field _m5Rate:F

.field _totalCount:I

.field _totalRate:F

.field sb:Ljava/lang/StringBuilder;

.field private final synthetic val$CPU_LOG_FILE:Ljava/lang/String;

.field private final synthetic val$pid:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1
    iput p1, p0, Lcom/tianmashikong/tool/TMUtils$7;->val$pid:I

    iput-object p2, p0, Lcom/tianmashikong/tool/TMUtils$7;->val$CPU_LOG_FILE:Ljava/lang/String;

    .line 1048
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/tianmashikong/tool/TMUtils$7;->sb:Ljava/lang/StringBuilder;

    .line 1052
    iput v2, p0, Lcom/tianmashikong/tool/TMUtils$7;->_totalCount:I

    .line 1053
    iput v1, p0, Lcom/tianmashikong/tool/TMUtils$7;->_totalRate:F

    .line 1055
    iput v2, p0, Lcom/tianmashikong/tool/TMUtils$7;->_m5Count:I

    .line 1056
    iput v1, p0, Lcom/tianmashikong/tool/TMUtils$7;->_m5Rate:F

    .line 1058
    iput v2, p0, Lcom/tianmashikong/tool/TMUtils$7;->_m10Count:I

    .line 1059
    iput v1, p0, Lcom/tianmashikong/tool/TMUtils$7;->_m10Rate:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 1066
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->sb:Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "MANUFACTURER:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->sb:Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "PRODUCT:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1068
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->sb:Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "MODE:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->sb:Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "SDK:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->sb:Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->getDeviceTotalMemory()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1071
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->sb:Ljava/lang/StringBuilder;

    const-string v14, "cpu:\r\n"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->sb:Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/tianmashikong/tool/TMUtils;->getDeviceCpuInfo(Ljava/lang/StringBuilder;)V

    .line 1078
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->getTotalCpuTime()J

    move-result-wide v10

    .line 1079
    .local v10, "total":J
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->val$pid:I

    invoke-static {v9}, Lcom/tianmashikong/tool/TMUtils;->getPidCpuTime(I)J

    move-result-wide v4

    .line 1081
    .local v4, "my":J
    const-wide/16 v14, 0x1388

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 1083
    invoke-static {}, Lcom/tianmashikong/tool/TMUtils;->getTotalCpuTime()J

    move-result-wide v12

    .line 1084
    .local v12, "total2":J
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->val$pid:I

    invoke-static {v9}, Lcom/tianmashikong/tool/TMUtils;->getPidCpuTime(I)J

    move-result-wide v6

    .line 1086
    .local v6, "my2":J
    const-wide/16 v14, 0x64

    sub-long v16, v6, v4

    mul-long v14, v14, v16

    sub-long v16, v12, v10

    div-long v14, v14, v16

    long-to-float v2, v14

    .line 1088
    .local v2, "cpurate":F
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_totalCount:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_totalCount:I

    .line 1089
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_totalRate:F

    add-float/2addr v9, v2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_totalRate:F

    .line 1091
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m5Count:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m5Count:I

    .line 1092
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m5Rate:F

    add-float/2addr v9, v2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m5Rate:F

    .line 1094
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m10Count:I

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m10Count:I

    .line 1095
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m10Rate:F

    add-float/2addr v9, v2

    move-object/from16 v0, p0

    iput v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m10Rate:F

    .line 1097
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->sb:Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "% "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m5Count:I

    rem-int/lit8 v9, v9, 0x1e

    if-nez v9, :cond_1

    .line 1099
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->sb:Ljava/lang/StringBuilder;

    const-string v14, "\r\n"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    :cond_1
    const/4 v8, 0x0

    .line 1102
    .local v8, "save":Z
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m5Count:I

    const/16 v14, 0xf

    if-lt v9, v14, :cond_2

    .line 1104
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->sb:Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "\r\n------minutes 1: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m5Rate:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m5Count:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "---------\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m5Count:I

    .line 1106
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m5Rate:F

    .line 1107
    const/4 v8, 0x1

    .line 1110
    :cond_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m10Count:I

    const/16 v14, 0x78

    if-lt v9, v14, :cond_3

    .line 1112
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->sb:Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "------minutes 10: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m10Rate:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m10Count:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "---------\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m10Count:I

    .line 1114
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_m10Rate:F

    .line 1115
    const/4 v8, 0x1

    .line 1118
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_totalCount:I

    const/16 v14, 0x168

    if-lt v9, v14, :cond_4

    .line 1120
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->sb:Ljava/lang/StringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "------minutes 30: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/tianmashikong/tool/TMUtils$7;->_totalRate:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tianmashikong/tool/TMUtils$7;->_totalCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "---------\r\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1121
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_totalCount:I

    .line 1122
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->_totalRate:F

    .line 1123
    const/4 v8, 0x1

    .line 1126
    :cond_4
    if-eqz v8, :cond_0

    .line 1128
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/tianmashikong/tool/TMUtils$7;->val$CPU_LOG_FILE:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tianmashikong/tool/TMUtils$7;->sb:Ljava/lang/StringBuilder;

    invoke-static {v9, v14}, Lcom/tianmashikong/tool/TMUtils;->writeCpuMemLog(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1133
    .end local v2    # "cpurate":F
    .end local v4    # "my":J
    .end local v6    # "my2":J
    .end local v8    # "save":Z
    .end local v10    # "total":J
    .end local v12    # "total2":J
    :catch_0
    move-exception v3

    .line 1135
    .local v3, "e":Ljava/lang/Exception;
    const-wide/16 v14, 0x1388

    :try_start_1
    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v9

    goto/16 :goto_0
.end method
