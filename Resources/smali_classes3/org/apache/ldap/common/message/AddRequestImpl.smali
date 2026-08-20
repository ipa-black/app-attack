.class public Lorg/apache/ldap/common/message/AddRequestImpl;
.super Lorg/apache/ldap/common/message/AbstractRequest;
.source "AddRequestImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/AddRequest;


# instance fields
.field private entry:Ljavax/naming/directory/Attributes;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 51
    sget-object v0, Lorg/apache/ldap/common/message/AddRequestImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/common/message/AbstractRequest;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 143
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ldap/common/message/AbstractRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 148
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/AddRequest;

    .line 150
    iget-object v1, p0, Lorg/apache/ldap/common/message/AddRequestImpl;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/ldap/common/message/AddRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    .line 155
    :cond_2
    iget-object v1, p0, Lorg/apache/ldap/common/message/AddRequestImpl;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/apache/ldap/common/message/AddRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    return v2

    .line 160
    :cond_3
    iget-object v1, p0, Lorg/apache/ldap/common/message/AddRequestImpl;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/apache/ldap/common/message/AddRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 162
    iget-object v1, p0, Lorg/apache/ldap/common/message/AddRequestImpl;->name:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/AddRequest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 168
    :cond_4
    iget-object v1, p0, Lorg/apache/ldap/common/message/AddRequestImpl;->entry:Ljavax/naming/directory/Attributes;

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lorg/apache/ldap/common/message/AddRequest;->getEntry()Ljavax/naming/directory/Attributes;

    move-result-object v1

    if-nez v1, :cond_5

    return v2

    .line 173
    :cond_5
    iget-object v1, p0, Lorg/apache/ldap/common/message/AddRequestImpl;->entry:Ljavax/naming/directory/Attributes;

    if-nez v1, :cond_6

    invoke-interface {p1}, Lorg/apache/ldap/common/message/AddRequest;->getEntry()Ljavax/naming/directory/Attributes;

    move-result-object v1

    if-eqz v1, :cond_6

    return v2

    .line 178
    :cond_6
    iget-object v1, p0, Lorg/apache/ldap/common/message/AddRequestImpl;->entry:Ljavax/naming/directory/Attributes;

    if-eqz v1, :cond_7

    invoke-interface {p1}, Lorg/apache/ldap/common/message/AddRequest;->getEntry()Ljavax/naming/directory/Attributes;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 180
    iget-object v1, p0, Lorg/apache/ldap/common/message/AddRequestImpl;->entry:Ljavax/naming/directory/Attributes;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/AddRequest;->getEntry()Ljavax/naming/directory/Attributes;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getEntry()Ljavax/naming/directory/Attributes;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/apache/ldap/common/message/AddRequestImpl;->entry:Ljavax/naming/directory/Attributes;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/ldap/common/message/AddRequestImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseType()Lorg/apache/ldap/common/message/MessageTypeEnum;
    .locals 1

    .line 120
    sget-object v0, Lorg/apache/ldap/common/message/AddRequestImpl;->RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-object v0
.end method

.method public setEntry(Ljavax/naming/directory/Attributes;)V
    .locals 1

    .line 102
    const-string v0, "Attempt to alter entry of locked AddRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/AddRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 103
    iput-object p1, p0, Lorg/apache/ldap/common/message/AddRequestImpl;->entry:Ljavax/naming/directory/Attributes;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 78
    const-string v0, "Attempt to alter new entry name of locked AddRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/AddRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lorg/apache/ldap/common/message/AddRequestImpl;->name:Ljava/lang/String;

    return-void
.end method
