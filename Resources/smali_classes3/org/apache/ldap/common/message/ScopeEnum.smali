.class public Lorg/apache/ldap/common/message/ScopeEnum;
.super Lorg/apache/ldap/common/util/ValuedEnum;
.source "ScopeEnum.java"


# static fields
.field public static final BASEOBJECT:Lorg/apache/ldap/common/message/ScopeEnum;

.field public static final BASEOBJECT_LDAPVAL:I = 0x0

.field public static final BASEOBJECT_VAL:I = 0x0

.field public static final SINGLELEVEL:Lorg/apache/ldap/common/message/ScopeEnum;

.field public static final SINGLELEVEL_LDAPVAL:I = 0x1

.field public static final SINGLELEVEL_VAL:I = 0x1

.field public static final WHOLESUBTREE:Lorg/apache/ldap/common/message/ScopeEnum;

.field public static final WHOLESUBTREE_LDAPVAL:I = 0x2

.field public static final WHOLESUBTREE_VAL:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    new-instance v0, Lorg/apache/ldap/common/message/ScopeEnum;

    const-string v1, "BASEOBJECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/ScopeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/ScopeEnum;->BASEOBJECT:Lorg/apache/ldap/common/message/ScopeEnum;

    .line 55
    new-instance v0, Lorg/apache/ldap/common/message/ScopeEnum;

    const-string v1, "SINGLELEVEL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/ScopeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/ScopeEnum;->SINGLELEVEL:Lorg/apache/ldap/common/message/ScopeEnum;

    .line 58
    new-instance v0, Lorg/apache/ldap/common/message/ScopeEnum;

    const-string v1, "WHOLESUBTREE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/ScopeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/ScopeEnum;->WHOLESUBTREE:Lorg/apache/ldap/common/message/ScopeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/common/util/ValuedEnum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getScope(Ljavax/naming/directory/SearchControls;)Lorg/apache/ldap/common/message/ScopeEnum;
    .locals 3

    .line 84
    invoke-virtual {p0}, Ljavax/naming/directory/SearchControls;->getSearchScope()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 91
    sget-object p0, Lorg/apache/ldap/common/message/ScopeEnum;->WHOLESUBTREE:Lorg/apache/ldap/common/message/ScopeEnum;

    return-object p0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unrecognized search scope in SearchControls: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/naming/directory/SearchControls;->getSearchScope()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1
    sget-object p0, Lorg/apache/ldap/common/message/ScopeEnum;->SINGLELEVEL:Lorg/apache/ldap/common/message/ScopeEnum;

    return-object p0

    .line 87
    :cond_2
    sget-object p0, Lorg/apache/ldap/common/message/ScopeEnum;->BASEOBJECT:Lorg/apache/ldap/common/message/ScopeEnum;

    return-object p0
.end method


# virtual methods
.method public getLdapValue()I
    .locals 3

    .line 109
    invoke-virtual {p0}, Lorg/apache/ldap/common/message/ScopeEnum;->getValue()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v1

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unrecognized value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/ldap/common/message/ScopeEnum;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
