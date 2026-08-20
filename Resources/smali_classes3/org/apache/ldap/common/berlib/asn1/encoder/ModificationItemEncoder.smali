.class public Lorg/apache/ldap/common/berlib/asn1/encoder/ModificationItemEncoder;
.super Ljava/lang/Object;
.source "ModificationItemEncoder.java"


# static fields
.field public static final INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/ModificationItemEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/encoder/ModificationItemEncoder;

    invoke-direct {v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/ModificationItemEncoder;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/berlib/asn1/encoder/ModificationItemEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/ModificationItemEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLdapModOp(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    return v0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized JNDI ModificationItem operation"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public encode(Ljavax/naming/directory/ModificationItem;)Lorg/apache/asn1/ber/TupleNode;
    .locals 4

    .line 61
    new-instance v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v1, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v1}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 63
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 64
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 66
    sget-object v1, Lorg/apache/asn1/ber/primitives/UniversalTag;->ENUMERATED:Lorg/apache/asn1/ber/primitives/UniversalTag;

    invoke-virtual {p1}, Ljavax/naming/directory/ModificationItem;->getModificationOp()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/apache/ldap/common/berlib/asn1/encoder/ModificationItemEncoder;->getLdapModOp(I)I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/ldap/common/berlib/asn1/encoder/EncoderUtils;->encode(Lorg/apache/asn1/ber/TagEnum;I)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 69
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 70
    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    .line 72
    sget-object v1, Lorg/apache/ldap/common/berlib/asn1/encoder/AttributeEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/AttributeEncoder;

    invoke-virtual {p1}, Ljavax/naming/directory/ModificationItem;->getAttribute()Ljavax/naming/directory/Attribute;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/ldap/common/berlib/asn1/encoder/AttributeEncoder;->encode(Ljavax/naming/directory/Attribute;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object p1

    check-cast p1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 74
    invoke-virtual {v0, p1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 75
    invoke-virtual {p1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    return-object v0
.end method
