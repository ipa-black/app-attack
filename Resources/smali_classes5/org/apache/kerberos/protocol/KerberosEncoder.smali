.class public Lorg/apache/kerberos/protocol/KerberosEncoder;
.super Ljava/lang/Object;
.source "KerberosEncoder.java"

# interfaces
.implements Lorg/apache/mina/protocol/ProtocolEncoder;


# instance fields
.field private errorEncoder:Lorg/apache/kerberos/io/encoder/ErrorMessageEncoder;

.field private replyEncoder:Lorg/apache/kerberos/io/encoder/KdcReplyEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lorg/apache/kerberos/io/encoder/KdcReplyEncoder;

    invoke-direct {v0}, Lorg/apache/kerberos/io/encoder/KdcReplyEncoder;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/protocol/KerberosEncoder;->replyEncoder:Lorg/apache/kerberos/io/encoder/KdcReplyEncoder;

    .line 36
    new-instance v0, Lorg/apache/kerberos/io/encoder/ErrorMessageEncoder;

    invoke-direct {v0}, Lorg/apache/kerberos/io/encoder/ErrorMessageEncoder;-><init>()V

    iput-object v0, p0, Lorg/apache/kerberos/protocol/KerberosEncoder;->errorEncoder:Lorg/apache/kerberos/io/encoder/ErrorMessageEncoder;

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

    const/16 p1, 0x400

    .line 41
    invoke-static {p1}, Lorg/apache/mina/common/ByteBuffer;->allocate(I)Lorg/apache/mina/common/ByteBuffer;

    move-result-object p1

    .line 45
    :try_start_0
    instance-of v0, p2, Lorg/apache/kerberos/messages/KdcReply;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lorg/apache/kerberos/protocol/KerberosEncoder;->replyEncoder:Lorg/apache/kerberos/io/encoder/KdcReplyEncoder;

    check-cast p2, Lorg/apache/kerberos/messages/KdcReply;

    invoke-virtual {p1}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/apache/kerberos/io/encoder/KdcReplyEncoder;->encode(Lorg/apache/kerberos/messages/KdcReply;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 51
    :cond_0
    instance-of v0, p2, Lorg/apache/kerberos/messages/ErrorMessage;

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lorg/apache/kerberos/protocol/KerberosEncoder;->errorEncoder:Lorg/apache/kerberos/io/encoder/ErrorMessageEncoder;

    check-cast p2, Lorg/apache/kerberos/messages/ErrorMessage;

    invoke-virtual {p1}, Lorg/apache/mina/common/ByteBuffer;->buf()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/apache/kerberos/io/encoder/ErrorMessageEncoder;->encode(Lorg/apache/kerberos/messages/ErrorMessage;Ljava/nio/ByteBuffer;)V

    .line 57
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/apache/mina/common/ByteBuffer;->flip()Lorg/apache/mina/common/ByteBuffer;

    .line 59
    invoke-interface {p3, p1}, Lorg/apache/mina/protocol/ProtocolEncoderOutput;->write(Lorg/apache/mina/common/ByteBuffer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 63
    :catch_0
    new-instance p1, Lorg/apache/mina/protocol/ProtocolViolationException;

    invoke-direct {p1}, Lorg/apache/mina/protocol/ProtocolViolationException;-><init>()V

    throw p1
.end method
