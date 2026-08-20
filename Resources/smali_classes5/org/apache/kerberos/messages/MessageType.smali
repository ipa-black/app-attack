.class public final Lorg/apache/kerberos/messages/MessageType;
.super Ljava/lang/Object;
.source "MessageType.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final ENC_AP_REP_PART:Lorg/apache/kerberos/messages/MessageType;

.field public static final ENC_PRIV_PART:Lorg/apache/kerberos/messages/MessageType;

.field public static final KRB_AP_REP:Lorg/apache/kerberos/messages/MessageType;

.field public static final KRB_AP_REQ:Lorg/apache/kerberos/messages/MessageType;

.field public static final KRB_AS_REP:Lorg/apache/kerberos/messages/MessageType;

.field public static final KRB_AS_REQ:Lorg/apache/kerberos/messages/MessageType;

.field public static final KRB_CRED:Lorg/apache/kerberos/messages/MessageType;

.field public static final KRB_ERROR:Lorg/apache/kerberos/messages/MessageType;

.field public static final KRB_PRIV:Lorg/apache/kerberos/messages/MessageType;

.field public static final KRB_SAFE:Lorg/apache/kerberos/messages/MessageType;

.field public static final KRB_TGS_REP:Lorg/apache/kerberos/messages/MessageType;

.field public static final KRB_TGS_REQ:Lorg/apache/kerberos/messages/MessageType;

.field public static final NULL:Lorg/apache/kerberos/messages/MessageType;

.field public static final VALUES:Ljava/util/List;

.field private static final values:[Lorg/apache/kerberos/messages/MessageType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 31
    new-instance v0, Lorg/apache/kerberos/messages/MessageType;

    const/4 v1, 0x0

    const-string v2, "null"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/MessageType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/MessageType;->NULL:Lorg/apache/kerberos/messages/MessageType;

    .line 32
    new-instance v1, Lorg/apache/kerberos/messages/MessageType;

    const/16 v2, 0xa

    const-string v3, "initial authentication request"

    invoke-direct {v1, v2, v3}, Lorg/apache/kerberos/messages/MessageType;-><init>(ILjava/lang/String;)V

    sput-object v1, Lorg/apache/kerberos/messages/MessageType;->KRB_AS_REQ:Lorg/apache/kerberos/messages/MessageType;

    .line 33
    new-instance v2, Lorg/apache/kerberos/messages/MessageType;

    const/16 v3, 0xb

    const-string v4, "initial authentication response"

    invoke-direct {v2, v3, v4}, Lorg/apache/kerberos/messages/MessageType;-><init>(ILjava/lang/String;)V

    sput-object v2, Lorg/apache/kerberos/messages/MessageType;->KRB_AS_REP:Lorg/apache/kerberos/messages/MessageType;

    .line 34
    new-instance v3, Lorg/apache/kerberos/messages/MessageType;

    const/16 v4, 0xc

    const-string v5, "request for authentication based on TGT"

    invoke-direct {v3, v4, v5}, Lorg/apache/kerberos/messages/MessageType;-><init>(ILjava/lang/String;)V

    sput-object v3, Lorg/apache/kerberos/messages/MessageType;->KRB_TGS_REQ:Lorg/apache/kerberos/messages/MessageType;

    .line 35
    new-instance v4, Lorg/apache/kerberos/messages/MessageType;

    const/16 v5, 0xd

    const-string v6, "response to authentication based on TGT"

    invoke-direct {v4, v5, v6}, Lorg/apache/kerberos/messages/MessageType;-><init>(ILjava/lang/String;)V

    sput-object v4, Lorg/apache/kerberos/messages/MessageType;->KRB_TGS_REP:Lorg/apache/kerberos/messages/MessageType;

    .line 36
    new-instance v5, Lorg/apache/kerberos/messages/MessageType;

    const/16 v6, 0xe

    const-string v7, "application request"

    invoke-direct {v5, v6, v7}, Lorg/apache/kerberos/messages/MessageType;-><init>(ILjava/lang/String;)V

    sput-object v5, Lorg/apache/kerberos/messages/MessageType;->KRB_AP_REQ:Lorg/apache/kerberos/messages/MessageType;

    .line 37
    new-instance v6, Lorg/apache/kerberos/messages/MessageType;

    const/16 v7, 0xf

    const-string v8, "application response"

    invoke-direct {v6, v7, v8}, Lorg/apache/kerberos/messages/MessageType;-><init>(ILjava/lang/String;)V

    sput-object v6, Lorg/apache/kerberos/messages/MessageType;->KRB_AP_REP:Lorg/apache/kerberos/messages/MessageType;

    .line 38
    new-instance v7, Lorg/apache/kerberos/messages/MessageType;

    const/16 v8, 0x14

    const-string v9, "safe (checksummed) application message"

    invoke-direct {v7, v8, v9}, Lorg/apache/kerberos/messages/MessageType;-><init>(ILjava/lang/String;)V

    sput-object v7, Lorg/apache/kerberos/messages/MessageType;->KRB_SAFE:Lorg/apache/kerberos/messages/MessageType;

    .line 39
    new-instance v8, Lorg/apache/kerberos/messages/MessageType;

    const/16 v9, 0x15

    const-string v10, "private (encrypted) application message"

    invoke-direct {v8, v9, v10}, Lorg/apache/kerberos/messages/MessageType;-><init>(ILjava/lang/String;)V

    sput-object v8, Lorg/apache/kerberos/messages/MessageType;->KRB_PRIV:Lorg/apache/kerberos/messages/MessageType;

    .line 40
    new-instance v9, Lorg/apache/kerberos/messages/MessageType;

    const/16 v10, 0x16

    const-string v11, "private (encrypted) message to forward credentials"

    invoke-direct {v9, v10, v11}, Lorg/apache/kerberos/messages/MessageType;-><init>(ILjava/lang/String;)V

    sput-object v9, Lorg/apache/kerberos/messages/MessageType;->KRB_CRED:Lorg/apache/kerberos/messages/MessageType;

    .line 41
    new-instance v10, Lorg/apache/kerberos/messages/MessageType;

    const/16 v11, 0x1b

    const-string v12, "encrypted application reply part"

    invoke-direct {v10, v11, v12}, Lorg/apache/kerberos/messages/MessageType;-><init>(ILjava/lang/String;)V

    sput-object v10, Lorg/apache/kerberos/messages/MessageType;->ENC_AP_REP_PART:Lorg/apache/kerberos/messages/MessageType;

    .line 42
    new-instance v11, Lorg/apache/kerberos/messages/MessageType;

    const/16 v12, 0x1c

    const-string v13, "encrypted private message part"

    invoke-direct {v11, v12, v13}, Lorg/apache/kerberos/messages/MessageType;-><init>(ILjava/lang/String;)V

    sput-object v11, Lorg/apache/kerberos/messages/MessageType;->ENC_PRIV_PART:Lorg/apache/kerberos/messages/MessageType;

    .line 43
    new-instance v12, Lorg/apache/kerberos/messages/MessageType;

    const/16 v13, 0x1e

    const-string v14, "error response"

    invoke-direct {v12, v13, v14}, Lorg/apache/kerberos/messages/MessageType;-><init>(ILjava/lang/String;)V

    sput-object v12, Lorg/apache/kerberos/messages/MessageType;->KRB_ERROR:Lorg/apache/kerberos/messages/MessageType;

    .line 46
    filled-new-array/range {v0 .. v12}, [Lorg/apache/kerberos/messages/MessageType;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/MessageType;->values:[Lorg/apache/kerberos/messages/MessageType;

    .line 52
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/MessageType;->VALUES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lorg/apache/kerberos/messages/MessageType;->ordinal:I

    .line 66
    iput-object p2, p0, Lorg/apache/kerberos/messages/MessageType;->name:Ljava/lang/String;

    return-void
.end method

.method public static getTypeByOrdinal(I)Lorg/apache/kerberos/messages/MessageType;
    .locals 3

    const/4 v0, 0x0

    .line 81
    :goto_0
    sget-object v1, Lorg/apache/kerberos/messages/MessageType;->values:[Lorg/apache/kerberos/messages/MessageType;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 83
    aget-object v1, v1, v0

    iget v2, v1, Lorg/apache/kerberos/messages/MessageType;->ordinal:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_1
    sget-object p0, Lorg/apache/kerberos/messages/MessageType;->NULL:Lorg/apache/kerberos/messages/MessageType;

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 76
    iget v0, p0, Lorg/apache/kerberos/messages/MessageType;->ordinal:I

    check-cast p1, Lorg/apache/kerberos/messages/MessageType;

    iget p1, p1, Lorg/apache/kerberos/messages/MessageType;->ordinal:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 94
    iget v0, p0, Lorg/apache/kerberos/messages/MessageType;->ordinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/kerberos/messages/MessageType;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/kerberos/messages/MessageType;->ordinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
