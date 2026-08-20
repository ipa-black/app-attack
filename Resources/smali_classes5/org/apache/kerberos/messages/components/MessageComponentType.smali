.class public Lorg/apache/kerberos/messages/components/MessageComponentType;
.super Ljava/lang/Object;
.source "MessageComponentType.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final KRB_AUTHENTICATOR:Lorg/apache/kerberos/messages/components/MessageComponentType;

.field public static final KRB_ENC_AP_REP_PART:Lorg/apache/kerberos/messages/components/MessageComponentType;

.field public static final KRB_ENC_AS_REP_PART:Lorg/apache/kerberos/messages/components/MessageComponentType;

.field public static final KRB_ENC_KRB_CRED_PART:Lorg/apache/kerberos/messages/components/MessageComponentType;

.field public static final KRB_ENC_KRB_PRIV_PART:Lorg/apache/kerberos/messages/components/MessageComponentType;

.field public static final KRB_ENC_TGS_REP_PART:Lorg/apache/kerberos/messages/components/MessageComponentType;

.field public static final KRB_ENC_TKT_PART:Lorg/apache/kerberos/messages/components/MessageComponentType;

.field public static final KRB_TKT:Lorg/apache/kerberos/messages/components/MessageComponentType;

.field public static final NULL:Lorg/apache/kerberos/messages/components/MessageComponentType;

.field public static final VALUES:Ljava/util/List;

.field private static final fValues:[Lorg/apache/kerberos/messages/components/MessageComponentType;


# instance fields
.field private final _fName:Ljava/lang/String;

.field private final _fOrdinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 29
    new-instance v0, Lorg/apache/kerberos/messages/components/MessageComponentType;

    const/4 v1, 0x0

    const-string v2, "null"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/components/MessageComponentType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/components/MessageComponentType;->NULL:Lorg/apache/kerberos/messages/components/MessageComponentType;

    .line 30
    new-instance v1, Lorg/apache/kerberos/messages/components/MessageComponentType;

    const/4 v2, 0x1

    const-string v3, "ticket"

    invoke-direct {v1, v2, v3}, Lorg/apache/kerberos/messages/components/MessageComponentType;-><init>(ILjava/lang/String;)V

    sput-object v1, Lorg/apache/kerberos/messages/components/MessageComponentType;->KRB_TKT:Lorg/apache/kerberos/messages/components/MessageComponentType;

    .line 31
    new-instance v2, Lorg/apache/kerberos/messages/components/MessageComponentType;

    const/4 v3, 0x2

    const-string v4, "authenticator"

    invoke-direct {v2, v3, v4}, Lorg/apache/kerberos/messages/components/MessageComponentType;-><init>(ILjava/lang/String;)V

    sput-object v2, Lorg/apache/kerberos/messages/components/MessageComponentType;->KRB_AUTHENTICATOR:Lorg/apache/kerberos/messages/components/MessageComponentType;

    .line 32
    new-instance v3, Lorg/apache/kerberos/messages/components/MessageComponentType;

    const/4 v4, 0x3

    const-string v5, "encrypted ticket part"

    invoke-direct {v3, v4, v5}, Lorg/apache/kerberos/messages/components/MessageComponentType;-><init>(ILjava/lang/String;)V

    sput-object v3, Lorg/apache/kerberos/messages/components/MessageComponentType;->KRB_ENC_TKT_PART:Lorg/apache/kerberos/messages/components/MessageComponentType;

    .line 33
    new-instance v4, Lorg/apache/kerberos/messages/components/MessageComponentType;

    const/16 v5, 0x19

    const-string v6, "encrypted initial authentication part"

    invoke-direct {v4, v5, v6}, Lorg/apache/kerberos/messages/components/MessageComponentType;-><init>(ILjava/lang/String;)V

    sput-object v4, Lorg/apache/kerberos/messages/components/MessageComponentType;->KRB_ENC_AS_REP_PART:Lorg/apache/kerberos/messages/components/MessageComponentType;

    .line 34
    new-instance v5, Lorg/apache/kerberos/messages/components/MessageComponentType;

    const/16 v6, 0x1a

    const-string v7, "encrypted TGS request part"

    invoke-direct {v5, v6, v7}, Lorg/apache/kerberos/messages/components/MessageComponentType;-><init>(ILjava/lang/String;)V

    sput-object v5, Lorg/apache/kerberos/messages/components/MessageComponentType;->KRB_ENC_TGS_REP_PART:Lorg/apache/kerberos/messages/components/MessageComponentType;

    .line 35
    new-instance v6, Lorg/apache/kerberos/messages/components/MessageComponentType;

    const/16 v7, 0x1b

    const-string v8, "encrypted application request part"

    invoke-direct {v6, v7, v8}, Lorg/apache/kerberos/messages/components/MessageComponentType;-><init>(ILjava/lang/String;)V

    sput-object v6, Lorg/apache/kerberos/messages/components/MessageComponentType;->KRB_ENC_AP_REP_PART:Lorg/apache/kerberos/messages/components/MessageComponentType;

    .line 36
    new-instance v7, Lorg/apache/kerberos/messages/components/MessageComponentType;

    const/16 v8, 0x1c

    const-string v9, "encrypted application message part"

    invoke-direct {v7, v8, v9}, Lorg/apache/kerberos/messages/components/MessageComponentType;-><init>(ILjava/lang/String;)V

    sput-object v7, Lorg/apache/kerberos/messages/components/MessageComponentType;->KRB_ENC_KRB_PRIV_PART:Lorg/apache/kerberos/messages/components/MessageComponentType;

    .line 37
    new-instance v8, Lorg/apache/kerberos/messages/components/MessageComponentType;

    const/16 v9, 0x1d

    const-string v10, "encrypted credentials forward part"

    invoke-direct {v8, v9, v10}, Lorg/apache/kerberos/messages/components/MessageComponentType;-><init>(ILjava/lang/String;)V

    sput-object v8, Lorg/apache/kerberos/messages/components/MessageComponentType;->KRB_ENC_KRB_CRED_PART:Lorg/apache/kerberos/messages/components/MessageComponentType;

    .line 73
    filled-new-array/range {v0 .. v8}, [Lorg/apache/kerberos/messages/components/MessageComponentType;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/components/MessageComponentType;->fValues:[Lorg/apache/kerberos/messages/components/MessageComponentType;

    .line 77
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/components/MessageComponentType;->VALUES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lorg/apache/kerberos/messages/components/MessageComponentType;->_fOrdinal:I

    .line 67
    iput-object p2, p0, Lorg/apache/kerberos/messages/components/MessageComponentType;->_fName:Ljava/lang/String;

    return-void
.end method

.method public static getTypeByOrdinal(I)Lorg/apache/kerberos/messages/components/MessageComponentType;
    .locals 3

    const/4 v0, 0x0

    .line 48
    :goto_0
    sget-object v1, Lorg/apache/kerberos/messages/components/MessageComponentType;->fValues:[Lorg/apache/kerberos/messages/components/MessageComponentType;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 49
    aget-object v1, v1, v0

    iget v2, v1, Lorg/apache/kerberos/messages/components/MessageComponentType;->_fOrdinal:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    sget-object p0, Lorg/apache/kerberos/messages/components/MessageComponentType;->NULL:Lorg/apache/kerberos/messages/components/MessageComponentType;

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 44
    iget v0, p0, Lorg/apache/kerberos/messages/components/MessageComponentType;->_fOrdinal:I

    check-cast p1, Lorg/apache/kerberos/messages/components/MessageComponentType;

    iget p1, p1, Lorg/apache/kerberos/messages/components/MessageComponentType;->_fOrdinal:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/apache/kerberos/messages/components/MessageComponentType;->_fOrdinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/kerberos/messages/components/MessageComponentType;->_fName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/kerberos/messages/components/MessageComponentType;->_fOrdinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
