.class public final Lorg/apache/kerberos/messages/value/LastRequestType;
.super Ljava/lang/Object;
.source "LastRequestType.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final NONE:Lorg/apache/kerberos/messages/value/LastRequestType;

.field public static final TIME_OF_INITIAL_REQ:Lorg/apache/kerberos/messages/value/LastRequestType;

.field public static final TIME_OF_INITIAL_TGT:Lorg/apache/kerberos/messages/value/LastRequestType;

.field public static final TIME_OF_LAST_RENEWAL:Lorg/apache/kerberos/messages/value/LastRequestType;

.field public static final TIME_OF_LAST_REQ:Lorg/apache/kerberos/messages/value/LastRequestType;

.field public static final TIME_OF_NEWEST_TGT:Lorg/apache/kerberos/messages/value/LastRequestType;

.field public static final TIME_OF_PASSWORD_EXP:Lorg/apache/kerberos/messages/value/LastRequestType;

.field public static final VALUES:Ljava/util/List;

.field private static final fValues:[Lorg/apache/kerberos/messages/value/LastRequestType;


# instance fields
.field private final _fName:Ljava/lang/String;

.field private final _fOrdinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 27
    new-instance v0, Lorg/apache/kerberos/messages/value/LastRequestType;

    const/4 v1, 0x0

    const-string v2, "none"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/LastRequestType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/LastRequestType;->NONE:Lorg/apache/kerberos/messages/value/LastRequestType;

    .line 28
    new-instance v1, Lorg/apache/kerberos/messages/value/LastRequestType;

    const/4 v2, 0x1

    const-string v3, "time of initial ticket"

    invoke-direct {v1, v2, v3}, Lorg/apache/kerberos/messages/value/LastRequestType;-><init>(ILjava/lang/String;)V

    sput-object v1, Lorg/apache/kerberos/messages/value/LastRequestType;->TIME_OF_INITIAL_TGT:Lorg/apache/kerberos/messages/value/LastRequestType;

    .line 29
    new-instance v2, Lorg/apache/kerberos/messages/value/LastRequestType;

    const/4 v3, 0x2

    const-string v4, "time of initial request"

    invoke-direct {v2, v3, v4}, Lorg/apache/kerberos/messages/value/LastRequestType;-><init>(ILjava/lang/String;)V

    sput-object v2, Lorg/apache/kerberos/messages/value/LastRequestType;->TIME_OF_INITIAL_REQ:Lorg/apache/kerberos/messages/value/LastRequestType;

    .line 30
    new-instance v3, Lorg/apache/kerberos/messages/value/LastRequestType;

    const/4 v4, 0x3

    const-string v5, "time of newest ticket"

    invoke-direct {v3, v4, v5}, Lorg/apache/kerberos/messages/value/LastRequestType;-><init>(ILjava/lang/String;)V

    sput-object v3, Lorg/apache/kerberos/messages/value/LastRequestType;->TIME_OF_NEWEST_TGT:Lorg/apache/kerberos/messages/value/LastRequestType;

    .line 31
    new-instance v4, Lorg/apache/kerberos/messages/value/LastRequestType;

    const/4 v5, 0x4

    const-string v6, "time of last renewal"

    invoke-direct {v4, v5, v6}, Lorg/apache/kerberos/messages/value/LastRequestType;-><init>(ILjava/lang/String;)V

    sput-object v4, Lorg/apache/kerberos/messages/value/LastRequestType;->TIME_OF_LAST_RENEWAL:Lorg/apache/kerberos/messages/value/LastRequestType;

    .line 32
    new-instance v5, Lorg/apache/kerberos/messages/value/LastRequestType;

    const/4 v6, 0x5

    const-string v7, "time of last request"

    invoke-direct {v5, v6, v7}, Lorg/apache/kerberos/messages/value/LastRequestType;-><init>(ILjava/lang/String;)V

    sput-object v5, Lorg/apache/kerberos/messages/value/LastRequestType;->TIME_OF_LAST_REQ:Lorg/apache/kerberos/messages/value/LastRequestType;

    .line 33
    new-instance v6, Lorg/apache/kerberos/messages/value/LastRequestType;

    const/4 v7, 0x6

    const-string v8, "time of password expiration"

    invoke-direct {v6, v7, v8}, Lorg/apache/kerberos/messages/value/LastRequestType;-><init>(ILjava/lang/String;)V

    sput-object v6, Lorg/apache/kerberos/messages/value/LastRequestType;->TIME_OF_PASSWORD_EXP:Lorg/apache/kerberos/messages/value/LastRequestType;

    .line 69
    filled-new-array/range {v0 .. v6}, [Lorg/apache/kerberos/messages/value/LastRequestType;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/value/LastRequestType;->fValues:[Lorg/apache/kerberos/messages/value/LastRequestType;

    .line 73
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/value/LastRequestType;->VALUES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Lorg/apache/kerberos/messages/value/LastRequestType;->_fOrdinal:I

    .line 63
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/LastRequestType;->_fName:Ljava/lang/String;

    return-void
.end method

.method public static getTypeByOrdinal(I)Lorg/apache/kerberos/messages/value/LastRequestType;
    .locals 3

    const/4 v0, 0x0

    .line 44
    :goto_0
    sget-object v1, Lorg/apache/kerberos/messages/value/LastRequestType;->fValues:[Lorg/apache/kerberos/messages/value/LastRequestType;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 45
    aget-object v1, v1, v0

    iget v2, v1, Lorg/apache/kerberos/messages/value/LastRequestType;->_fOrdinal:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_1
    sget-object p0, Lorg/apache/kerberos/messages/value/LastRequestType;->NONE:Lorg/apache/kerberos/messages/value/LastRequestType;

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 40
    iget v0, p0, Lorg/apache/kerberos/messages/value/LastRequestType;->_fOrdinal:I

    check-cast p1, Lorg/apache/kerberos/messages/value/LastRequestType;

    iget p1, p1, Lorg/apache/kerberos/messages/value/LastRequestType;->_fOrdinal:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/apache/kerberos/messages/value/LastRequestType;->_fOrdinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/kerberos/messages/value/LastRequestType;->_fName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/kerberos/messages/value/LastRequestType;->_fOrdinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
