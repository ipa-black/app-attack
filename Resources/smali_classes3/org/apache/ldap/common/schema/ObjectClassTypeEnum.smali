.class public Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;
.super Lorg/apache/ldap/common/util/ValuedEnum;
.source "ObjectClassTypeEnum.java"


# static fields
.field public static final ABSTRACT:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

.field public static final ABSTRACT_VAL:I = 0x0

.field public static final AUXILIARY:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

.field public static final AUXILLARY_VAL:I = 0x1

.field public static final STRUCTURAL:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

.field public static final STRUCTURAL_VAL:I = 0x2

.field static synthetic class$org$apache$ldap$common$schema$ObjectClassTypeEnum:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    const-string v1, "ABSTRACT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->ABSTRACT:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    .line 53
    new-instance v0, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    const-string v1, "AUXILIARY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->AUXILIARY:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    .line 57
    new-instance v0, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    const-string v1, "STRUCTURAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->STRUCTURAL:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/common/util/ValuedEnum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 110
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static getClassType(Ljava/lang/String;)Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;
    .locals 3

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 85
    const-string v1, "STRUCTURAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    sget-object p0, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->ABSTRACT:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    return-object p0

    .line 89
    :cond_0
    const-string v1, "AUXILIARY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    sget-object p0, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->AUXILIARY:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    return-object p0

    .line 93
    :cond_1
    const-string v1, "ABSTRACT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 95
    sget-object p0, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->ABSTRACT:Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;

    return-object p0

    .line 98
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unknown objectClass type name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string v1, "\': options are AUXILIARY, STRUCTURAL, ABSTRACT."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static list()Ljava/util/List;
    .locals 1

    .line 110
    sget-object v0, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->class$org$apache$ldap$common$schema$ObjectClassTypeEnum:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.ldap.common.schema.ObjectClassTypeEnum"

    invoke-static {v0}, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->class$org$apache$ldap$common$schema$ObjectClassTypeEnum:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/ldap/common/util/EnumUtils;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static map()Ljava/util/Map;
    .locals 1

    .line 122
    sget-object v0, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->class$org$apache$ldap$common$schema$ObjectClassTypeEnum:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.ldap.common.schema.ObjectClassTypeEnum"

    invoke-static {v0}, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/schema/ObjectClassTypeEnum;->class$org$apache$ldap$common$schema$ObjectClassTypeEnum:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/ldap/common/util/EnumUtils;->getEnumMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
