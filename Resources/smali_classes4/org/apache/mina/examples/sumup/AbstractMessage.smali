.class public abstract Lorg/apache/mina/examples/sumup/AbstractMessage;
.super Ljava/lang/Object;
.source "AbstractMessage.java"

# interfaces
.implements Lnet/gleamynode/netty2/Message;


# instance fields
.field private readHeader:Z

.field private sequence:I

.field private final type:I

.field private wroteHeader:Z


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lorg/apache/mina/examples/sumup/AbstractMessage;->type:I

    return-void
.end method

.method private readHeader(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/gleamynode/netty2/MessageParseException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 71
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 72
    iget v1, p0, Lorg/apache/mina/examples/sumup/AbstractMessage;->type:I

    if-ne v1, v0, :cond_1

    .line 77
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lorg/apache/mina/examples/sumup/AbstractMessage;->sequence:I

    const/4 p1, 0x1

    return p1

    .line 73
    :cond_1
    new-instance p1, Lnet/gleamynode/netty2/MessageParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "type mismatches: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " (expected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/mina/examples/sumup/AbstractMessage;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/gleamynode/netty2/MessageParseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeHeader(Ljava/nio/ByteBuffer;)Z
    .locals 2

    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 112
    :cond_0
    iget v0, p0, Lorg/apache/mina/examples/sumup/AbstractMessage;->type:I

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 113
    iget v0, p0, Lorg/apache/mina/examples/sumup/AbstractMessage;->sequence:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getSequence()I
    .locals 1

    .line 35
    iget v0, p0, Lorg/apache/mina/examples/sumup/AbstractMessage;->sequence:I

    return v0
.end method

.method public final read(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/gleamynode/netty2/MessageParseException;
        }
    .end annotation

    .line 46
    iget-boolean v0, p0, Lorg/apache/mina/examples/sumup/AbstractMessage;->readHeader:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lorg/apache/mina/examples/sumup/AbstractMessage;->readHeader(Ljava/nio/ByteBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/mina/examples/sumup/AbstractMessage;->readHeader:Z

    if-nez v0, :cond_0

    return v1

    .line 54
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/examples/sumup/AbstractMessage;->readBody(Ljava/nio/ByteBuffer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 57
    iput-boolean v1, p0, Lorg/apache/mina/examples/sumup/AbstractMessage;->readHeader:Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method protected abstract readBody(Ljava/nio/ByteBuffer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/gleamynode/netty2/MessageParseException;
        }
    .end annotation
.end method

.method public setSequence(I)V
    .locals 0

    .line 40
    iput p1, p0, Lorg/apache/mina/examples/sumup/AbstractMessage;->sequence:I

    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)Z
    .locals 2

    .line 87
    iget-boolean v0, p0, Lorg/apache/mina/examples/sumup/AbstractMessage;->wroteHeader:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0, p1}, Lorg/apache/mina/examples/sumup/AbstractMessage;->writeHeader(Ljava/nio/ByteBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/mina/examples/sumup/AbstractMessage;->wroteHeader:Z

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/mina/examples/sumup/AbstractMessage;->writeBody(Ljava/nio/ByteBuffer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    iput-boolean v1, p0, Lorg/apache/mina/examples/sumup/AbstractMessage;->wroteHeader:Z

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method protected abstract writeBody(Ljava/nio/ByteBuffer;)Z
.end method
