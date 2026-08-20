.class public abstract Lorg/apache/ldap/common/schema/AbstractSchemaObject;
.super Ljava/lang/Object;
.source "AbstractSchemaObject.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/SchemaObject;


# instance fields
.field protected description:Ljava/lang/String;

.field protected isObsolete:Z

.field protected names:[Ljava/lang/String;

.field protected final oid:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 57
    sget-object v0, Lorg/apache/ldap/common/util/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;-><init>(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-direct {p0, p1, v0, v1, p2}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;-><init>(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x1

    .line 98
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p3, p2}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;-><init>(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, p1, v0, p2, v0}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;-><init>(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;-><init>(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;-><init>(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->isObsolete:Z

    .line 37
    sget-object v0, Lorg/apache/ldap/common/util/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->names:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 145
    iput-object p1, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->oid:Ljava/lang/String;

    .line 146
    iput-boolean p3, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->isObsolete:Z

    .line 147
    iput-object p4, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->description:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 151
    iput-object p2, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->names:[Ljava/lang/String;

    :cond_0
    return-void

    .line 142
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "oid cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 274
    :cond_0
    instance-of v0, p1, Lorg/apache/ldap/common/schema/SchemaObject;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->oid:Ljava/lang/String;

    check-cast p1, Lorg/apache/ldap/common/schema/SchemaObject;

    invoke-interface {p1}, Lorg/apache/ldap/common/schema/SchemaObject;->getOid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 193
    iget-object v0, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->names:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getNames()[Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->names:[Ljava/lang/String;

    return-object v0
.end method

.method public getOid()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->oid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->oid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isObsolete()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->isObsolete:Z

    return v0
.end method

.method protected setDescription(Ljava/lang/String;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->description:Ljava/lang/String;

    return-void
.end method

.method protected setNames([Ljava/lang/String;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->names:[Ljava/lang/String;

    return-void
.end method

.method protected setObsolete(Z)V
    .locals 0

    .line 218
    iput-boolean p1, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->isObsolete:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->oid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
