.class public Lorg/apache/asn1/ber/TypeClass;
.super Lorg/apache/commons/lang/enum/ValuedEnum;
.source "TypeClass.java"


# static fields
.field public static final APPLICATION:Lorg/apache/asn1/ber/TypeClass;

.field public static final APPLICATION_VAL:I = 0x40

.field public static final CONTEXT_SPECIFIC:Lorg/apache/asn1/ber/TypeClass;

.field public static final CONTEXT_SPECIFIC_VAL:I = 0x80

.field public static final PRIVATE:Lorg/apache/asn1/ber/TypeClass;

.field public static final PRIVATE_VAL:I = 0xc0

.field public static final UNIVERSAL:Lorg/apache/asn1/ber/TypeClass;

.field public static final UNIVERSAL_VAL:I

.field static synthetic class$org$apache$asn1$ber$TypeClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    new-instance v0, Lorg/apache/asn1/ber/TypeClass;

    const-string v1, "UNIVERSAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/asn1/ber/TypeClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/asn1/ber/TypeClass;->UNIVERSAL:Lorg/apache/asn1/ber/TypeClass;

    .line 56
    new-instance v0, Lorg/apache/asn1/ber/TypeClass;

    const-string v1, "APPLICATION"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v2}, Lorg/apache/asn1/ber/TypeClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/asn1/ber/TypeClass;->APPLICATION:Lorg/apache/asn1/ber/TypeClass;

    .line 59
    new-instance v0, Lorg/apache/asn1/ber/TypeClass;

    const-string v1, "CONTEXT_SPECIFIC"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v2}, Lorg/apache/asn1/ber/TypeClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/asn1/ber/TypeClass;->CONTEXT_SPECIFIC:Lorg/apache/asn1/ber/TypeClass;

    .line 62
    new-instance v0, Lorg/apache/asn1/ber/TypeClass;

    const-string v1, "PRIVATE"

    const/16 v2, 0xc0

    invoke-direct {v0, v1, v2}, Lorg/apache/asn1/ber/TypeClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/asn1/ber/TypeClass;->PRIVATE:Lorg/apache/asn1/ber/TypeClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/enum/ValuedEnum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 138
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

.method public static getTypeClass(I)Lorg/apache/asn1/ber/TypeClass;
    .locals 2

    const/16 v0, 0xc0

    and-int/2addr p0, v0

    if-eqz p0, :cond_3

    const/16 v1, 0x40

    if-eq p0, v1, :cond_2

    const/16 v1, 0x80

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 176
    :cond_0
    sget-object p0, Lorg/apache/asn1/ber/TypeClass;->PRIVATE:Lorg/apache/asn1/ber/TypeClass;

    goto :goto_0

    .line 173
    :cond_1
    sget-object p0, Lorg/apache/asn1/ber/TypeClass;->CONTEXT_SPECIFIC:Lorg/apache/asn1/ber/TypeClass;

    goto :goto_0

    .line 170
    :cond_2
    sget-object p0, Lorg/apache/asn1/ber/TypeClass;->APPLICATION:Lorg/apache/asn1/ber/TypeClass;

    goto :goto_0

    .line 167
    :cond_3
    sget-object p0, Lorg/apache/asn1/ber/TypeClass;->UNIVERSAL:Lorg/apache/asn1/ber/TypeClass;

    :goto_0
    return-object p0
.end method

.method public static getTypeClass(Ljava/lang/String;)Lorg/apache/asn1/ber/TypeClass;
    .locals 5

    .line 88
    sget-object v0, Lorg/apache/asn1/ber/TypeClass;->APPLICATION:Lorg/apache/asn1/ber/TypeClass;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/TypeClass;->getName()Ljava/lang/String;

    move-result-object v1

    if-ne p0, v1, :cond_0

    return-object v0

    .line 92
    :cond_0
    sget-object v1, Lorg/apache/asn1/ber/TypeClass;->CONTEXT_SPECIFIC:Lorg/apache/asn1/ber/TypeClass;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/TypeClass;->getName()Ljava/lang/String;

    move-result-object v2

    if-ne p0, v2, :cond_1

    return-object v1

    .line 96
    :cond_1
    sget-object v2, Lorg/apache/asn1/ber/TypeClass;->PRIVATE:Lorg/apache/asn1/ber/TypeClass;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/TypeClass;->getName()Ljava/lang/String;

    move-result-object v3

    if-ne p0, v3, :cond_2

    return-object v2

    .line 100
    :cond_2
    sget-object v3, Lorg/apache/asn1/ber/TypeClass;->UNIVERSAL:Lorg/apache/asn1/ber/TypeClass;

    invoke-virtual {v3}, Lorg/apache/asn1/ber/TypeClass;->getName()Ljava/lang/String;

    move-result-object v4

    if-ne p0, v4, :cond_3

    return-object v3

    .line 105
    :cond_3
    invoke-virtual {v2}, Lorg/apache/asn1/ber/TypeClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-object v2

    .line 110
    :cond_4
    invoke-virtual {v3}, Lorg/apache/asn1/ber/TypeClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v3

    .line 115
    :cond_5
    invoke-virtual {v0}, Lorg/apache/asn1/ber/TypeClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-object v0

    .line 120
    :cond_6
    invoke-virtual {v1}, Lorg/apache/asn1/ber/TypeClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object v1

    .line 126
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unknown type class name"

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

    .line 138
    sget-object v0, Lorg/apache/asn1/ber/TypeClass;->class$org$apache$asn1$ber$TypeClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.asn1.ber.TypeClass"

    invoke-static {v0}, Lorg/apache/asn1/ber/TypeClass;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/asn1/ber/TypeClass;->class$org$apache$asn1$ber$TypeClass:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/lang/enum/EnumUtils;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static map()Ljava/util/Map;
    .locals 1

    .line 149
    sget-object v0, Lorg/apache/asn1/ber/TypeClass;->class$org$apache$asn1$ber$TypeClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.asn1.ber.TypeClass"

    invoke-static {v0}, Lorg/apache/asn1/ber/TypeClass;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/asn1/ber/TypeClass;->class$org$apache$asn1$ber$TypeClass:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/lang/enum/EnumUtils;->getEnumMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
