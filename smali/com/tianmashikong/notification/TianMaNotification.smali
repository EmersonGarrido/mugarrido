.class public Lcom/tianmashikong/notification/TianMaNotification;
.super Ljava/lang/Object;
.source "TianMaNotification.java"


# instance fields
.field public day:I

.field public endDay:I

.field public endHour:I

.field public endMinute:I

.field public endMonth:I

.field public endSecond:I

.field public endYear:I

.field public entry:Ljava/lang/String;

.field public hour:I

.field public mDesc:Ljava/lang/String;

.field public mInterval:I

.field public mMessage:Ljava/lang/String;

.field public mTodoKey:Ljava/lang/String;

.field public mUserData:Ljava/lang/String;

.field public minute:I

.field public mode:I

.field public month:I

.field public pkg:Ljava/lang/String;

.field public second:I

.field public triggerTime:J

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mMessage:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mDesc:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mUserData:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->entry:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->pkg:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/tianmashikong/notification/TianMaNotification;->mode:I

    .line 21
    iput v1, p0, Lcom/tianmashikong/notification/TianMaNotification;->mInterval:I

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->triggerTime:J

    .line 31
    iput v2, p0, Lcom/tianmashikong/notification/TianMaNotification;->endYear:I

    .line 32
    iput v2, p0, Lcom/tianmashikong/notification/TianMaNotification;->endMonth:I

    .line 33
    iput v2, p0, Lcom/tianmashikong/notification/TianMaNotification;->endDay:I

    .line 34
    iput v2, p0, Lcom/tianmashikong/notification/TianMaNotification;->endHour:I

    .line 35
    iput v2, p0, Lcom/tianmashikong/notification/TianMaNotification;->endMinute:I

    .line 36
    iput v2, p0, Lcom/tianmashikong/notification/TianMaNotification;->endSecond:I

    .line 10
    return-void
.end method


# virtual methods
.method public readFrom(Ljava/io/DataInputStream;)V
    .locals 2
    .param p1, "dis"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mMessage:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mDesc:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mUserData:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->entry:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->pkg:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mode:I

    .line 49
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mInterval:I

    .line 50
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->triggerTime:J

    .line 52
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->year:I

    .line 53
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->month:I

    .line 54
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->day:I

    .line 55
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->hour:I

    .line 56
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->minute:I

    .line 57
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->second:I

    .line 59
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->endYear:I

    .line 60
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->endMonth:I

    .line 61
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->endDay:I

    .line 62
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->endHour:I

    .line 63
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->endMinute:I

    .line 64
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->endSecond:I

    .line 65
    return-void
.end method

.method public writeTo(Ljava/io/DataOutputStream;)V
    .locals 2
    .param p1, "dos"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mTodoKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mUserData:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->entry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 76
    iget v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mode:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->mInterval:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 78
    iget-wide v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->triggerTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 80
    iget v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->year:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->month:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->day:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->hour:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->minute:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->second:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->endYear:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->endMonth:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 89
    iget v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->endDay:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->endHour:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 91
    iget v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->endMinute:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/tianmashikong/notification/TianMaNotification;->endSecond:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 93
    return-void
.end method
