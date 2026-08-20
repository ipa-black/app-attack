.class public final Lorg/apache/kerberos/messages/value/AuthorizationType;
.super Ljava/lang/Object;
.source "AuthorizationType.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final IF_RELEVANT:Lorg/apache/kerberos/messages/value/AuthorizationType;

.field public static final INTENDED_FOR_APPLICATION_CLASS:Lorg/apache/kerberos/messages/value/AuthorizationType;

.field public static final INTENDED_FOR_SERVER:Lorg/apache/kerberos/messages/value/AuthorizationType;

.field public static final IN_TICKET_EXTENSIONS:Lorg/apache/kerberos/messages/value/AuthorizationType;

.field public static final KDC_ISSUED:Lorg/apache/kerberos/messages/value/AuthorizationType;

.field public static final MANDATORY_TICKET_EXTENSIONS:Lorg/apache/kerberos/messages/value/AuthorizationType;

.field public static final NULL:Lorg/apache/kerberos/messages/value/AuthorizationType;

.field public static final OR:Lorg/apache/kerberos/messages/value/AuthorizationType;

.field public static final OSF_DCE:Lorg/apache/kerberos/messages/value/AuthorizationType;

.field public static final SESAME:Lorg/apache/kerberos/messages/value/AuthorizationType;

.field public static final VALUES:Ljava/util/List;

.field private static final fValues:[Lorg/apache/kerberos/messages/value/AuthorizationType;


# instance fields
.field private final _fName:Ljava/lang/String;

.field private final _fOrdinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 27
    new-instance v0, Lorg/apache/kerberos/messages/value/AuthorizationType;

    const/4 v1, 0x0

    const-string v2, "null"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/AuthorizationType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/AuthorizationType;->NULL:Lorg/apache/kerberos/messages/value/AuthorizationType;

    .line 28
    new-instance v1, Lorg/apache/kerberos/messages/value/AuthorizationType;

    const/4 v2, 0x1

    const-string v3, "if relevant"

    invoke-direct {v1, v2, v3}, Lorg/apache/kerberos/messages/value/AuthorizationType;-><init>(ILjava/lang/String;)V

    sput-object v1, Lorg/apache/kerberos/messages/value/AuthorizationType;->IF_RELEVANT:Lorg/apache/kerberos/messages/value/AuthorizationType;

    .line 29
    new-instance v2, Lorg/apache/kerberos/messages/value/AuthorizationType;

    const/4 v3, 0x2

    const-string v4, "intended for server"

    invoke-direct {v2, v3, v4}, Lorg/apache/kerberos/messages/value/AuthorizationType;-><init>(ILjava/lang/String;)V

    sput-object v2, Lorg/apache/kerberos/messages/value/AuthorizationType;->INTENDED_FOR_SERVER:Lorg/apache/kerberos/messages/value/AuthorizationType;

    .line 30
    new-instance v3, Lorg/apache/kerberos/messages/value/AuthorizationType;

    const/4 v4, 0x3

    const-string v5, "intended for application class"

    invoke-direct {v3, v4, v5}, Lorg/apache/kerberos/messages/value/AuthorizationType;-><init>(ILjava/lang/String;)V

    sput-object v3, Lorg/apache/kerberos/messages/value/AuthorizationType;->INTENDED_FOR_APPLICATION_CLASS:Lorg/apache/kerberos/messages/value/AuthorizationType;

    .line 31
    new-instance v4, Lorg/apache/kerberos/messages/value/AuthorizationType;

    const/4 v5, 0x4

    const-string v6, "kdc issued"

    invoke-direct {v4, v5, v6}, Lorg/apache/kerberos/messages/value/AuthorizationType;-><init>(ILjava/lang/String;)V

    sput-object v4, Lorg/apache/kerberos/messages/value/AuthorizationType;->KDC_ISSUED:Lorg/apache/kerberos/messages/value/AuthorizationType;

    .line 32
    new-instance v5, Lorg/apache/kerberos/messages/value/AuthorizationType;

    const/4 v6, 0x5

    const-string v7, "or"

    invoke-direct {v5, v6, v7}, Lorg/apache/kerberos/messages/value/AuthorizationType;-><init>(ILjava/lang/String;)V

    sput-object v5, Lorg/apache/kerberos/messages/value/AuthorizationType;->OR:Lorg/apache/kerberos/messages/value/AuthorizationType;

    .line 33
    new-instance v6, Lorg/apache/kerberos/messages/value/AuthorizationType;

    const/4 v7, 0x6

    const-string v8, "mandatory ticket extensions"

    invoke-direct {v6, v7, v8}, Lorg/apache/kerberos/messages/value/AuthorizationType;-><init>(ILjava/lang/String;)V

    sput-object v6, Lorg/apache/kerberos/messages/value/AuthorizationType;->MANDATORY_TICKET_EXTENSIONS:Lorg/apache/kerberos/messages/value/AuthorizationType;

    .line 34
    new-instance v7, Lorg/apache/kerberos/messages/value/AuthorizationType;

    const/4 v8, 0x7

    const-string v9, "in ticket extensions"

    invoke-direct {v7, v8, v9}, Lorg/apache/kerberos/messages/value/AuthorizationType;-><init>(ILjava/lang/String;)V

    sput-object v7, Lorg/apache/kerberos/messages/value/AuthorizationType;->IN_TICKET_EXTENSIONS:Lorg/apache/kerberos/messages/value/AuthorizationType;

    .line 35
    new-instance v8, Lorg/apache/kerberos/messages/value/AuthorizationType;

    const/16 v9, 0x40

    const-string v10, "OSF DCE"

    invoke-direct {v8, v9, v10}, Lorg/apache/kerberos/messages/value/AuthorizationType;-><init>(ILjava/lang/String;)V

    sput-object v8, Lorg/apache/kerberos/messages/value/AuthorizationType;->OSF_DCE:Lorg/apache/kerberos/messages/value/AuthorizationType;

    .line 36
    new-instance v9, Lorg/apache/kerberos/messages/value/AuthorizationType;

    const/16 v10, 0x41

    const-string v11, "sesame"

    invoke-direct {v9, v10, v11}, Lorg/apache/kerberos/messages/value/AuthorizationType;-><init>(ILjava/lang/String;)V

    sput-object v9, Lorg/apache/kerberos/messages/value/AuthorizationType;->SESAME:Lorg/apache/kerberos/messages/value/AuthorizationType;

    .line 72
    filled-new-array/range {v0 .. v9}, [Lorg/apache/kerberos/messages/value/AuthorizationType;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/value/AuthorizationType;->fValues:[Lorg/apache/kerberos/messages/value/AuthorizationType;

    .line 76
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/value/AuthorizationType;->VALUES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Lorg/apache/kerberos/messages/value/AuthorizationType;->_fOrdinal:I

    .line 66
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/AuthorizationType;->_fName:Ljava/lang/String;

    return-void
.end method

.method public static getTypeByOrdinal(I)Lorg/apache/kerberos/messages/value/AuthorizationType;
    .locals 3

    const/4 v0, 0x0

    .line 47
    :goto_0
    sget-object v1, Lorg/apache/kerberos/messages/value/AuthorizationType;->fValues:[Lorg/apache/kerberos/messages/value/AuthorizationType;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 48
    aget-object v1, v1, v0

    iget v2, v1, Lorg/apache/kerberos/messages/value/AuthorizationType;->_fOrdinal:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_1
    sget-object p0, Lorg/apache/kerberos/messages/value/AuthorizationType;->NULL:Lorg/apache/kerberos/messages/value/AuthorizationType;

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 43
    iget v0, p0, Lorg/apache/kerberos/messages/value/AuthorizationType;->_fOrdinal:I

    check-cast p1, Lorg/apache/kerberos/messages/value/AuthorizationType;

    iget p1, p1, Lorg/apache/kerberos/messages/value/AuthorizationType;->_fOrdinal:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 54
    iget v0, p0, Lorg/apache/kerberos/messages/value/AuthorizationType;->_fOrdinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/kerberos/messages/value/AuthorizationType;->_fName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/apache/kerberos/messages/value/AuthorizationType;->_fOrdinal:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
