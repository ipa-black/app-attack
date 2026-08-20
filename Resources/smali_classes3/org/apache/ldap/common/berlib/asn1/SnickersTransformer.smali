.class public Lorg/apache/ldap/common/berlib/asn1/SnickersTransformer;
.super Ljava/lang/Object;
.source "SnickersTransformer.java"

# interfaces
.implements Lorg/apache/ldap/common/message/spi/TransformerSpi;


# instance fields
.field private final provider:Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersTransformer;->provider:Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;

    return-void
.end method


# virtual methods
.method public getProvider()Lorg/apache/ldap/common/message/spi/Provider;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersTransformer;->provider:Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;

    return-object v0
.end method

.method public transform(Lorg/apache/ldap/common/message/Message;)Ljava/lang/Object;
    .locals 0

    return-object p1
.end method

.method public transform(Ljava/lang/Object;)Lorg/apache/ldap/common/message/Message;
    .locals 0

    .line 70
    check-cast p1, Lorg/apache/ldap/common/message/Message;

    return-object p1
.end method
