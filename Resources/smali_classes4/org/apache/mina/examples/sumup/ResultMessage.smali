.class public Lorg/apache/mina/examples/sumup/ResultMessage;
.super Lorg/apache/mina/examples/sumup/AbstractMessage;
.source "ResultMessage.java"


# instance fields
.field private ok:Z

.field private processedResultCode:Z

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lorg/apache/mina/examples/sumup/AbstractMessage;-><init>(I)V

    return-void
.end method

.method private readResultCode(Ljava/nio/ByteBuffer;)Z
    .locals 3

    .line 78
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 80
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    move v2, v0

    :cond_1
    iput-boolean v2, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->ok:Z

    return v0
.end method

.method private readValue(Ljava/nio/ByteBuffer;)Z
    .locals 2

    .line 86
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->value:I

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 42
    iget v0, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->value:I

    return v0
.end method

.method public isOk()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->ok:Z

    return v0
.end method

.method protected readBody(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/gleamynode/netty2/MessageParseException;
        }
    .end annotation

    .line 52
    iget-boolean v0, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->processedResultCode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lorg/apache/mina/examples/sumup/ResultMessage;->readResultCode(Ljava/nio/ByteBuffer;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->processedResultCode:Z

    if-nez v0, :cond_0

    return v1

    .line 59
    :cond_0
    iget-boolean v0, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->ok:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 61
    invoke-direct {p0, p1}, Lorg/apache/mina/examples/sumup/ResultMessage;->readValue(Ljava/nio/ByteBuffer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 63
    iput-boolean v1, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->processedResultCode:Z

    return v2

    :cond_1
    return v1

    .line 71
    :cond_2
    iput-boolean v1, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->processedResultCode:Z

    return v2
.end method

.method public setOk(Z)V
    .locals 0

    .line 37
    iput-boolean p1, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->ok:Z

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 47
    iput p1, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->value:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    iget-boolean v0, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->ok:Z

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/mina/examples/sumup/ResultMessage;->getSequence()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":RESULT("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lorg/apache/mina/examples/sumup/ResultMessage;->getSequence()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":RESULT(ERROR)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeBody(Ljava/nio/ByteBuffer;)Z
    .locals 2

    .line 96
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 100
    :cond_0
    iget-boolean v0, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->ok:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 102
    iget-boolean v0, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->ok:Z

    if-eqz v0, :cond_1

    .line 103
    iget v0, p0, Lorg/apache/mina/examples/sumup/ResultMessage;->value:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :cond_1
    return v1
.end method
