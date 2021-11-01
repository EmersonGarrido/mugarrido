.class public abstract Lcom/bluepay/pay/IPayCallback;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x4ff5d7812fa0a056L    # -2.8238311873990195E-77

    sput-wide v0, Lcom/bluepay/pay/IPayCallback;->serialVersionUID:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFinished(ILcom/bluepay/pay/BlueMessage;)V
.end method
