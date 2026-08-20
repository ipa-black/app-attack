.class public Lorg/apache/mina/examples/sumup/SumUpMessageRecognizer;
.super Ljava/lang/Object;
.source "SumUpMessageRecognizer.java"

# interfaces
.implements Lnet/gleamynode/netty2/MessageRecognizer;


# static fields
.field public static final CLIENT_MODE:I = 0x1

.field public static final SERVER_MODE:I = 0x2


# instance fields
.field private mode:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "invalid mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    :goto_0
    iput p1, p0, Lorg/apache/mina/examples/sumup/SumUpMessageRecognizer;->mode:I

    return-void
.end method


# virtual methods
.method public recognize(Ljava/nio/ByteBuffer;)Lnet/gleamynode/netty2/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/gleamynode/netty2/MessageParseException;
        }
    .end annotation

    .line 45
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p1

    .line 49
    iget v0, p0, Lorg/apache/mina/examples/sumup/SumUpMessageRecognizer;->mode:I

    const-string v2, "unknown type: "

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-ne v0, v1, :cond_2

    if-ne p1, v3, :cond_1

    .line 56
    new-instance p1, Lorg/apache/mina/examples/sumup/AddMessage;

    invoke-direct {p1}, Lorg/apache/mina/examples/sumup/AddMessage;-><init>()V

    return-object p1

    .line 58
    :cond_1
    new-instance v0, Lnet/gleamynode/netty2/MessageParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/gleamynode/netty2/MessageParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    new-instance p1, Ljava/lang/InternalError;

    invoke-direct {p1}, Ljava/lang/InternalError;-><init>()V

    throw p1

    :cond_3
    if-nez p1, :cond_4

    .line 65
    new-instance p1, Lorg/apache/mina/examples/sumup/ResultMessage;

    invoke-direct {p1}, Lorg/apache/mina/examples/sumup/ResultMessage;-><init>()V

    return-object p1

    .line 67
    :cond_4
    new-instance v0, Lnet/gleamynode/netty2/MessageParseException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/gleamynode/netty2/MessageParseException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
