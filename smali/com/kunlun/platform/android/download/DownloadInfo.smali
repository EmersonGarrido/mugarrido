.class public Lcom/kunlun/platform/android/download/DownloadInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private appName:Ljava/lang/String;

.field private dX:J

.field private dY:J

.field private dZ:I

.field private downloadUrl:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private totalSize:J

.field private userId:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->appName:Ljava/lang/String;

    iput-object p2, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->versionCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->versionName:Ljava/lang/String;

    iput-object p5, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    iput-wide p6, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->totalSize:J

    iput-wide p8, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->dX:J

    iput-wide p10, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->dY:J

    iput-object p12, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->userId:Ljava/lang/String;

    iput p13, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->dZ:I

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCompeleteSize()J
    .locals 2

    iget-wide v0, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->dX:J

    return-wide v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSend()I
    .locals 1

    iget v0, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->dZ:I

    return v0
.end method

.method public getLastModified()J
    .locals 2

    iget-wide v0, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->dY:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()J
    .locals 2

    iget-wide v0, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->totalSize:J

    return-wide v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->appName:Ljava/lang/String;

    return-void
.end method

.method public setCompeleteSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->dX:J

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsSend(I)V
    .locals 0

    iput p1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->dZ:I

    return-void
.end method

.method public setLastModified(J)V
    .locals 1

    iput-wide p1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->dY:J

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setTotalSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->totalSize:J

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->userId:Ljava/lang/String;

    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->versionCode:Ljava/lang/String;

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->versionName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DownloadInfo [appName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", versionName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", downloadUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", totalSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->totalSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", compeleteSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->dX:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastModified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->dY:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/kunlun/platform/android/download/DownloadInfo;->dZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
