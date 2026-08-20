.class public final Lorg/apache/kerberos/messages/value/TransitedEncodingType;
.super Ljava/lang/Object;
.source "TransitedEncodingType.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final DOMAIN_X500_COMPRESS:Lorg/apache/kerberos/messages/value/TransitedEncodingType;

.field public static final NULL:Lorg/apache/kerberos/messages/value/TransitedEncodingType;

.field public static final VALUES:Ljava/util/List;

.field private static final fValues:[Lorg/apache/kerberos/messages/value/TransitedEncodingType;


# instance fields
.field private final _fName:Ljava/lang/String;

.field private final _fOrdinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    new-instance v0, Lorg/apache/kerberos/messages/value/TransitedEncodingType;

    const/4 v1, 0x0

    const-string v2, "null"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/TransitedEncodingType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->NULL:Lorg/apache/kerberos/messages/value/TransitedEncodingType;

    .line 28
    new-instance v1, Lorg/apache/kerberos/messages/value/TransitedEncodingType;

    const/4 v2, 0x1

    const-string v3, "Domain X500 compress"

    invoke-direct {v1, v2, v3}, Lorg/apache/kerberos/messages/value/TransitedEncodingType;-><init>(ILjava/lang/String;)V

    sput-object v1, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->DOMAIN_X500_COMPRESS:Lorg/apache/kerberos/messages/value/TransitedEncodingType;

    .line 64
    filled-new-array {v0, v1}, [Lorg/apache/kerberos/messages/value/TransitedEncodingType;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->fValues:[Lorg/apache/kerberos/messages/value/TransitedEncodingType;

    .line 66
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->VALUES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->_fOrdinal:I

    .line 58
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->_fName:Ljava/lang/String;

    return-void
.end method

.method public static getTypeByOrdinal(I)Lorg/apache/kerberos/messages/value/TransitedEncodingType;
    .locals 3

    const/4 v0, 0x0

    .line 39
    :goto_0
    sget-object v1, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->fValues:[Lorg/apache/kerberos/messages/value/TransitedEncodingType;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 40
    aget-object v1, v1, v0

    iget v2, v1, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->_fOrdinal:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_1
    sget-object p0, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->NULL:Lorg/apache/kerberos/messages/value/TransitedEncodingType;

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 35
    iget v0, p0, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->_fOrdinal:I

    check-cast p1, Lorg/apache/kerberos/messages/value/TransitedEncodingType;

    iget p1, p1, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->_fOrdinal:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->_fOrdinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->_fName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/kerberos/messages/value/TransitedEncodingType;->_fOrdinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
