.class public Lorg/apache/ldap/common/schema/UsageEnum;
.super Lorg/apache/ldap/common/util/ValuedEnum;
.source "UsageEnum.java"


# static fields
.field public static final DIRECTORYOPERATION:Lorg/apache/ldap/common/schema/UsageEnum;

.field public static final DIRECTORYOPERATION_VAL:I = 0x1

.field public static final DISTRIBUTEDOPERATION:Lorg/apache/ldap/common/schema/UsageEnum;

.field public static final DISTRIBUTEDOPERATION_VAL:I = 0x2

.field public static final DSAOPERATION:Lorg/apache/ldap/common/schema/UsageEnum;

.field public static final DSAOPERATION_VAL:I = 0x3

.field public static final USERAPPLICATIONS:Lorg/apache/ldap/common/schema/UsageEnum;

.field public static final USERAPPLICATIONS_VAL:I

.field static synthetic class$org$apache$ldap$common$schema$UsageEnum:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Lorg/apache/ldap/common/schema/UsageEnum;

    const-string v1, "userApplications"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/schema/UsageEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/schema/UsageEnum;->USERAPPLICATIONS:Lorg/apache/ldap/common/schema/UsageEnum;

    .line 56
    new-instance v0, Lorg/apache/ldap/common/schema/UsageEnum;

    const-string v1, "directoryOperation"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/schema/UsageEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/schema/UsageEnum;->DIRECTORYOPERATION:Lorg/apache/ldap/common/schema/UsageEnum;

    .line 59
    new-instance v0, Lorg/apache/ldap/common/schema/UsageEnum;

    const-string v1, "distributedOperation"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/schema/UsageEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/schema/UsageEnum;->DISTRIBUTEDOPERATION:Lorg/apache/ldap/common/schema/UsageEnum;

    .line 62
    new-instance v0, Lorg/apache/ldap/common/schema/UsageEnum;

    const-string v1, "dSAOperation"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/apache/ldap/common/schema/UsageEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ldap/common/schema/UsageEnum;->DSAOPERATION:Lorg/apache/ldap/common/schema/UsageEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/ldap/common/util/ValuedEnum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 122
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

.method public static getUsage(Ljava/lang/String;)Lorg/apache/ldap/common/schema/UsageEnum;
    .locals 3

    .line 88
    sget-object v0, Lorg/apache/ldap/common/schema/UsageEnum;->USERAPPLICATIONS:Lorg/apache/ldap/common/schema/UsageEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/common/schema/UsageEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 93
    :cond_0
    sget-object v0, Lorg/apache/ldap/common/schema/UsageEnum;->DIRECTORYOPERATION:Lorg/apache/ldap/common/schema/UsageEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/common/schema/UsageEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 99
    :cond_1
    sget-object v0, Lorg/apache/ldap/common/schema/UsageEnum;->DISTRIBUTEDOPERATION:Lorg/apache/ldap/common/schema/UsageEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/common/schema/UsageEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    .line 105
    :cond_2
    sget-object v0, Lorg/apache/ldap/common/schema/UsageEnum;->DSAOPERATION:Lorg/apache/ldap/common/schema/UsageEnum;

    invoke-virtual {v0}, Lorg/apache/ldap/common/schema/UsageEnum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v0

    .line 110
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unknown attributeType usage string"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static list()Ljava/util/List;
    .locals 1

    .line 122
    sget-object v0, Lorg/apache/ldap/common/schema/UsageEnum;->class$org$apache$ldap$common$schema$UsageEnum:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.ldap.common.schema.UsageEnum"

    invoke-static {v0}, Lorg/apache/ldap/common/schema/UsageEnum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/schema/UsageEnum;->class$org$apache$ldap$common$schema$UsageEnum:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/ldap/common/util/EnumUtils;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static map()Ljava/util/Map;
    .locals 1

    .line 133
    sget-object v0, Lorg/apache/ldap/common/schema/UsageEnum;->class$org$apache$ldap$common$schema$UsageEnum:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.ldap.common.schema.UsageEnum"

    invoke-static {v0}, Lorg/apache/ldap/common/schema/UsageEnum;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/ldap/common/schema/UsageEnum;->class$org$apache$ldap$common$schema$UsageEnum:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/ldap/common/util/EnumUtils;->getEnumMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
