.class public Lorg/apache/mina/registry/Service;
.super Ljava/lang/Object;
.source "Service.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final serialVersionUID:J = 0x2d38303737393033L


# instance fields
.field private final address:Ljava/net/SocketAddress;

.field private final name:Ljava/lang/String;

.field private final transportType:Lorg/apache/mina/common/TransportType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/apache/mina/common/TransportType;I)V
    .locals 1

    .line 50
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p3}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/mina/registry/Service;-><init>(Ljava/lang/String;Lorg/apache/mina/common/TransportType;Ljava/net/SocketAddress;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/mina/common/TransportType;Ljava/net/SocketAddress;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 66
    sget-object v0, Lorg/apache/mina/common/TransportType;->VM_PIPE:Lorg/apache/mina/common/TransportType;

    if-ne p2, v0, :cond_1

    instance-of v0, p3, Lorg/apache/mina/protocol/vmpipe/VmPipeAddress;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "VM_PIPE transport type accepts only VmPipeAddress: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 73
    :cond_1
    :goto_0
    iput-object p1, p0, Lorg/apache/mina/registry/Service;->name:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lorg/apache/mina/registry/Service;->transportType:Lorg/apache/mina/common/TransportType;

    .line 75
    iput-object p3, p0, Lorg/apache/mina/registry/Service;->address:Ljava/net/SocketAddress;

    return-void

    .line 64
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "address"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "transportType"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 60
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "name"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 127
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 131
    :catch_0
    new-instance v0, Ljava/lang/InternalError;

    invoke-direct {v0}, Ljava/lang/InternalError;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 114
    :cond_1
    instance-of v2, p1, Lorg/apache/mina/registry/Service;

    if-nez v2, :cond_2

    return v0

    .line 117
    :cond_2
    check-cast p1, Lorg/apache/mina/registry/Service;

    .line 118
    iget-object v2, p0, Lorg/apache/mina/registry/Service;->name:Ljava/lang/String;

    iget-object v3, p1, Lorg/apache/mina/registry/Service;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/apache/mina/registry/Service;->transportType:Lorg/apache/mina/common/TransportType;

    iget-object v3, p1, Lorg/apache/mina/registry/Service;->transportType:Lorg/apache/mina/common/TransportType;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lorg/apache/mina/registry/Service;->address:Ljava/net/SocketAddress;

    iget-object p1, p1, Lorg/apache/mina/registry/Service;->address:Ljava/net/SocketAddress;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method public getAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/mina/registry/Service;->address:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/apache/mina/registry/Service;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTransportType()Lorg/apache/mina/common/TransportType;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/mina/registry/Service;->transportType:Lorg/apache/mina/common/TransportType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/apache/mina/registry/Service;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lorg/apache/mina/registry/Service;->transportType:Lorg/apache/mina/common/TransportType;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/mina/registry/Service;->address:Ljava/net/SocketAddress;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 136
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/mina/registry/Service;->transportType:Lorg/apache/mina/common/TransportType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/mina/registry/Service;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/registry/Service;->address:Ljava/net/SocketAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
