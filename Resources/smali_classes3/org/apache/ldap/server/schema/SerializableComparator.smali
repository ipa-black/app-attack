.class public Lorg/apache/ldap/server/schema/SerializableComparator;
.super Ljava/lang/Object;
.source "SerializableComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# static fields
.field private static registry:Lorg/apache/ldap/server/schema/ComparatorRegistry; = null

.field private static final serialVersionUID:J = 0x2d35333936373836L


# instance fields
.field private matchingRuleOid:Ljava/lang/String;

.field private transient wrapped:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/ldap/server/schema/SerializableComparator;->matchingRuleOid:Ljava/lang/String;

    return-void
.end method

.method public static setRegistry(Lorg/apache/ldap/server/schema/ComparatorRegistry;)V
    .locals 0

    .line 57
    sput-object p0, Lorg/apache/ldap/server/schema/SerializableComparator;->registry:Lorg/apache/ldap/server/schema/ComparatorRegistry;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 82
    iget-object v0, p0, Lorg/apache/ldap/server/schema/SerializableComparator;->wrapped:Ljava/util/Comparator;

    if-nez v0, :cond_0

    .line 86
    :try_start_0
    sget-object v0, Lorg/apache/ldap/server/schema/SerializableComparator;->registry:Lorg/apache/ldap/server/schema/ComparatorRegistry;

    iget-object v1, p0, Lorg/apache/ldap/server/schema/SerializableComparator;->matchingRuleOid:Ljava/lang/String;

    invoke-interface {v0, v1}, Lorg/apache/ldap/server/schema/ComparatorRegistry;->lookup(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/server/schema/SerializableComparator;->wrapped:Ljava/util/Comparator;
    :try_end_0
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljavax/naming/NamingException;->printStackTrace()V

    .line 94
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/apache/ldap/server/schema/SerializableComparator;->wrapped:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
