.class public Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;
.super Lorg/apache/ldap/common/schema/AbstractSchemaObject;
.source "AbstractBootstrapProducer.java"

# interfaces
.implements Lorg/apache/ldap/common/schema/ObjectClass;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BootstrapObjectClass"
.end annotation


# instance fields
.field private final attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

.field private mayList:[Lorg/apache/ldap/common/schema/AttributeType;

.field private mayListIds:[Ljava/lang/String;

.field private mustList:[Lorg/apache/ldap/common/schema/AttributeType;

.field private mustListIds:[Ljava/lang/String;

.field private final objectClassRegistry:Lorg/apache/ldap/server/schema/ObjectClassRegistry;

.field private superClassIds:[Ljava/lang/String;

.field private superClasses:[Lorg/apache/ldap/common/schema/ObjectClass;

.field private type:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;)V
    .locals 0

    .line 383
    invoke-direct {p0, p1}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;-><init>(Ljava/lang/String;)V

    .line 364
    sget-object p1, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->superClassIds:[Ljava/lang/String;

    .line 366
    sget-object p1, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->STRUCTURAL:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->type:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    .line 368
    sget-object p1, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mayListIds:[Ljava/lang/String;

    .line 371
    sget-object p1, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer;->EMPTY:[Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mustListIds:[Ljava/lang/String;

    .line 385
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getObjectClassRegistry()Lorg/apache/ldap/server/schema/ObjectClassRegistry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->objectClassRegistry:Lorg/apache/ldap/server/schema/ObjectClassRegistry;

    .line 386
    invoke-virtual {p2}, Lorg/apache/ldap/server/schema/bootstrap/BootstrapRegistries;->getAttributeTypeRegistry()Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    return-void
.end method


# virtual methods
.method public getMayList()[Lorg/apache/ldap/common/schema/AttributeType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mayList:[Lorg/apache/ldap/common/schema/AttributeType;

    if-nez v0, :cond_0

    .line 455
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mayListIds:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lorg/apache/ldap/common/schema/AttributeType;

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mayList:[Lorg/apache/ldap/common/schema/AttributeType;

    :cond_0
    const/4 v0, 0x0

    .line 458
    :goto_0
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mayListIds:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 463
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mayList:[Lorg/apache/ldap/common/schema/AttributeType;

    return-object v0

    .line 460
    :cond_1
    iget-object v2, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mayList:[Lorg/apache/ldap/common/schema/AttributeType;

    iget-object v3, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    aget-object v1, v1, v0

    invoke-interface {v3, v1}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getMustList()[Lorg/apache/ldap/common/schema/AttributeType;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mustList:[Lorg/apache/ldap/common/schema/AttributeType;

    if-nez v0, :cond_0

    .line 433
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mustListIds:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lorg/apache/ldap/common/schema/AttributeType;

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mustList:[Lorg/apache/ldap/common/schema/AttributeType;

    :cond_0
    const/4 v0, 0x0

    .line 436
    :goto_0
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mustListIds:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 441
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mustList:[Lorg/apache/ldap/common/schema/AttributeType;

    return-object v0

    .line 438
    :cond_1
    iget-object v2, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mustList:[Lorg/apache/ldap/common/schema/AttributeType;

    iget-object v3, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->attributeTypeRegistry:Lorg/apache/ldap/server/schema/AttributeTypeRegistry;

    aget-object v1, v1, v0

    invoke-interface {v3, v1}, Lorg/apache/ldap/server/schema/AttributeTypeRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/AttributeType;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSuperClasses()[Lorg/apache/ldap/common/schema/ObjectClass;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->superClasses:[Lorg/apache/ldap/common/schema/ObjectClass;

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->superClassIds:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lorg/apache/ldap/common/schema/ObjectClass;

    iput-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->superClasses:[Lorg/apache/ldap/common/schema/ObjectClass;

    :cond_0
    const/4 v0, 0x0

    .line 402
    :goto_0
    iget-object v1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->superClassIds:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    .line 407
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->superClasses:[Lorg/apache/ldap/common/schema/ObjectClass;

    return-object v0

    .line 404
    :cond_1
    iget-object v2, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->superClasses:[Lorg/apache/ldap/common/schema/ObjectClass;

    iget-object v3, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->objectClassRegistry:Lorg/apache/ldap/server/schema/ObjectClassRegistry;

    aget-object v1, v1, v0

    invoke-interface {v3, v1}, Lorg/apache/ldap/server/schema/ObjectClassRegistry;->lookup(Ljava/lang/String;)Lorg/apache/ldap/common/schema/ObjectClass;

    move-result-object v1

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getType()Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;
    .locals 1

    .line 419
    iget-object v0, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->type:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 490
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public setMayListIds([Ljava/lang/String;)V
    .locals 0

    .line 469
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mayListIds:[Ljava/lang/String;

    return-void
.end method

.method public setMustListIds([Ljava/lang/String;)V
    .locals 0

    .line 447
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->mustListIds:[Ljava/lang/String;

    return-void
.end method

.method public setNames([Ljava/lang/String;)V
    .locals 0

    .line 485
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->setNames([Ljava/lang/String;)V

    return-void
.end method

.method public setObsolete(Z)V
    .locals 0

    .line 480
    invoke-super {p0, p1}, Lorg/apache/ldap/common/schema/AbstractSchemaObject;->setObsolete(Z)V

    return-void
.end method

.method public setSuperClassIds([Ljava/lang/String;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->superClassIds:[Ljava/lang/String;

    return-void
.end method

.method public setType(Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lorg/apache/ldap/server/schema/bootstrap/AbstractBootstrapProducer$BootstrapObjectClass;->type:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    return-void
.end method
