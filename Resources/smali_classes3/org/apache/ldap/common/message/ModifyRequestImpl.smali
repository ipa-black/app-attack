.class public Lorg/apache/ldap/common/message/ModifyRequestImpl;
.super Lorg/apache/ldap/common/message/AbstractRequest;
.source "ModifyRequestImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/ModifyRequest;


# instance fields
.field private mods:Ljava/util/ArrayList;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 57
    sget-object v0, Lorg/apache/ldap/common/message/ModifyRequestImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/common/message/AbstractRequest;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;Z)V

    .line 41
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/ldap/common/message/ModifyRequestImpl;->mods:Ljava/util/ArrayList;

    return-void
.end method

.method private equals(Ljavax/naming/directory/ModificationItem;Ljavax/naming/directory/ModificationItem;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 220
    :cond_0
    invoke-virtual {p1}, Ljavax/naming/directory/ModificationItem;->getModificationOp()I

    move-result v1

    invoke-virtual {p2}, Ljavax/naming/directory/ModificationItem;->getModificationOp()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    .line 226
    :cond_1
    invoke-virtual {p1}, Ljavax/naming/directory/ModificationItem;->getAttribute()Ljavax/naming/directory/Attribute;

    move-result-object p1

    invoke-interface {p1}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljavax/naming/directory/ModificationItem;->getAttribute()Ljavax/naming/directory/Attribute;

    move-result-object p2

    invoke-interface {p2}, Ljavax/naming/directory/Attribute;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v3

    :cond_2
    return v0
.end method


# virtual methods
.method public addModification(Ljavax/naming/directory/ModificationItem;)V
    .locals 1

    .line 112
    const-string v0, "Attempt to add modification to locked ModifyRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/ModifyRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lorg/apache/ldap/common/message/ModifyRequestImpl;->mods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 161
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ldap/common/message/AbstractRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 166
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/ModifyRequest;

    .line 168
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyRequestImpl;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    .line 173
    :cond_2
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyRequestImpl;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    return v2

    .line 178
    :cond_3
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyRequestImpl;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 180
    iget-object v1, p0, Lorg/apache/ldap/common/message/ModifyRequestImpl;->name:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyRequest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 186
    :cond_4
    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyRequest;->getModificationItems()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v3, p0, Lorg/apache/ldap/common/message/ModifyRequestImpl;->mods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 191
    :cond_5
    invoke-interface {p1}, Lorg/apache/ldap/common/message/ModifyRequest;->getModificationItems()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v1, v2

    .line 192
    :goto_0
    iget-object v3, p0, Lorg/apache/ldap/common/message/ModifyRequestImpl;->mods:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 194
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/naming/directory/ModificationItem;

    .line 195
    iget-object v4, p0, Lorg/apache/ldap/common/message/ModifyRequestImpl;->mods:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/naming/directory/ModificationItem;

    invoke-direct {p0, v4, v3}, Lorg/apache/ldap/common/message/ModifyRequestImpl;->equals(Ljavax/naming/directory/ModificationItem;Ljavax/naming/directory/ModificationItem;)Z

    move-result v3

    if-nez v3, :cond_6

    return v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public getModificationItems()Ljava/util/Collection;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/ldap/common/message/ModifyRequestImpl;->mods:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/apache/ldap/common/message/ModifyRequestImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseType()Lorg/apache/ldap/common/message/MessageTypeEnum;
    .locals 1

    .line 143
    sget-object v0, Lorg/apache/ldap/common/message/ModifyRequestImpl;->RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-object v0
.end method

.method public removeModification(Ljavax/naming/directory/ModificationItem;)V
    .locals 1

    .line 125
    const-string v0, "Attempt to remove modification to locked ModifyRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/ModifyRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lorg/apache/ldap/common/message/ModifyRequestImpl;->mods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 99
    const-string v0, "Attempt to alter object name of locked ModifyRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/ModifyRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 100
    iput-object p1, p0, Lorg/apache/ldap/common/message/ModifyRequestImpl;->name:Ljava/lang/String;

    return-void
.end method
