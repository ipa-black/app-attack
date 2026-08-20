.class public Lorg/apache/ldap/common/util/EnumUtils;
.super Ljava/lang/Object;
.source "EnumUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEnum(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/ldap/common/util/Enum;
    .locals 0

    .line 52
    invoke-static {p0, p1}, Lorg/apache/ldap/common/util/Enum;->getEnum(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/ldap/common/util/Enum;

    move-result-object p0

    return-object p0
.end method

.method public static getEnum(Ljava/lang/Class;I)Lorg/apache/ldap/common/util/ValuedEnum;
    .locals 0

    .line 64
    invoke-static {p0, p1}, Lorg/apache/ldap/common/util/ValuedEnum;->getEnum(Ljava/lang/Class;I)Lorg/apache/ldap/common/util/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/ldap/common/util/ValuedEnum;

    return-object p0
.end method

.method public static getEnumList(Ljava/lang/Class;)Ljava/util/List;
    .locals 0

    .line 101
    invoke-static {p0}, Lorg/apache/ldap/common/util/Enum;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getEnumMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 0

    .line 81
    invoke-static {p0}, Lorg/apache/ldap/common/util/Enum;->getEnumMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static iterator(Ljava/lang/Class;)Ljava/util/Iterator;
    .locals 0

    .line 121
    invoke-static {p0}, Lorg/apache/ldap/common/util/Enum;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
