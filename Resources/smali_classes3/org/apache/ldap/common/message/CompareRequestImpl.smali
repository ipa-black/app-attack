.class public Lorg/apache/ldap/common/message/CompareRequestImpl;
.super Lorg/apache/ldap/common/message/AbstractRequest;
.source "CompareRequestImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/CompareRequest;


# instance fields
.field private attrId:Ljava/lang/String;

.field private attrVal:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 51
    sget-object v0, Lorg/apache/ldap/common/message/CompareRequestImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/ldap/common/message/AbstractRequest;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 163
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ldap/common/message/AbstractRequest;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 168
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/CompareRequest;

    .line 170
    iget-object v1, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lorg/apache/ldap/common/message/CompareRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    return v2

    .line 175
    :cond_2
    iget-object v1, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/apache/ldap/common/message/CompareRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    return v2

    .line 180
    :cond_3
    iget-object v1, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->name:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/apache/ldap/common/message/CompareRequest;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 182
    iget-object v1, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->name:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/CompareRequest;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 188
    :cond_4
    iget-object v1, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->attrId:Ljava/lang/String;

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lorg/apache/ldap/common/message/CompareRequest;->getAttributeId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    return v2

    .line 193
    :cond_5
    iget-object v1, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->attrId:Ljava/lang/String;

    if-nez v1, :cond_6

    invoke-interface {p1}, Lorg/apache/ldap/common/message/CompareRequest;->getAttributeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    return v2

    .line 198
    :cond_6
    iget-object v1, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->attrId:Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-interface {p1}, Lorg/apache/ldap/common/message/CompareRequest;->getAttributeId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 200
    iget-object v1, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->attrId:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/CompareRequest;->getAttributeId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 206
    :cond_7
    iget-object v1, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->attrVal:Ljava/lang/String;

    if-eqz v1, :cond_8

    invoke-interface {p1}, Lorg/apache/ldap/common/message/CompareRequest;->getAssertionValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    return v2

    .line 211
    :cond_8
    iget-object v1, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->attrVal:Ljava/lang/String;

    if-nez v1, :cond_9

    invoke-interface {p1}, Lorg/apache/ldap/common/message/CompareRequest;->getAssertionValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    return v2

    .line 216
    :cond_9
    iget-object v1, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->attrVal:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-interface {p1}, Lorg/apache/ldap/common/message/CompareRequest;->getAssertionValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 218
    iget-object v1, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->attrVal:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/CompareRequest;->getAssertionValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public getAssertionValue()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->attrVal:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeId()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->attrId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseType()Lorg/apache/ldap/common/message/MessageTypeEnum;
    .locals 1

    .line 146
    sget-object v0, Lorg/apache/ldap/common/message/CompareRequestImpl;->RESP_TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    return-object v0
.end method

.method public setAssertionValue(Ljava/lang/String;)V
    .locals 1

    .line 103
    const-string v0, "Attempt to alter attribute value of locked CompareRequest"

    invoke-super {p0, v0}, Lorg/apache/ldap/common/message/AbstractRequest;->lockCheck(Ljava/lang/String;)V

    .line 105
    iput-object p1, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->attrVal:Ljava/lang/String;

    return-void
.end method

.method public setAttributeId(Ljava/lang/String;)V
    .locals 1

    .line 127
    const-string v0, "Attempt to alter attribute id of locked CompareRequest"

    invoke-super {p0, v0}, Lorg/apache/ldap/common/message/AbstractRequest;->lockCheck(Ljava/lang/String;)V

    .line 129
    iput-object p1, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->attrId:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 80
    const-string v0, "Attempt to alter entry name on locked CompareRequest!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/CompareRequestImpl;->lockCheck(Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lorg/apache/ldap/common/message/CompareRequestImpl;->name:Ljava/lang/String;

    return-void
.end method
