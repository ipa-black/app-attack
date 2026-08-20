.class Lorg/apache/ldap/server/normalization/NormalizationService$PerComponentNormalizer;
.super Ljava/lang/Object;
.source "NormalizationService.java"

# interfaces
.implements Lorg/apache/ldap/common/name/NameComponentNormalizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/server/normalization/NormalizationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerComponentNormalizer"
.end annotation


# instance fields
.field private final registry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

.field final synthetic this$0:Lorg/apache/ldap/server/normalization/NormalizationService;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/server/normalization/NormalizationService;Lorg/apache/ldap/server/schema/AttributeTypeRegistry;)V
    .locals 0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/server/normalization/NormalizationService$PerComponentNormalizer;->this$0:Lorg/apache/ldap/server/normalization/NormalizationService;

    .line 256
    iput-object p2, p0, Lorg/apache/ldap/server/normalization/NormalizationService$PerComponentNormalizer;->registry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    return-void
.end method


# virtual methods
.method public normalizeByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService$PerComponentNormalizer;->registry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object p1

    .line 264
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getNormalizer()Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public normalizeByOid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lorg/apache/ldap/server/normalization/NormalizationService$PerComponentNormalizer;->registry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    invoke-interface {v0, p1}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object p1

    .line 272
    invoke-interface {p1}, Lorg/apache/ldap/common/schema/AttributeType;->getEquality()Lorg/apache/ldap/common/schema/MatchingRule;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/MatchingRule;->getNormalizer()Lorg/apache/ldap/common/schema/Normalizer;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
