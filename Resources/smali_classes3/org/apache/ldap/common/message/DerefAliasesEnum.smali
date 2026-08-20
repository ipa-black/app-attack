.class public Lorg/apache/ldap/common/message/DerefAliasesEnum;
.super Lorg/apache/ldap/common/util/ValuedEnum;
.source "DerefAliasesEnum.java"


# static fields
.field public static final DEREFALWAYS:Lorg/apache/ldap/common/message/DerefAliasesEnum;

.field public static final DEREFALWAYS_NAME:Ljava/lang/String; = "always"

.field public static final DEREFALWAYS_VAL:I = 0x3

.field public static final DEREFFINDINGBASEOBJ:Lorg/apache/ldap/common/message/DerefAliasesEnum;

.field public static final DEREFFINDINGBASEOBJ_NAME:Ljava/lang/String; = "finding"

.field public static final DEREFFINDINGBASEOBJ_VAL:I = 0x2

.field public static final DEREFINSEARCHING:Lorg/apache/ldap/common/message/DerefAliasesEnum;

.field public static final DEREFINSEARCHING_NAME:Ljava/lang/String; = "searching"

.field public static final DEREFINSEARCHING_VAL:I = 0x1

.field public static final JNDI_PROP:Ljava/lang/String; = "java.naming.ldap.derefAliases"

.field public static final NEVERDEREFALIASES:Lorg/apache/ldap/common/message/DerefAliasesEnum;

.field public static final NEVERDEREFALIASES_NAME:Ljava/lang/String; = "never"

.field public static final NEVERDEREFALIASES_VAL:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 59
    new-instance v0, Lorg/apache/ldap/common/message/DerefAliasesEnum;

    const-string v1, "never"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/DerefAliasesEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/DerefAliasesEnum;->NEVERDEREFALIASES:Lorg/apache/ldap/common/message/DerefAliasesEnum;

    .line 62
    new-instance v0, Lorg/apache/ldap/common/message/DerefAliasesEnum;

    const-string v1, "searching"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/DerefAliasesEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/DerefAliasesEnum;->DEREFINSEARCHING:Lorg/apache/ldap/common/message/DerefAliasesEnum;

    .line 65
    new-instance v0, Lorg/apache/ldap/common/message/DerefAliasesEnum;

    const-string v1, "finding"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/DerefAliasesEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/DerefAliasesEnum;->DEREFFINDINGBASEOBJ:Lorg/apache/ldap/common/message/DerefAliasesEnum;

    .line 68
    new-instance v0, Lorg/apache/ldap/common/message/DerefAliasesEnum;

    const-string v1, "always"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/message/DerefAliasesEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/message/DerefAliasesEnum;->DEREFALWAYS:Lorg/apache/ldap/common/message/DerefAliasesEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/common/util/ValuedEnum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEnum(Ljava/lang/String;)Lorg/apache/ldap/common/message/DerefAliasesEnum;
    .locals 3

    if-eqz p0, :cond_4

    .line 167
    const-string v0, "always"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    const-string v0, "finding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    sget-object p0, Lorg/apache/ldap/common/message/DerefAliasesEnum;->DEREFFINDINGBASEOBJ:Lorg/apache/ldap/common/message/DerefAliasesEnum;

    return-object p0

    .line 175
    :cond_1
    const-string v0, "searching"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    sget-object p0, Lorg/apache/ldap/common/message/DerefAliasesEnum;->DEREFINSEARCHING:Lorg/apache/ldap/common/message/DerefAliasesEnum;

    return-object p0

    .line 179
    :cond_2
    const-string v0, "never"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 181
    sget-object p0, Lorg/apache/ldap/common/message/DerefAliasesEnum;->NEVERDEREFALIASES:Lorg/apache/ldap/common/message/DerefAliasesEnum;

    return-object p0

    .line 184
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unrecognized JNDI environment property java.naming.ldap.derefAliases value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_4
    :goto_0
    sget-object p0, Lorg/apache/ldap/common/message/DerefAliasesEnum;->DEREFALWAYS:Lorg/apache/ldap/common/message/DerefAliasesEnum;

    return-object p0
.end method

.method public static getEnum(Ljava/util/Map;)Lorg/apache/ldap/common/message/DerefAliasesEnum;
    .locals 1

    .line 201
    const-string v0, "java.naming.ldap.derefAliases"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lorg/apache/ldap/common/message/DerefAliasesEnum;->getEnum(Ljava/lang/String;)Lorg/apache/ldap/common/message/DerefAliasesEnum;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public derefAlways()Z
    .locals 2

    .line 92
    invoke-virtual {p0}, Lorg/apache/ldap/common/message/DerefAliasesEnum;->getValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public derefFindingBase()Z
    .locals 3

    .line 140
    invoke-virtual {p0}, Lorg/apache/ldap/common/message/DerefAliasesEnum;->getValue()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return v2

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class has bug: check for valid enumeration values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v2

    :cond_2
    return v1
.end method

.method public derefInSearching()Z
    .locals 4

    .line 115
    invoke-virtual {p0}, Lorg/apache/ldap/common/message/DerefAliasesEnum;->getValue()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return v2

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Class has bug: check for valid enumeration values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1

    :cond_2
    return v2

    :cond_3
    return v1
.end method

.method public neverDeref()Z
    .locals 1

    .line 103
    invoke-virtual {p0}, Lorg/apache/ldap/common/message/DerefAliasesEnum;->getValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
