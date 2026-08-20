.class public abstract Lorg/apache/ldap/common/schema/AbstractSyntax;
.super Lorg/apache/ldap/common/schema/AbstractSchemaObject;
.source "AbstractSyntax.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/Syntax;


# instance fields
.field private isHumanReadible:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lorg/apache/ldap/common/schema/AbstractSyntax;->isHumanReadible:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lorg/apache/ldap/common/schema/AbstractSyntax;->isHumanReadible:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iput-boolean p3, p0, Lorg/apache/ldap/common/schema/AbstractSyntax;->isHumanReadible:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;-><init>(Ljava/lang/String;)V

    .line 57
    iput-boolean p2, p0, Lorg/apache/ldap/common/schema/AbstractSyntax;->isHumanReadible:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 142
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 147
    :cond_0
    instance-of p1, p1, Lorg/apache/ldap/common/schema/Syntax;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/apache/ldap/common/schema/AbstractSyntax;->oid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isHumanReadible()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Lorg/apache/ldap/common/schema/AbstractSyntax;->isHumanReadible:Z

    return v0
.end method

.method protected setHumanReadible(Z)V
    .locals 0

    .line 113
    iput-boolean p1, p0, Lorg/apache/ldap/common/schema/AbstractSyntax;->isHumanReadible:Z

    return-void
.end method
