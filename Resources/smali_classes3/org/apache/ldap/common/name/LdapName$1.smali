.class Lorg/apache/ldap/common/name/LdapName$1;
.super Ljava/lang/Object;
.source "LdapName.java"

# interfaces
.implements Ljava/util/Enumeration;


# instance fields
.field private l_pos:I

.field private final synthetic this$0:Lorg/apache/ldap/common/name/LdapName;


# direct methods
.method constructor <init>(Lorg/apache/ldap/common/name/LdapName;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lorg/apache/ldap/common/name/LdapName$1;->this$0:Lorg/apache/ldap/common/name/LdapName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 2

    .line 277
    iget v0, p0, Lorg/apache/ldap/common/name/LdapName$1;->l_pos:I

    iget-object v1, p0, Lorg/apache/ldap/common/name/LdapName$1;->this$0:Lorg/apache/ldap/common/name/LdapName;

    invoke-virtual {v1}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    .line 282
    iget v0, p0, Lorg/apache/ldap/common/name/LdapName$1;->l_pos:I

    iget-object v1, p0, Lorg/apache/ldap/common/name/LdapName$1;->this$0:Lorg/apache/ldap/common/name/LdapName;

    invoke-virtual {v1}, Lorg/apache/ldap/common/name/LdapName;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 287
    iget-object v0, p0, Lorg/apache/ldap/common/name/LdapName$1;->this$0:Lorg/apache/ldap/common/name/LdapName;

    iget v1, p0, Lorg/apache/ldap/common/name/LdapName$1;->l_pos:I

    invoke-virtual {v0, v1}, Lorg/apache/ldap/common/name/LdapName;->get(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    iget v1, p0, Lorg/apache/ldap/common/name/LdapName$1;->l_pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/ldap/common/name/LdapName$1;->l_pos:I

    return-object v0

    .line 284
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
