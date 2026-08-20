.class Lorg/apache/mina/protocol/vmpipe/AnonymousVmPipeAddress;
.super Ljava/net/SocketAddress;
.source "AnonymousVmPipeAddress.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field static final INSTANCE:Lorg/apache/mina/protocol/vmpipe/AnonymousVmPipeAddress;

.field private static final serialVersionUID:J = 0x2d37393835353938L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lorg/apache/mina/protocol/vmpipe/AnonymousVmPipeAddress;

    invoke-direct {v0}, Lorg/apache/mina/protocol/vmpipe/AnonymousVmPipeAddress;-><init>()V

    sput-object v0, Lorg/apache/mina/protocol/vmpipe/AnonymousVmPipeAddress;->INSTANCE:Lorg/apache/mina/protocol/vmpipe/AnonymousVmPipeAddress;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/mina/protocol/vmpipe/AnonymousVmPipeAddress;->hashCode()I

    move-result v0

    check-cast p1, Lorg/apache/mina/protocol/vmpipe/AnonymousVmPipeAddress;

    invoke-virtual {p1}, Lorg/apache/mina/protocol/vmpipe/AnonymousVmPipeAddress;->hashCode()I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 38
    :cond_1
    instance-of p1, p1, Lorg/apache/mina/protocol/vmpipe/AnonymousVmPipeAddress;

    return p1
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x5561f474

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "vm:anonymous"

    return-object v0
.end method
