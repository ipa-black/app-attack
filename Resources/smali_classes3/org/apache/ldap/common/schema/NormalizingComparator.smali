.class public Lorg/apache/ldap/common/schema/NormalizingComparator;
.super Ljava/lang/Object;
.source "NormalizingComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private comparator:Ljava/util/Comparator;

.field private normalizer:Lorg/apache/ldap/common/schema/Normalizer;


# direct methods
.method public constructor <init>(Lorg/apache/ldap/common/schema/Normalizer;Ljava/util/Comparator;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/apache/ldap/common/schema/NormalizingComparator;->normalizer:Lorg/apache/ldap/common/schema/Normalizer;

    .line 48
    iput-object p2, p0, Lorg/apache/ldap/common/schema/NormalizingComparator;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 65
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/common/schema/NormalizingComparator;->normalizer:Lorg/apache/ldap/common/schema/Normalizer;

    invoke-interface {v0, p1}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljavax/naming/NamingException;->printStackTrace()V

    .line 75
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/ldap/common/schema/NormalizingComparator;->normalizer:Lorg/apache/ldap/common/schema/Normalizer;

    invoke-interface {v0, p2}, Lorg/apache/ldap/common/schema/Normalizer;->normalize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljavax/naming/NamingException;->printStackTrace()V

    .line 83
    :goto_1
    iget-object v0, p0, Lorg/apache/ldap/common/schema/NormalizingComparator;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
