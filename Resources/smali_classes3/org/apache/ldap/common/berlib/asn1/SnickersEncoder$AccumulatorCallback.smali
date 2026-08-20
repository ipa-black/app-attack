.class Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;
.super Ljava/lang/Object;
.source "SnickersEncoder.java"

# interfaces
.implements Lorg/apache/asn1/codec/stateful/EncoderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccumulatorCallback"
.end annotation


# instance fields
.field accumulator:Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

.field private final synthetic this$0:Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;


# direct methods
.method constructor <init>(Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;->this$0:Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;

    .line 157
    new-instance p1, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    invoke-direct {p1}, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;->accumulator:Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    return-void
.end method


# virtual methods
.method public encodeOccurred(Lorg/apache/asn1/codec/stateful/StatefulEncoder;Ljava/lang/Object;)V
    .locals 2

    .line 167
    instance-of p1, p2, [Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_1

    .line 169
    check-cast p2, [Ljava/nio/ByteBuffer;

    const/4 p1, 0x0

    .line 171
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 173
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;->accumulator:Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    aget-object v1, p2, p1

    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->fill(Ljava/nio/ByteBuffer;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 179
    :cond_1
    iget-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;->accumulator:Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    check-cast p2, Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p2}, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->fill(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method getEncoded()Ljava/nio/ByteBuffer;
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder$AccumulatorCallback;->accumulator:Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/digester/rules/ByteAccumulator;->drain()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
