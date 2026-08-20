.class public Lorg/apache/ldap/common/name/SimpleNameComponentNormalizer;
.super Ljava/lang/Object;
.source "SimpleNameComponentNormalizer.java"

# interfaces
.implements Lorg/apache/ldap/common/name/NameComponentNormalizer;


# instance fields
.field private final normalizer:Lorg/apache/ldap/common/schema/Normalizer;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/common/schema/Normalizer;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/apache/ldap/common/name/SimpleNameComponentNormalizer;->normalizer:Lorg/apache/ldap/common/schema/Normalizer;

    return-void
.end method


# virtual methods
.method public normalizeByName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 54
    iget-object p1, p0, Lorg/apache/ldap/common/name/SimpleNameComponentNormalizer;->normalizer:Lorg/apache/ldap/common/schema/Normalizer;

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

    .line 60
    iget-object p1, p0, Lorg/apache/ldap/common/name/SimpleNameComponentNormalizer;->normalizer:Lorg/apache/ldap/common/schema/Normalizer;

    invoke-interface {p1, p2}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
