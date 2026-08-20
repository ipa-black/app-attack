.class public Lorg/apache/ldap/server/db/TupleEnumeration;
.super Ljava/lang/Object;
.source "TupleEnumeration.java"

# interfaces
.implements Ljavax/naming/NamingEnumeration;


# instance fields
.field private final iterator:Ljava/util/Iterator;

.field private final key:Ljava/lang/Object;

.field private final tuple:Lorg/apache/ldap/server/db/Tuple;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/Iterator;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/apache/ldap/server/db/Tuple;

    invoke-direct {v0}, Lorg/apache/ldap/server/db/Tuple;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/TupleEnumeration;->tuple:Lorg/apache/ldap/server/db/Tuple;

    .line 55
    iput-object p1, p0, Lorg/apache/ldap/server/db/TupleEnumeration;->key:Ljava/lang/Object;

    .line 56
    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/Tuple;->setKey(Ljava/lang/Object;)V

    .line 57
    iput-object p2, p0, Lorg/apache/ldap/server/db/TupleEnumeration;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public hasMore()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/ldap/server/db/TupleEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/ldap/server/db/TupleEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/apache/ldap/server/db/TupleEnumeration;->tuple:Lorg/apache/ldap/server/db/Tuple;

    iget-object v1, p0, Lorg/apache/ldap/server/db/TupleEnumeration;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/Tuple;->setKey(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lorg/apache/ldap/server/db/TupleEnumeration;->tuple:Lorg/apache/ldap/server/db/Tuple;

    iget-object v1, p0, Lorg/apache/ldap/server/db/TupleEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/Tuple;->setValue(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lorg/apache/ldap/server/db/TupleEnumeration;->tuple:Lorg/apache/ldap/server/db/Tuple;

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    .line 81
    iget-object v0, p0, Lorg/apache/ldap/server/db/TupleEnumeration;->tuple:Lorg/apache/ldap/server/db/Tuple;

    iget-object v1, p0, Lorg/apache/ldap/server/db/TupleEnumeration;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/Tuple;->setKey(Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lorg/apache/ldap/server/db/TupleEnumeration;->tuple:Lorg/apache/ldap/server/db/Tuple;

    iget-object v1, p0, Lorg/apache/ldap/server/db/TupleEnumeration;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/Tuple;->setValue(Ljava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lorg/apache/ldap/server/db/TupleEnumeration;->tuple:Lorg/apache/ldap/server/db/Tuple;

    return-object v0
.end method
