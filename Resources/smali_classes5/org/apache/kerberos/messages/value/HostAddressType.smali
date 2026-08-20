.class public final Lorg/apache/kerberos/messages/value/HostAddressType;
.super Ljava/lang/Object;
.source "HostAddressType.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final ADDRTYPE_APPLETALK:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_ATM:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_BAN:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_CCITT:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_CHAOS:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_DATAKIT:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_DECNET:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_DLI:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_ECMA:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_FIREFOX:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_HYLINK:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_IMPLINK:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_INET:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_INET6:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_IPX:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_LAT:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_NETBIOS:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_OSI:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_PUP:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_SNA:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_UNIX:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_VOICEVIEW:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final ADDRTYPE_XNS:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final NULL:Lorg/apache/kerberos/messages/value/HostAddressType;

.field public static final VALUES:Ljava/util/List;

.field private static final fValues:[Lorg/apache/kerberos/messages/value/HostAddressType;


# instance fields
.field private final _fName:Ljava/lang/String;

.field private final _fOrdinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 27
    new-instance v1, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "null"

    invoke-direct {v1, v2, v3}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v1, Lorg/apache/kerberos/messages/value/HostAddressType;->NULL:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 28
    new-instance v2, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "Unix"

    invoke-direct {v2, v3, v4}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v2, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_UNIX:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 29
    new-instance v3, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "Internet"

    invoke-direct {v3, v4, v5}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v3, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_INET:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 30
    new-instance v4, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "Arpanet"

    invoke-direct {v4, v5, v6}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v4, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_IMPLINK:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 31
    new-instance v5, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "PUP"

    invoke-direct {v5, v6, v7}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v5, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_PUP:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 32
    new-instance v6, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "CHAOS"

    invoke-direct {v6, v7, v8}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v6, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_CHAOS:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 33
    new-instance v7, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v6, v7

    const-string v8, "XEROX Network Services"

    const/4 v9, 0x6

    invoke-direct {v7, v9, v8}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v7, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_XNS:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 34
    new-instance v8, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v7, v8

    const-string v10, "IPX"

    invoke-direct {v8, v9, v10}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v8, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_IPX:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 35
    new-instance v9, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v8, v9

    const/4 v10, 0x7

    const-string v11, "OSI"

    invoke-direct {v9, v10, v11}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v9, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_OSI:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 36
    new-instance v10, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v9, v10

    const/16 v11, 0x8

    const-string v12, "European Computer Manufacturers"

    invoke-direct {v10, v11, v12}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v10, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_ECMA:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 37
    new-instance v11, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v10, v11

    const/16 v12, 0x9

    const-string v13, "Datakit"

    invoke-direct {v11, v12, v13}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v11, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_DATAKIT:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 38
    new-instance v12, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v11, v12

    const/16 v13, 0xa

    const-string v14, "CCITT"

    invoke-direct {v12, v13, v14}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v12, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_CCITT:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 39
    new-instance v13, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v12, v13

    const/16 v14, 0xb

    const-string v15, "SNA"

    invoke-direct {v13, v14, v15}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v13, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_SNA:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 40
    new-instance v14, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v13, v14

    const/16 v15, 0xc

    move-object/from16 v24, v0

    const-string v0, "DECnet"

    invoke-direct {v14, v15, v0}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v14, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_DECNET:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 41
    new-instance v0, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v14, v0

    const/16 v15, 0xd

    move-object/from16 v25, v1

    const-string v1, "Direct Data Link Interface"

    invoke-direct {v0, v15, v1}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_DLI:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 42
    new-instance v0, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object v15, v0

    const/16 v1, 0xe

    move-object/from16 v26, v2

    const-string v2, "LAT"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_LAT:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 43
    new-instance v0, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object/from16 v16, v0

    const/16 v1, 0xf

    const-string v2, "NSC Hyperchannel"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_HYLINK:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 44
    new-instance v0, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object/from16 v17, v0

    const/16 v1, 0x10

    const-string v2, "AppleTalk"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_APPLETALK:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 45
    new-instance v0, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object/from16 v18, v0

    const/16 v1, 0x11

    const-string v2, "NetBios"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_NETBIOS:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 46
    new-instance v0, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object/from16 v19, v0

    const/16 v1, 0x12

    const-string v2, "VoiceView"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_VOICEVIEW:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 47
    new-instance v0, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object/from16 v20, v0

    const/16 v1, 0x13

    const-string v2, "Firefox"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_FIREFOX:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 48
    new-instance v0, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object/from16 v21, v0

    const/16 v1, 0x15

    const-string v2, "Banyan"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_BAN:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 49
    new-instance v0, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object/from16 v22, v0

    const/16 v1, 0x16

    const-string v2, "ATM"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_ATM:Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 50
    new-instance v0, Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object/from16 v23, v0

    const/16 v1, 0x17

    const-string v2, "Internet Protocol V6"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/HostAddressType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/HostAddressType;->ADDRTYPE_INET6:Lorg/apache/kerberos/messages/value/HostAddressType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    .line 86
    filled-new-array/range {v0 .. v23}, [Lorg/apache/kerberos/messages/value/HostAddressType;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/value/HostAddressType;->fValues:[Lorg/apache/kerberos/messages/value/HostAddressType;

    .line 93
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/value/HostAddressType;->VALUES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lorg/apache/kerberos/messages/value/HostAddressType;->_fOrdinal:I

    .line 80
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/HostAddressType;->_fName:Ljava/lang/String;

    return-void
.end method

.method public static getTypeByOrdinal(I)Lorg/apache/kerberos/messages/value/HostAddressType;
    .locals 3

    const/4 v0, 0x0

    .line 61
    :goto_0
    sget-object v1, Lorg/apache/kerberos/messages/value/HostAddressType;->fValues:[Lorg/apache/kerberos/messages/value/HostAddressType;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 62
    aget-object v1, v1, v0

    iget v2, v1, Lorg/apache/kerberos/messages/value/HostAddressType;->_fOrdinal:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    sget-object p0, Lorg/apache/kerberos/messages/value/HostAddressType;->NULL:Lorg/apache/kerberos/messages/value/HostAddressType;

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 57
    iget v0, p0, Lorg/apache/kerberos/messages/value/HostAddressType;->_fOrdinal:I

    check-cast p1, Lorg/apache/kerberos/messages/value/HostAddressType;

    iget p1, p1, Lorg/apache/kerberos/messages/value/HostAddressType;->_fOrdinal:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 68
    iget v0, p0, Lorg/apache/kerberos/messages/value/HostAddressType;->_fOrdinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/kerberos/messages/value/HostAddressType;->_fName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/kerberos/messages/value/HostAddressType;->_fOrdinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
