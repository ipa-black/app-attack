.class public Lorg/apache/ldap/common/schema/DnNormalizer;
.super Ljava/lang/Object;
.source "DnNormalizer.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/Normalizer;


# instance fields
.field private parser:Ljavax/naming/NameParser;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/apache/ldap/common/name/SimpleNameComponentNormalizer;

    new-instance v1, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;

    invoke-direct {v1}, Lorg/apache/ldap/common/schema/DeepTrimToLowerNormalizer;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/name/SimpleNameComponentNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/schema/DnNormalizer;-><init>(Lorg/apache/ldap/common/name/NameComponentNormalizer;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/name/NameComponentNormalizer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lorg/apache/ldap/common/schema/DnNormalizer;->parser:Ljavax/naming/NameParser;

    .line 79
    new-instance v0, Lorg/apache/ldap/common/name/DnParser;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/DnParser;-><init>(Lorg/apache/ldap/common/name/NameComponentNormalizer;)V

    iput-object v0, p0, Lorg/apache/ldap/common/schema/DnNormalizer;->parser:Ljavax/naming/NameParser;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/schema/Normalizer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 66
    new-instance v0, Lorg/apache/ldap/common/name/SimpleNameComponentNormalizer;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/SimpleNameComponentNormalizer;-><init>(Lorg/apache/ldap/common/schema/Normalizer;)V

    invoke-direct {p0, v0}, Lorg/apache/ldap/common/schema/DnNormalizer;-><init>(Lorg/apache/ldap/common/name/NameComponentNormalizer;)V

    return-void
.end method


# virtual methods
.method public normalize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 94
    instance-of v0, p1, Ljavax/naming/Name;

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 98
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 100
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 103
    :goto_0
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DnNormalizer;->parser:Ljavax/naming/NameParser;

    invoke-interface {v0, p1}, Ljavax/naming/NameParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
