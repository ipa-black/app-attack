.class Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;
.super Ljava/lang/Object;
.source "BERDigester.java"

# interfaces
.implements Lorg/apache/asn1/ber/BERDecoderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/asn1/ber/digester/BERDigester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DigesterCallback"
.end annotation


# instance fields
.field private final synthetic this$0:Lorg/apache/asn1/ber/digester/BERDigester;


# direct methods
.method constructor <init>(Lorg/apache/asn1/ber/digester/BERDigester;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;->this$0:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulDecoder;Ljava/lang/Object;)V
    .locals 1

    .line 199
    iget-object p1, p0, Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;->this$0:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-static {p1}, Lorg/apache/asn1/ber/digester/BERDigester;->access$200(Lorg/apache/asn1/ber/digester/BERDigester;)Lorg/apache/asn1/ber/digester/Rules;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;->this$0:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-static {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->access$000(Lorg/apache/asn1/ber/digester/BERDigester;)Lorg/apache/commons/collections/primitives/IntStack;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/asn1/ber/digester/Rules;->match(Lorg/apache/commons/collections/primitives/IntStack;)Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/asn1/ber/digester/BERDigester;->access$102(Lorg/apache/asn1/ber/digester/BERDigester;Ljava/util/List;)Ljava/util/List;

    .line 200
    iget-object p1, p0, Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;->this$0:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/digester/BERDigester;->fireFinishEvent()V

    .line 201
    iget-object p1, p0, Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;->this$0:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-static {p1}, Lorg/apache/asn1/ber/digester/BERDigester;->access$000(Lorg/apache/asn1/ber/digester/BERDigester;)Lorg/apache/commons/collections/primitives/IntStack;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/IntStack;->pop()I

    .line 203
    iget-object p1, p0, Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;->this$0:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-static {p1}, Lorg/apache/asn1/ber/digester/BERDigester;->access$000(Lorg/apache/asn1/ber/digester/BERDigester;)Lorg/apache/commons/collections/primitives/IntStack;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/collections/primitives/IntStack;->empty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 205
    iget-object p1, p0, Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;->this$0:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/digester/BERDigester;->getRoot()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/asn1/ber/digester/BERDigester;->access$300(Lorg/apache/asn1/ber/digester/BERDigester;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public lengthDecoded(Lorg/apache/asn1/ber/Tuple;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;->this$0:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getLength()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->fireLengthEvent(I)V

    return-void
.end method

.method public partialValueDecoded(Lorg/apache/asn1/ber/Tuple;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;->this$0:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getLastValueChunk()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->fireValueEvent(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public tagDecoded(Lorg/apache/asn1/ber/Tuple;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;->this$0:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-static {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->access$000(Lorg/apache/asn1/ber/digester/BERDigester;)Lorg/apache/commons/collections/primitives/IntStack;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getRawPrimitiveTag()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/primitives/IntStack;->push(I)I

    .line 163
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;->this$0:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-static {v0}, Lorg/apache/asn1/ber/digester/BERDigester;->access$200(Lorg/apache/asn1/ber/digester/BERDigester;)Lorg/apache/asn1/ber/digester/Rules;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;->this$0:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-static {v2}, Lorg/apache/asn1/ber/digester/BERDigester;->access$000(Lorg/apache/asn1/ber/digester/BERDigester;)Lorg/apache/commons/collections/primitives/IntStack;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/asn1/ber/digester/Rules;->match(Lorg/apache/commons/collections/primitives/IntStack;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/asn1/ber/digester/BERDigester;->access$102(Lorg/apache/asn1/ber/digester/BERDigester;Ljava/util/List;)Ljava/util/List;

    .line 164
    iget-object v0, p0, Lorg/apache/asn1/ber/digester/BERDigester$DigesterCallback;->this$0:Lorg/apache/asn1/ber/digester/BERDigester;

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getId()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->isPrimitive()Z

    move-result v2

    invoke-virtual {p1}, Lorg/apache/asn1/ber/Tuple;->getTypeClass()Lorg/apache/asn1/ber/TypeClass;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/asn1/ber/digester/BERDigester;->fireTagEvent(IZLorg/apache/asn1/ber/TypeClass;)V

    return-void
.end method
