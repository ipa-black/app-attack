.class public final Lorg/apache/asn1/ber/BERDecoderState;
.super Lorg/apache/commons/lang/enum/ValuedEnum;
.source "BERDecoderState.java"


# static fields
.field public static final LENGTH:Lorg/apache/asn1/ber/BERDecoderState;

.field public static final LENGTH_VAL:I = 0x1

.field public static final TAG:Lorg/apache/asn1/ber/BERDecoderState;

.field public static final TAG_VAL:I = 0x0

.field public static final VALUE:Lorg/apache/asn1/ber/BERDecoderState;

.field public static final VALUE_VAL:I = 0x2

.field static synthetic class$org$apache$asn1$ber$BERDecoderState:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Lorg/apache/asn1/ber/BERDecoderState;

    const-string v1, "TAG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/asn1/ber/BERDecoderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/asn1/ber/BERDecoderState;->TAG:Lorg/apache/asn1/ber/BERDecoderState;

    .line 60
    new-instance v0, Lorg/apache/asn1/ber/BERDecoderState;

    const-string v1, "LENGTH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/asn1/ber/BERDecoderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/asn1/ber/BERDecoderState;->LENGTH:Lorg/apache/asn1/ber/BERDecoderState;

    .line 63
    new-instance v0, Lorg/apache/asn1/ber/BERDecoderState;

    const-string v1, "VALUE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/asn1/ber/BERDecoderState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/asn1/ber/BERDecoderState;->VALUE:Lorg/apache/asn1/ber/BERDecoderState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang/enum/ValuedEnum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 229
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

.method public static final getStartState()Lorg/apache/asn1/ber/BERDecoderState;
    .locals 1

    .line 162
    sget-object v0, Lorg/apache/asn1/ber/BERDecoderState;->TAG:Lorg/apache/asn1/ber/BERDecoderState;

    return-object v0
.end method

.method public static final getState(I)Lorg/apache/asn1/ber/BERDecoderState;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 260
    sget-object p0, Lorg/apache/asn1/ber/BERDecoderState;->VALUE:Lorg/apache/asn1/ber/BERDecoderState;

    return-object p0

    .line 262
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Should not be here!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 258
    :cond_1
    sget-object p0, Lorg/apache/asn1/ber/BERDecoderState;->LENGTH:Lorg/apache/asn1/ber/BERDecoderState;

    return-object p0

    .line 256
    :cond_2
    sget-object p0, Lorg/apache/asn1/ber/BERDecoderState;->TAG:Lorg/apache/asn1/ber/BERDecoderState;

    return-object p0
.end method

.method public static final getState(Ljava/lang/String;)Lorg/apache/asn1/ber/BERDecoderState;
    .locals 4

    .line 181
    sget-object v0, Lorg/apache/asn1/ber/BERDecoderState;->TAG:Lorg/apache/asn1/ber/BERDecoderState;

    invoke-virtual {v0}, Lorg/apache/asn1/ber/BERDecoderState;->getName()Ljava/lang/String;

    move-result-object v1

    if-ne p0, v1, :cond_0

    return-object v0

    .line 186
    :cond_0
    sget-object v1, Lorg/apache/asn1/ber/BERDecoderState;->LENGTH:Lorg/apache/asn1/ber/BERDecoderState;

    invoke-virtual {v1}, Lorg/apache/asn1/ber/BERDecoderState;->getName()Ljava/lang/String;

    move-result-object v2

    if-ne p0, v2, :cond_1

    return-object v1

    .line 191
    :cond_1
    sget-object v2, Lorg/apache/asn1/ber/BERDecoderState;->VALUE:Lorg/apache/asn1/ber/BERDecoderState;

    invoke-virtual {v2}, Lorg/apache/asn1/ber/BERDecoderState;->getName()Ljava/lang/String;

    move-result-object v3

    if-ne p0, v3, :cond_2

    return-object v2

    .line 202
    :cond_2
    invoke-virtual {v0}, Lorg/apache/asn1/ber/BERDecoderState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v0

    .line 207
    :cond_3
    invoke-virtual {v1}, Lorg/apache/asn1/ber/BERDecoderState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-object v1

    .line 212
    :cond_4
    invoke-virtual {v2}, Lorg/apache/asn1/ber/BERDecoderState;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object v2

    .line 217
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Unknown decoder state"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final list()Ljava/util/List;
    .locals 1

    .line 229
    sget-object v0, Lorg/apache/asn1/ber/BERDecoderState;->class$org$apache$asn1$ber$BERDecoderState:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.asn1.ber.BERDecoderState"

    invoke-static {v0}, Lorg/apache/asn1/ber/BERDecoderState;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/asn1/ber/BERDecoderState;->class$org$apache$asn1$ber$BERDecoderState:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/lang/enum/EnumUtils;->getEnumList(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static final map()Ljava/util/Map;
    .locals 1

    .line 241
    sget-object v0, Lorg/apache/asn1/ber/BERDecoderState;->class$org$apache$asn1$ber$BERDecoderState:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.asn1.ber.BERDecoderState"

    invoke-static {v0}, Lorg/apache/asn1/ber/BERDecoderState;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/asn1/ber/BERDecoderState;->class$org$apache$asn1$ber$BERDecoderState:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/commons/lang/enum/EnumUtils;->getEnumMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getNext(Z)Lorg/apache/asn1/ber/BERDecoderState;
    .locals 2

    .line 92
    invoke-virtual {p0}, Lorg/apache/asn1/ber/BERDecoderState;->getValue()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 95
    :cond_0
    sget-object p1, Lorg/apache/asn1/ber/BERDecoderState;->TAG:Lorg/apache/asn1/ber/BERDecoderState;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 103
    sget-object p1, Lorg/apache/asn1/ber/BERDecoderState;->VALUE:Lorg/apache/asn1/ber/BERDecoderState;

    goto :goto_0

    .line 107
    :cond_2
    sget-object p1, Lorg/apache/asn1/ber/BERDecoderState;->TAG:Lorg/apache/asn1/ber/BERDecoderState;

    goto :goto_0

    .line 98
    :cond_3
    sget-object p1, Lorg/apache/asn1/ber/BERDecoderState;->LENGTH:Lorg/apache/asn1/ber/BERDecoderState;

    :goto_0
    return-object p1
.end method

.method public final isEndState(Z)Z
    .locals 3

    .line 131
    invoke-virtual {p0}, Lorg/apache/asn1/ber/BERDecoderState;->getValue()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_0

    :cond_2
    :goto_0
    return v1
.end method
