.class public Lcom/tianmashikong/notification/NetNotification;
.super Ljava/lang/Object;
.source "NetNotification.java"


# instance fields
.field public _content:Ljava/lang/String;

.field public _count:I

.field public _endTime:Ljava/lang/String;

.field public _interval:J

.field public _mode:I

.field public _msgId:Ljava/lang/String;

.field public _startTime:Ljava/lang/String;

.field public _title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/notification/NetNotification;->_startTime:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/notification/NetNotification;->_endTime:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/notification/NetNotification;->_title:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/notification/NetNotification;->_content:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/tianmashikong/notification/NetNotification;->_mode:I

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tianmashikong/notification/NetNotification;->_interval:J

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/tianmashikong/notification/NetNotification;->_count:I

    .line 7
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
    .line 18
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/notification/NetNotification;->_startTime:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/notification/NetNotification;->_endTime:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/notification/NetNotification;->_title:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/notification/NetNotification;->_content:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/NetNotification;->_mode:I

    .line 24
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tianmashikong/notification/NetNotification;->_interval:J

    .line 25
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/tianmashikong/notification/NetNotification;->_count:I

    .line 27
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
    .line 31
    iget-object v0, p0, Lcom/tianmashikong/notification/NetNotification;->_startTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/tianmashikong/notification/NetNotification;->_endTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/tianmashikong/notification/NetNotification;->_title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/tianmashikong/notification/NetNotification;->_content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/tianmashikong/notification/NetNotification;->_msgId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 36
    iget v0, p0, Lcom/tianmashikong/notification/NetNotification;->_mode:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 37
    iget-wide v0, p0, Lcom/tianmashikong/notification/NetNotification;->_interval:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 38
    iget v0, p0, Lcom/tianmashikong/notification/NetNotification;->_count:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 39
    return-void
.end method
