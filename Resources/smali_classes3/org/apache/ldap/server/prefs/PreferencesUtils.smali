.class public Lorg/apache/ldap/server/prefs/PreferencesUtils;
.super Ljava/lang/Object;
.source "PreferencesUtils.java"


# static fields
.field static final SYSPREF_BASE:Ljava/lang/String; = "prefNodeName=sysPrefRoot,ou=system"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toSysDn(Ljava/lang/String;)Ljavax/naming/Name;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/apache/ldap/common/name/LdapName;

    const-string v1, "prefNodeName=sysPrefRoot,ou=system"

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/name/LdapName;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 52
    :goto_0
    array-length v2, p0

    if-lt v1, v2, :cond_0

    return-object v0

    .line 54
    :cond_0
    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 56
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "prefNodeName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/ldap/common/name/LdapName;->add(Ljava/lang/String;)Ljavax/naming/Name;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
