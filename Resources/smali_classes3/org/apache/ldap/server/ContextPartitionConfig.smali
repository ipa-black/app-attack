.class public Lorg/apache/ldap/server/ContextPartitionConfig;
.super Ljava/lang/Object;
.source "ContextPartitionConfig.java"


# instance fields
.field private attributes:Ljavax/naming/directory/Attributes;

.field private id:Ljava/lang/String;

.field private indices:[Ljava/lang/String;

.field private partitionClass:Ljava/lang/String;

.field private properties:Ljava/lang/String;

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributes()Ljavax/naming/directory/Attributes;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/ldap/server/ContextPartitionConfig;->attributes:Ljavax/naming/directory/Attributes;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/ldap/server/ContextPartitionConfig;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIndices()[Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/apache/ldap/server/ContextPartitionConfig;->indices:[Ljava/lang/String;

    return-object v0
.end method

.method public getPartitionClass()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/apache/ldap/server/ContextPartitionConfig;->partitionClass:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/apache/ldap/server/ContextPartitionConfig;->properties:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/apache/ldap/server/ContextPartitionConfig;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributes(Ljavax/naming/directory/Attributes;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lorg/apache/ldap/server/ContextPartitionConfig;->attributes:Ljavax/naming/directory/Attributes;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/apache/ldap/server/ContextPartitionConfig;->id:Ljava/lang/String;

    return-void
.end method

.method public setIndices([Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lorg/apache/ldap/server/ContextPartitionConfig;->indices:[Ljava/lang/String;

    return-void
.end method

.method public setPartitionClass(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lorg/apache/ldap/server/ContextPartitionConfig;->partitionClass:Ljava/lang/String;

    return-void
.end method

.method public setProperties(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lorg/apache/ldap/server/ContextPartitionConfig;->properties:Ljava/lang/String;

    return-void
.end method

.method public setSuffix(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lorg/apache/ldap/server/ContextPartitionConfig;->suffix:Ljava/lang/String;

    return-void
.end method
