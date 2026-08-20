.class public Lorg/apache/mina/protocol/ProtocolViolationException;
.super Ljava/lang/Exception;
.source "ProtocolViolationException.java"


# static fields
.field private static final serialVersionUID:J = 0x3135363438363135L


# instance fields
.field private buffer:Lorg/apache/mina/common/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/apache/mina/common/ByteBuffer;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/mina/protocol/ProtocolViolationException;->buffer:Lorg/apache/mina/common/ByteBuffer;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 75
    invoke-super {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    .line 82
    :cond_0
    iget-object v2, p0, Lorg/apache/mina/protocol/ProtocolViolationException;->buffer:Lorg/apache/mina/common/ByteBuffer;

    if-eqz v2, :cond_2

    .line 84
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const-string v1, " "

    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "(Hexdump: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/mina/protocol/ProtocolViolationException;->buffer:Lorg/apache/mina/common/ByteBuffer;

    invoke-virtual {v1}, Lorg/apache/mina/common/ByteBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public setBuffer(Lorg/apache/mina/common/ByteBuffer;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lorg/apache/mina/protocol/ProtocolViolationException;->buffer:Lorg/apache/mina/common/ByteBuffer;

    return-void
.end method
