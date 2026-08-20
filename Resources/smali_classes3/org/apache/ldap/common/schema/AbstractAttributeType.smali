.class public abstract Lorg/apache/ldap/common/schema/AbstractAttributeType;
.super Lorg/apache/ldap/common/schema/AbstractSchemaObject;
.source "AbstractAttributeType.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/ldap/common/schema/AttributeType;


# instance fields
.field private canUserModify:Z

.field private isCollective:Z

.field private isSingleValue:Z

.field private length:I

.field private usage:Lorg/apache/ldap/common/schema/UsageEnum;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lorg/apache/ldap/common/schema/AbstractAttributeType;->isSingleValue:Z

    .line 41
    iput-boolean p1, p0, Lorg/apache/ldap/common/schema/AbstractAttributeType;->isCollective:Z

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lorg/apache/ldap/common/schema/AbstractAttributeType;->canUserModify:Z

    .line 45
    sget-object p1, Lorg/apache/ldap/common/schema/UsageEnum;->USERAPPLICATIONS:Lorg/apache/ldap/common/schema/UsageEnum;

    iput-object p1, p0, Lorg/apache/ldap/common/schema/AbstractAttributeType;->usage:Lorg/apache/ldap/common/schema/UsageEnum;

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lorg/apache/ldap/common/schema/AbstractAttributeType;->length:I

    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .line 112
    iget v0, p0, Lorg/apache/ldap/common/schema/AbstractAttributeType;->length:I

    return v0
.end method

.method public getUsage()Lorg/apache/ldap/common/schema/UsageEnum;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/ldap/common/schema/AbstractAttributeType;->usage:Lorg/apache/ldap/common/schema/UsageEnum;

    return-object v0
.end method

.method public isCanUserModify()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/apache/ldap/common/schema/AbstractAttributeType;->canUserModify:Z

    return v0
.end method

.method public isCollective()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lorg/apache/ldap/common/schema/AbstractAttributeType;->isCollective:Z

    return v0
.end method

.method public isSingleValue()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lorg/apache/ldap/common/schema/AbstractAttributeType;->isSingleValue:Z

    return v0
.end method

.method protected setCanUserModify(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lorg/apache/ldap/common/schema/AbstractAttributeType;->canUserModify:Z

    return-void
.end method

.method protected setCollective(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lorg/apache/ldap/common/schema/AbstractAttributeType;->isCollective:Z

    return-void
.end method

.method protected setLength(I)V
    .locals 0

    .line 175
    iput p1, p0, Lorg/apache/ldap/common/schema/AbstractAttributeType;->length:I

    return-void
.end method

.method protected setSingleValue(Z)V
    .locals 0

    .line 129
    iput-boolean p1, p0, Lorg/apache/ldap/common/schema/AbstractAttributeType;->isSingleValue:Z

    return-void
.end method

.method protected setUsage(Lorg/apache/ldap/common/schema/UsageEnum;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lorg/apache/ldap/common/schema/AbstractAttributeType;->usage:Lorg/apache/ldap/common/schema/UsageEnum;

    return-void
.end method
