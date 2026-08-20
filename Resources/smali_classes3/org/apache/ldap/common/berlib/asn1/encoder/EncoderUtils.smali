.class public Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;
.super Ljava/lang/Object;
.source "EncoderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(I)Lorg/apache/asn1/ber/TupleNode;
    .locals 1

    .line 110
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->INTEGER:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-static {v0, p0}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;I)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-static {v0, p0}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p0

    return-object p0
.end method

.method public static encode(Lorg/apache/asn1/ber/TagEnum;I)Lorg/apache/asn1/ber/TupleNode;
    .locals 2

    .line 123
    new-instance v0, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v0}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    const/4 v1, 0x1

    .line 124
    invoke-virtual {v0, p0, v1}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 125
    invoke-static {p1}, Lorg/apache/asn1/ber/primitives/PrimitiveUtils;->encodeInt(I)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 128
    invoke-virtual {v0, p0}, Lorg/apache/asn1/ber/Tuple;->setLastValueChunk(Ljava/nio/ByteBuffer;)V

    .line 129
    new-instance p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    return-object p0
.end method

.method public static encode(Lorg/apache/asn1/ber/TagEnum;Ljava/lang/String;)Lorg/apache/asn1/ber/TupleNode;
    .locals 2

    .line 61
    new-instance v0, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v0}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    const/4 v1, 0x1

    .line 62
    invoke-virtual {v0, p0, v1}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 65
    invoke-virtual {v0, p0}, Lorg/apache/asn1/ber/Tuple;->setLastValueChunk(Ljava/nio/ByteBuffer;)V

    .line 66
    new-instance p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    return-object p0
.end method

.method public static encode(Lorg/apache/asn1/ber/TagEnum;Z)Lorg/apache/asn1/ber/TupleNode;
    .locals 2

    .line 155
    new-instance v0, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v0}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    const/4 v1, 0x1

    .line 156
    invoke-virtual {v0, p0, v1}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 157
    invoke-static {p1}, Lorg/apache/asn1/ber/primitives/PrimitiveUtils;->encodeBoolean(Z)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 160
    invoke-virtual {v0, p0}, Lorg/apache/asn1/ber/Tuple;->setLastValueChunk(Ljava/nio/ByteBuffer;)V

    .line 161
    new-instance p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    return-object p0
.end method

.method public static encode(Lorg/apache/asn1/ber/TagEnum;[B)Lorg/apache/asn1/ber/TupleNode;
    .locals 2

    .line 92
    new-instance v0, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v0}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, p0, v1}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 94
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 96
    invoke-virtual {v0, p0}, Lorg/apache/asn1/ber/Tuple;->setLastValueChunk(Ljava/nio/ByteBuffer;)V

    .line 97
    new-instance p0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    invoke-direct {p0, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    return-object p0
.end method

.method public static encode(Z)Lorg/apache/asn1/ber/TupleNode;
    .locals 1

    .line 142
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->BOOLEAN:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-static {v0, p0}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;Z)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Lorg/apache/asn1/ber/TupleNode;
    .locals 1

    .line 79
    sget-object v0, Lorg/apache/asn1/ber/primitives/UniversalTag;->OCTET_STRING:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-static {v0, p0}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;[B)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p0

    return-object p0
.end method
