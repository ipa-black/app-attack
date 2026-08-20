.class public Lorg/apache/mina/examples/reverser/TextLineEncoder;
.super Ljava/lang/Object;
.source "TextLineEncoder.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolEncoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lorg/apache/mina/protocol/ProtocolSession;Ljava/lang/Object;Lorg/apache/mina/protocol/ProtocolEncoderOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/mina/protocol/ProtocolViolationException;
        }
    .end annotation

    .line 41
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 v0, 0x100

    if-gt p2, v0, :cond_1

    .line 49
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p2}, Lorg/apache/mina/common/ByteBuffer;->allocate(I)Lorg/apache/mina/common/ByteBuffer;

    move-result-object p2

    const/4 v0, 0x0

    .line 52
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 54
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Lorg/apache/mina/common/ByteBuffer;->put(B)Lorg/apache/mina/common/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p2}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    .line 58
    invoke-interface {p3, p2}, Lorg/apache/mina/protocol/ProtocolEncoderOutput;->write(Lorg/apache/mina/common/ByteBuffer;)V

    return-void

    .line 45
    :cond_1
    new-instance p1, Lorg/apache/mina/protocol/ProtocolViolationException;

    const-string p2, "Cannot encode too long string."

    invoke-direct {p1, p2}, Lorg/apache/mina/protocol/ProtocolViolationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
