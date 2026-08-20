.class public Lorg/apache/ldap/common/message/SearchResponseEntryImpl;
.super Lorg/apache/ldap/common/message/AbstractResponse;
.source "SearchResponseEntryImpl.java"

# interfaces
.implements Lorg/apache/ldap/common/message/SearchResponseEntry;


# instance fields
.field private attributes:Ljavax/naming/directory/Attributes;

.field private dn:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 52
    sget-object v0, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;->TYPE:Lorg/apache/ldap/common/message/MessageTypeEnum;

    invoke-direct {p0, p1, v0}, Lorg/apache/ldap/common/message/AbstractResponse;-><init>(ILorg/apache/ldap/common/message/MessageTypeEnum;)V

    .line 34
    const-string p1, ""

    iput-object p1, p0, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;->dn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 123
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/ldap/common/message/AbstractResponse;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 128
    :cond_1
    check-cast p1, Lorg/apache/ldap/common/message/SearchResponseEntry;

    .line 130
    iget-object v1, p0, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;->dn:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchResponseEntry;->getObjectName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 135
    :cond_2
    iget-object v1, p0, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;->attributes:Ljavax/naming/directory/Attributes;

    if-nez v1, :cond_3

    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchResponseEntry;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v1

    if-eqz v1, :cond_3

    return v2

    .line 140
    :cond_3
    iget-object v1, p0, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;->attributes:Ljavax/naming/directory/Attributes;

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchResponseEntry;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v1

    if-nez v1, :cond_4

    return v2

    .line 145
    :cond_4
    iget-object v1, p0, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;->attributes:Ljavax/naming/directory/Attributes;

    if-eqz v1, :cond_5

    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchResponseEntry;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 147
    iget-object v0, p0, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;->attributes:Ljavax/naming/directory/Attributes;

    invoke-interface {p1}, Lorg/apache/ldap/common/message/SearchResponseEntry;->getAttributes()Ljavax/naming/directory/Attributes;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    return v0
.end method

.method public getAttributes()Ljavax/naming/directory/Attributes;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;->attributes:Ljavax/naming/directory/Attributes;

    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;->dn:Ljava/lang/String;

    return-object v0
.end method

.method public setAttributes(Ljavax/naming/directory/Attributes;)V
    .locals 1

    .line 79
    const-string v0, "Attempt to alter attributes of a locked SearchResponseEntry!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;->lockCheck(Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;->attributes:Ljavax/naming/directory/Attributes;

    return-void
.end method

.method public setObjectName(Ljava/lang/String;)V
    .locals 1

    .line 103
    const-string v0, "Attempt to alter Dn of a locked SearchResponseEntry!"

    invoke-virtual {p0, v0}, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;->lockCheck(Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lorg/apache/ldap/common/message/SearchResponseEntryImpl;->dn:Ljava/lang/String;

    return-void
.end method
