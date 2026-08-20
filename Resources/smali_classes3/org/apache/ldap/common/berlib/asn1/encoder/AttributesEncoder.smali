.class public Lorg/apache/ldap/common/berlib/asn1/encoder/AttributesEncoder;
.super Ljava/lang/Object;
.source "AttributesEncoder.java"


# static fields
.field public static final INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/AttributesEncoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/encoder/AttributesEncoder;

    invoke-direct {v0}, Lorg/apache/ldap/common/berlib/asn1/encoder/AttributesEncoder;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/berlib/asn1/encoder/AttributesEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/AttributesEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljavax/naming/directory/Attributes;)Lorg/apache/asn1/ber/TupleNode;
    .locals 4

    .line 50
    new-instance v0, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    new-instance v1, Lorg/apache/asn1/ber/Tuple;

    invoke-direct {v1}, Lorg/apache/asn1/ber/Tuple;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;-><init>(Lorg/apache/asn1/ber/Tuple;)V

    .line 52
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    sget-object v2, Lorg/apache/asn1/ber/primitives/UniversalTag;->SEQUENCE_SEQUENCE_OF:Lorg/apache/asn1/ber/primitives/UniversalTag;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/asn1/ber/Tuple;->setTag(Lorg/apache/asn1/ber/TagEnum;Z)V

    .line 53
    invoke-virtual {v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->getTuple()Lorg/apache/asn1/ber/Tuple;

    move-result-object v1

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Lorg/apache/asn1/ber/Tuple;->setLength(I)V

    .line 55
    invoke-interface {p1}, Ljavax/naming/directory/Attributes;->getAll()Ljavax/naming/NamingEnumeration;

    move-result-object p1

    .line 56
    :goto_0
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-interface {p1}, Ljavax/naming/NamingEnumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/naming/directory/Attribute;

    .line 59
    sget-object v2, Lorg/apache/ldap/common/berlib/asn1/encoder/AttributeEncoder;->INSTANCE:Lorg/apache/ldap/common/berlib/asn1/encoder/AttributeEncoder;

    invoke-virtual {v2, v1}, Lorg/apache/ldap/common/berlib/asn1/encoder/AttributeEncoder;->encode(Ljavax/naming/directory/Attribute;)Lorg/apache/asn1/ber/TupleNode;

    move-result-object v1

    check-cast v1, Lorg/apache/asn1/ber/DefaultMutableTupleNode;

    .line 61
    invoke-virtual {v0, v1}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->addLast(Lorg/apache/asn1/ber/DefaultMutableTupleNode;)V

    .line 62
    invoke-virtual {v1, v0}, Lorg/apache/asn1/ber/DefaultMutableTupleNode;->setParent(Lorg/apache/asn1/ber/MutableTupleNode;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method
