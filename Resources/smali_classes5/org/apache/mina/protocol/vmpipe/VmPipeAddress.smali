.class public Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;
.super Ljava/net/SocketAddress;
.source "VmPipeAddress.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final serialVersionUID:J = 0x2d36303337353033L


# instance fields
.field private final port:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/net/SocketAddress;-><init>()V

    .line 25
    iput p1, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;->port:I

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 58
    iget v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;->port:I

    check-cast p1, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;

    iget p1, p1, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;->port:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 47
    :cond_1
    instance-of v2, p1, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;

    if-eqz v2, :cond_2

    .line 49
    check-cast p1, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;

    .line 50
    iget v2, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;->port:I

    iget p1, p1, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;->port:I

    if-ne v2, p1, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public getPort()I
    .locals 1

    .line 33
    iget v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;->port:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 38
    iget v0, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;->port:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "vm:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
