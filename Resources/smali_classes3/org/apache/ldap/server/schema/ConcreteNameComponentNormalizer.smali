.class public Lorg/apache/ldap/server/schema/ConcreteNameComponentNormalizer;
.super Ljava/lang/Object;
.source "ConcreteNameComponentNormalizer.java"

# interfaces
.implements Lorg/apache/ldap/common/name/NameComponentNormalizer;


# instance fields
.field private final registry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/schema/AttributeTypeRegistry;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lorg/apache/ldap/server/schema/ConcreteNameComponentNormalizer;->registry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    return-void
.end method

.method private lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/Normalizer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/ldap/server/schema/ConcreteNameComponentNormalizer;->registry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object p1

    .line 86
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getNormalizer()Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public normalizeByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/schema/ConcreteNameComponentNormalizer;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public normalizeByOid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1}, Lorg/apache/ldap/server/schema/ConcreteNameComponentNormalizer;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
