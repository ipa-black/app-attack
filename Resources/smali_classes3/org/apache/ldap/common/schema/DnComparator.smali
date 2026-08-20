.class public Lorg/apache/ldap/common/schema/DnComparator;
.super Ljava/lang/Object;
.source "DnComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private parser:Ljavax/naming/NameParser;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lorg/apache/ldap/common/name/DnParser;

    invoke-direct {v0}, Lorg/apache/ldap/common/name/DnParser;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/schema/DnComparator;->parser:Ljavax/naming/NameParser;

    return-void
.end method

.method public constructor <init>(Lorg/apache/ldap/common/name/NameComponentNormalizer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lorg/apache/ldap/common/name/DnParser;

    invoke-direct {v0, p1}, Lorg/apache/ldap/common/name/DnParser;-><init>(Lorg/apache/ldap/common/name/NameComponentNormalizer;)V

    iput-object v0, p0, Lorg/apache/ldap/common/schema/DnComparator;->parser:Ljavax/naming/NameParser;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 85
    instance-of v0, p1, Ljavax/naming/Name;

    if-eqz v0, :cond_0

    .line 87
    check-cast p1, Ljavax/naming/Name;

    goto :goto_0

    .line 89
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    const-string v1, "first argument was not a distinguished name"

    if-eqz v0, :cond_3

    .line 93
    :try_start_0
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DnComparator;->parser:Ljavax/naming/NameParser;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Ljavax/naming/NameParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object p1
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :goto_0
    instance-of v0, p2, Ljavax/naming/Name;

    if-eqz v0, :cond_1

    .line 110
    check-cast p2, Ljavax/naming/Name;

    goto :goto_1

    .line 112
    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    const-string v1, "second argument was not a distinguished name"

    if-eqz v0, :cond_2

    .line 116
    :try_start_1
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DnComparator;->parser:Ljavax/naming/NameParser;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p2}, Ljavax/naming/NameParser;->parse(Ljava/lang/String;)Ljavax/naming/Name;

    move-result-object p2
    :try_end_1
    .catch Ljavax/naming/NamingException; {:try_start_1 .. :try_end_1} :catch_0

    .line 130
    :goto_1
    invoke-interface {p1, p2}, Ljavax/naming/Name;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 120
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 97
    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
