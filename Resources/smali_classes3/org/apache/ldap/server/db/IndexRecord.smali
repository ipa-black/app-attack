.class public Lorg/apache/ldap/server/db/IndexRecord;
.super Ljava/lang/Object;
.source "IndexRecord.java"


# instance fields
.field private entry:Ljavax/naming/directory/Attributes;

.field private final tuple:Lorg/apache/ldap/server/db/Tuple;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lorg/apache/ldap/server/db/Tuple;

    invoke-direct {v0}, Lorg/apache/ldap/server/db/Tuple;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/server/db/IndexRecord;->tuple:Lorg/apache/ldap/server/db/Tuple;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lorg/apache/ldap/server/db/IndexRecord;->entry:Ljavax/naming/directory/Attributes;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lorg/apache/ldap/server/db/IndexRecord;->entry:Ljavax/naming/directory/Attributes;

    .line 142
    iget-object v1, p0, Lorg/apache/ldap/server/db/IndexRecord;->tuple:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {v1, v0}, Lorg/apache/ldap/server/db/Tuple;->setKey(Ljava/lang/Object;)V

    .line 143
    iget-object v1, p0, Lorg/apache/ldap/server/db/IndexRecord;->tuple:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {v1, v0}, Lorg/apache/ldap/server/db/Tuple;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public copy(Lorg/apache/ldap/server/db/IndexRecord;)V
    .locals 2

    .line 155
    invoke-virtual {p1}, Lorg/apache/ldap/server/db/IndexRecord;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ldap/server/db/IndexRecord;->entry:Ljavax/naming/directory/Attributes;

    .line 156
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexRecord;->tuple:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/IndexRecord;->getIndexKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/Tuple;->setKey(Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexRecord;->tuple:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/IndexRecord;->getEntryId()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/Tuple;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getAttributes()Ljavax/naming/directory/Attributes;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexRecord;->entry:Ljavax/naming/directory/Attributes;

    return-object v0
.end method

.method public getEntryId()Ljava/math/BigInteger;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexRecord;->tuple:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/Tuple;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    return-object v0
.end method

.method public getIndexKey()Ljava/lang/Object;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexRecord;->tuple:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {v0}, Lorg/apache/ldap/server/db/Tuple;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setAttributes(Ljavax/naming/directory/Attributes;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lorg/apache/ldap/server/db/IndexRecord;->entry:Ljavax/naming/directory/Attributes;

    return-void
.end method

.method public setEntryId(Ljava/math/BigInteger;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexRecord;->tuple:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/Tuple;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setIndexKey(Ljava/lang/Object;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexRecord;->tuple:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/Tuple;->setKey(Ljava/lang/Object;)V

    return-void
.end method

.method public setSwapped(Lorg/apache/ldap/server/db/Tuple;Ljavax/naming/directory/Attributes;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexRecord;->tuple:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/Tuple;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/Tuple;->setKey(Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexRecord;->tuple:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/Tuple;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/Tuple;->setValue(Ljava/lang/Object;)V

    .line 65
    iput-object p2, p0, Lorg/apache/ldap/server/db/IndexRecord;->entry:Ljavax/naming/directory/Attributes;

    return-void
.end method

.method public setTuple(Lorg/apache/ldap/server/db/Tuple;Ljavax/naming/directory/Attributes;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexRecord;->tuple:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/Tuple;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/ldap/server/db/Tuple;->setKey(Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lorg/apache/ldap/server/db/IndexRecord;->tuple:Lorg/apache/ldap/server/db/Tuple;

    invoke-virtual {p1}, Lorg/apache/ldap/server/db/Tuple;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/ldap/server/db/Tuple;->setValue(Ljava/lang/Object;)V

    .line 50
    iput-object p2, p0, Lorg/apache/ldap/server/db/IndexRecord;->entry:Ljavax/naming/directory/Attributes;

    return-void
.end method
