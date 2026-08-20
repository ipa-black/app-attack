.class public Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;
.super Lorg/apache/ldap/common/message/spi/Provider;
.source "SnickersProvider.java"


# static fields
.field private static singleton:Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;


# instance fields
.field private final transformer:Lorg/apache/ldap/common/berlib/asn1/SnickersTransformer;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 43
    const-string v0, "Snickers LDAP BER Provider"

    const-string v1, "Apache Directory Project"

    invoke-direct {p0, v0, v1}, Lorg/apache/ldap/common/message/spi/Provider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/SnickersTransformer;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/berlib/asn1/SnickersTransformer;-><init>(Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;)V

    iput-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;->transformer:Lorg/apache/ldap/common/berlib/asn1/SnickersTransformer;

    return-void
.end method

.method public static getProvider()Lorg/apache/ldap/common/message/spi/Provider;
    .locals 1

    .line 60
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;->singleton:Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;

    invoke-direct {v0}, Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;-><init>()V

    sput-object v0, Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;->singleton:Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;

    .line 65
    :cond_0
    sget-object v0, Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;->singleton:Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;

    return-object v0
.end method


# virtual methods
.method public getDecoder()Lorg/apache/ldap/common/message/spi/ProviderDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation

    .line 92
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/berlib/asn1/SnickersDecoder;-><init>(Lorg/apache/ldap/common/message/spi/Provider;)V

    return-object v0
.end method

.method public getEncoder()Lorg/apache/ldap/common/message/spi/ProviderEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation

    .line 79
    new-instance v0, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;

    invoke-direct {v0, p0}, Lorg/apache/ldap/common/berlib/asn1/SnickersEncoder;-><init>(Lorg/apache/ldap/common/message/spi/Provider;)V

    return-object v0
.end method

.method public getTransformer()Lorg/apache/ldap/common/message/spi/TransformerSpi;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ldap/common/message/spi/ProviderException;
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lorg/apache/ldap/common/berlib/asn1/SnickersProvider;->transformer:Lorg/apache/ldap/common/berlib/asn1/SnickersTransformer;

    return-object v0
.end method
