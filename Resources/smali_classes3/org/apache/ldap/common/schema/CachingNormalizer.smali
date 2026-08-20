.class public Lorg/apache/ldap/common/schema/CachingNormalizer;
.super Ljava/lang/Object;
.source "CachingNormalizer.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/Normalizer;


# static fields
.field public static final CACHE_MAX:I = 0xfa


# instance fields
.field private final cache:Lorg/apache/ldap/common/util/LRUMap;

.field private final normalizer:Lorg/apache/ldap/common/schema/Normalizer;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/common/schema/Normalizer;)V
    .locals 1

    const/16 v0, 0xfa

    .line 55
    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/schema/CachingNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/schema/Normalizer;I)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/ldap/common/schema/CachingNormalizer;->normalizer:Lorg/apache/ldap/common/schema/Normalizer;

    .line 69
    new-instance p1, Lorg/apache/ldap/common/util/LRUMap;

    invoke-direct {p1, p2}, Lorg/apache/ldap/common/util/LRUMap;-><init>(I)V

    iput-object p1, p0, Lorg/apache/ldap/common/schema/CachingNormalizer;->cache:Lorg/apache/ldap/common/util/LRUMap;

    return-void
.end method


# virtual methods
.method public normalize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/apache/ldap/common/schema/CachingNormalizer;->cache:Lorg/apache/ldap/common/util/LRUMap;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/util/LRUMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/apache/ldap/common/schema/CachingNormalizer;->cache:Lorg/apache/ldap/common/util/LRUMap;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/common/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 83
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/schema/CachingNormalizer;->normalizer:Lorg/apache/ldap/common/schema/Normalizer;

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lorg/apache/ldap/common/schema/CachingNormalizer;->cache:Lorg/apache/ldap/common/util/LRUMap;

    invoke-virtual {v1, p1, v0}, Lorg/apache/ldap/common/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
