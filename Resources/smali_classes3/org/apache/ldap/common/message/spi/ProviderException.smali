.class public Lorg/apache/ldap/common/message/spi/ProviderException;
.super Lorg/apache/ldap/common/message/MessageException;
.source "ProviderException.java"


# instance fields
.field private final m_provider:Lorg/apache/ldap/common/message/spi/Provider;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/common/message/spi/Provider;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/apache/ldap/common/message/MessageException;-><init>()V

    .line 65
    iput-object p1, p0, Lorg/apache/ldap/common/message/spi/ProviderException;->m_provider:Lorg/apache/ldap/common/message/spi/Provider;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/message/spi/Provider;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct {p0, p2}, Lorg/apache/ldap/common/message/MessageException;-><init>(Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lorg/apache/ldap/common/message/spi/ProviderException;->m_provider:Lorg/apache/ldap/common/message/spi/Provider;

    return-void
.end method


# virtual methods
.method public getProvider()Lorg/apache/ldap/common/message/spi/Provider;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/ldap/common/message/spi/ProviderException;->m_provider:Lorg/apache/ldap/common/message/spi/Provider;

    return-object v0
.end method
