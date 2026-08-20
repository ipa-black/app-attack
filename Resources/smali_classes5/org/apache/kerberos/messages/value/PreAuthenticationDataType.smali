.class public Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;
.super Ljava/lang/Object;
.source "PreAuthenticationDataType.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final NULL:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final PA_ASF3_SALT:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final PA_CYBERSAFE_SECUREID:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final PA_ENCTYPE_INFO:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final PA_ENC_TIMESTAMP:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final PA_ENC_UNIX_TIME:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final PA_GET_FROM_TYPED_DATA:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final PA_OSF_DCE:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final PA_PK_AS_REP:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final PA_PK_AS_REQ:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final PA_PW_SALT:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final PA_SANDIA_SECUREID:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final PA_SESAME:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final PA_TGS_REQ:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final PA_USE_SPECIFIED_KVNO:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final SAM_CHALLENGE:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final SAM_REDIRECT:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final SAM_RESPONSE:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

.field public static final VALUES:Ljava/util/List;

.field private static final values:[Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 31
    new-instance v1, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v0, v1

    const/4 v2, 0x0

    const-string v3, "null"

    invoke-direct {v1, v2, v3}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v1, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->NULL:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 32
    new-instance v2, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "TGS Request."

    invoke-direct {v2, v3, v4}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v2, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_TGS_REQ:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 33
    new-instance v3, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "Encrypted timestamp."

    invoke-direct {v3, v4, v5}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v3, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_ENC_TIMESTAMP:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 34
    new-instance v4, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "password salt"

    invoke-direct {v4, v5, v6}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v4, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_PW_SALT:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 35
    new-instance v5, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v4, v5

    const/4 v6, 0x5

    const-string v7, "enc unix time"

    invoke-direct {v5, v6, v7}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v5, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_ENC_UNIX_TIME:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 36
    new-instance v6, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v5, v6

    const/4 v7, 0x6

    const-string v8, "sandia secureid"

    invoke-direct {v6, v7, v8}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v6, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_SANDIA_SECUREID:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 37
    new-instance v7, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v6, v7

    const/4 v8, 0x7

    const-string v9, "sesame"

    invoke-direct {v7, v8, v9}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v7, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_SESAME:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 38
    new-instance v8, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v7, v8

    const/16 v9, 0x8

    const-string v10, "OSF DCE"

    invoke-direct {v8, v9, v10}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v8, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_OSF_DCE:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 39
    new-instance v9, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v8, v9

    const/16 v10, 0x9

    const-string v11, "cybersafe secureid"

    invoke-direct {v9, v10, v11}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v9, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_CYBERSAFE_SECUREID:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 40
    new-instance v10, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v9, v10

    const/16 v11, 0xa

    const-string v12, "ASF3 salt"

    invoke-direct {v10, v11, v12}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v10, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_ASF3_SALT:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 41
    new-instance v11, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v10, v11

    const/16 v12, 0xb

    const-string v13, "Encryption info."

    invoke-direct {v11, v12, v13}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v11, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_ENCTYPE_INFO:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 42
    new-instance v12, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v11, v12

    const/16 v13, 0xc

    const-string v14, "SAM challenge."

    invoke-direct {v12, v13, v14}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v12, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->SAM_CHALLENGE:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 43
    new-instance v13, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v12, v13

    const/16 v14, 0xd

    const-string v15, "SAM response."

    invoke-direct {v13, v14, v15}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v13, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->SAM_RESPONSE:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 44
    new-instance v14, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v13, v14

    const/16 v15, 0xe

    move-object/from16 v18, v0

    const-string v0, "PK as request"

    invoke-direct {v14, v15, v0}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v14, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_PK_AS_REQ:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 45
    new-instance v0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v14, v0

    const/16 v15, 0xf

    move-object/from16 v19, v1

    const-string v1, "PK as response"

    invoke-direct {v0, v15, v1}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_PK_AS_REP:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 46
    new-instance v0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object v15, v0

    const/16 v1, 0x14

    move-object/from16 v20, v2

    const-string v2, "use specified key version"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_USE_SPECIFIED_KVNO:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 47
    new-instance v0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object/from16 v16, v0

    const/16 v1, 0x15

    const-string v2, "SAM redirect."

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->SAM_REDIRECT:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 48
    new-instance v0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object/from16 v17, v0

    const/16 v1, 0x16

    const-string v2, "Get from typed data"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->PA_GET_FROM_TYPED_DATA:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    .line 51
    filled-new-array/range {v0 .. v17}, [Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->values:[Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    .line 59
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->VALUES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p1, p0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->ordinal:I

    .line 73
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->name:Ljava/lang/String;

    return-void
.end method

.method public static getTypeByOrdinal(I)Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;
    .locals 3

    const/4 v0, 0x0

    .line 88
    :goto_0
    sget-object v1, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->values:[Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 90
    aget-object v1, v1, v0

    iget v2, v1, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->ordinal:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    :cond_1
    sget-object p0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->NULL:Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 83
    iget v0, p0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->ordinal:I

    check-cast p1, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;

    iget p1, p1, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->ordinal:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->ordinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/kerberos/messages/value/PreAuthenticationDataType;->ordinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
