.class public Lorg/apache/ldap/common/schema/DefaultObjectClass;
.super Lorg/apache/ldap/common/schema/AbstractSchemaObject;
.source "DefaultObjectClass.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/ObjectClass;
.implements Ljava/io/Serializable;


# static fields
.field private static final EMPTY_ATYPE_ARR:[Lorg/apache/ldap/common/schema/AttributeType;

.field private static final EMPTY_OCLASS_ARR:[Lorg/apache/ldap/common/schema/ObjectClass;


# instance fields
.field private mayList:Ljava/util/ArrayList;

.field private mustList:Ljava/util/ArrayList;

.field private superClasses:Ljava/util/ArrayList;

.field private type:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 36
    new-array v1, v0, [Lorg/apache/ldap/common/schema/ObjectClass;

    sput-object v1, Lorg/apache/ldap/common/schema/DefaultObjectClass;->EMPTY_OCLASS_ARR:[Lorg/apache/ldap/common/schema/ObjectClass;

    .line 38
    new-array v0, v0, [Lorg/apache/ldap/common/schema/AttributeType;

    sput-object v0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->EMPTY_ATYPE_ARR:[Lorg/apache/ldap/common/schema/AttributeType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;-><init>(Ljava/lang/String;)V

    .line 45
    sget-object p1, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->ABSTRACT:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    iput-object p1, p0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->type:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    return-void
.end method


# virtual methods
.method addSuperClasses(Ljava/util/List;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->superClasses:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->superClasses:Ljava/util/ArrayList;

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->superClasses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method addToMayList(Ljava/util/List;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->mayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->mayList:Ljava/util/ArrayList;

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->mayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method addToMustList(Ljava/util/List;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->mustList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->mustList:Ljava/util/ArrayList;

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->mustList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getMayList()[Lorg/apache/ldap/common/schema/AttributeType;
    .locals 2

    .line 105
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->mayList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->EMPTY_ATYPE_ARR:[Lorg/apache/ldap/common/schema/AttributeType;

    return-object v0

    .line 110
    :cond_0
    sget-object v1, Lorg/apache/ldap/common/schema/DefaultObjectClass;->EMPTY_ATYPE_ARR:[Lorg/apache/ldap/common/schema/AttributeType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ldap/common/schema/AttributeType;

    check-cast v0, [Lorg/apache/ldap/common/schema/AttributeType;

    return-object v0
.end method

.method public getMustList()[Lorg/apache/ldap/common/schema/AttributeType;
    .locals 2

    .line 94
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->mustList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->EMPTY_ATYPE_ARR:[Lorg/apache/ldap/common/schema/AttributeType;

    return-object v0

    .line 99
    :cond_0
    sget-object v1, Lorg/apache/ldap/common/schema/DefaultObjectClass;->EMPTY_ATYPE_ARR:[Lorg/apache/ldap/common/schema/AttributeType;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ldap/common/schema/AttributeType;

    check-cast v0, [Lorg/apache/ldap/common/schema/AttributeType;

    return-object v0
.end method

.method public getSuperClasses()[Lorg/apache/ldap/common/schema/ObjectClass;
    .locals 2

    .line 77
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->superClasses:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 79
    sget-object v0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->EMPTY_OCLASS_ARR:[Lorg/apache/ldap/common/schema/ObjectClass;

    return-object v0

    .line 82
    :cond_0
    sget-object v1, Lorg/apache/ldap/common/schema/DefaultObjectClass;->EMPTY_OCLASS_ARR:[Lorg/apache/ldap/common/schema/ObjectClass;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ldap/common/schema/ObjectClass;

    check-cast v0, [Lorg/apache/ldap/common/schema/ObjectClass;

    return-object v0
.end method

.method public getType()Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->type:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    return-object v0
.end method

.method setType(Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lorg/apache/ldap/common/schema/DefaultObjectClass;->type:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    return-void
.end method
