.class public Lorg/apache/ldap/common/ldif/LdifEntry;
.super Ljava/lang/Object;
.source "LdifEntry.java"


# instance fields
.field private m_attributeList:Ljavax/naming/directory/BasicAttributes;

.field private m_controlList:Ljava/util/LinkedList;

.field private m_dn:Ljava/lang/String;

.field private m_itemList:Ljava/util/LinkedList;

.field private m_modType:Ljava/lang/String;

.field private m_version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_controlList:Ljava/util/LinkedList;

    .line 72
    const-string v0, "add"

    iput-object v0, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_modType:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_itemList:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_dn:Ljava/lang/String;

    .line 75
    new-instance v0, Ljavax/naming/directory/BasicAttributes;

    invoke-direct {v0}, Ljavax/naming/directory/BasicAttributes;-><init>()V

    iput-object v0, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_attributeList:Ljavax/naming/directory/BasicAttributes;

    const/4 v0, 0x1

    .line 76
    iput v0, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_version:I

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_attributeList:Ljavax/naming/directory/BasicAttributes;

    invoke-virtual {v0, p1, p2}, Ljavax/naming/directory/BasicAttributes;->put(Ljava/lang/String;Ljava/lang/Object;)Ljavax/naming/directory/Attribute;

    return-void
.end method

.method public addAttribute(Ljavax/naming/directory/Attribute;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_attributeList:Ljavax/naming/directory/BasicAttributes;

    invoke-virtual {v0, p1}, Ljavax/naming/directory/BasicAttributes;->put(Ljavax/naming/directory/Attribute;)Ljavax/naming/directory/Attribute;

    return-void
.end method

.method public addModificationItem(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 134
    new-instance v0, Ljavax/naming/directory/BasicAttribute;

    invoke-direct {v0, p2, p3}, Ljavax/naming/directory/BasicAttribute;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    new-instance p2, Ljavax/naming/directory/ModificationItem;

    invoke-direct {p2, p1, v0}, Ljavax/naming/directory/ModificationItem;-><init>(ILjavax/naming/directory/Attribute;)V

    .line 136
    iget-object p1, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_itemList:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addModificationItem(ILjavax/naming/directory/Attribute;)V
    .locals 1

    .line 120
    new-instance v0, Ljavax/naming/directory/ModificationItem;

    invoke-direct {v0, p1, p2}, Ljavax/naming/directory/ModificationItem;-><init>(ILjavax/naming/directory/Attribute;)V

    .line 121
    iget-object p1, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_itemList:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDn()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_dn:Ljava/lang/String;

    return-object v0
.end method

.method public getModType()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_modType:Ljava/lang/String;

    return-object v0
.end method

.method public getModificationItems()Ljava/util/LinkedList;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_itemList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public setDn(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_dn:Ljava/lang/String;

    return-void
.end method

.method public setModType(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_modType:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 86
    iput p1, p0, Lorg/apache/ldap/common/ldif/LdifEntry;->m_version:I

    return-void
.end method
