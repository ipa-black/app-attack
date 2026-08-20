.class public final Lorg/apache/kerberos/messages/value/SamType;
.super Ljava/lang/Object;
.source "SamType.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final PA_SAM_TYPE_APACHE:Lorg/apache/kerberos/messages/value/SamType;

.field public static final PA_SAM_TYPE_CRYPTOCARD:Lorg/apache/kerberos/messages/value/SamType;

.field public static final PA_SAM_TYPE_DIGI_PATH:Lorg/apache/kerberos/messages/value/SamType;

.field public static final PA_SAM_TYPE_ENIGMA:Lorg/apache/kerberos/messages/value/SamType;

.field public static final PA_SAM_TYPE_SECURID:Lorg/apache/kerberos/messages/value/SamType;

.field public static final PA_SAM_TYPE_SKEY:Lorg/apache/kerberos/messages/value/SamType;

.field public static final PA_SAM_TYPE_SKEY_K0:Lorg/apache/kerberos/messages/value/SamType;

.field public static final VALUES:Ljava/util/List;

.field private static final values:[Lorg/apache/kerberos/messages/value/SamType;


# instance fields
.field private final name:Ljava/lang/String;

.field private final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 39
    new-instance v0, Lorg/apache/kerberos/messages/value/SamType;

    const/4 v1, 0x1

    const-string v2, "Enigma Logic"

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/SamType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/kerberos/messages/value/SamType;->PA_SAM_TYPE_ENIGMA:Lorg/apache/kerberos/messages/value/SamType;

    .line 42
    new-instance v1, Lorg/apache/kerberos/messages/value/SamType;

    const/4 v2, 0x2

    const-string v3, "Digital Pathways"

    invoke-direct {v1, v2, v3}, Lorg/apache/kerberos/messages/value/SamType;-><init>(ILjava/lang/String;)V

    sput-object v1, Lorg/apache/kerberos/messages/value/SamType;->PA_SAM_TYPE_DIGI_PATH:Lorg/apache/kerberos/messages/value/SamType;

    .line 45
    new-instance v2, Lorg/apache/kerberos/messages/value/SamType;

    const/4 v3, 0x3

    const-string v4, "S/key where KDC has key 0"

    invoke-direct {v2, v3, v4}, Lorg/apache/kerberos/messages/value/SamType;-><init>(ILjava/lang/String;)V

    sput-object v2, Lorg/apache/kerberos/messages/value/SamType;->PA_SAM_TYPE_SKEY_K0:Lorg/apache/kerberos/messages/value/SamType;

    .line 48
    new-instance v3, Lorg/apache/kerberos/messages/value/SamType;

    const/4 v4, 0x4

    const-string v5, "Traditional S/Key"

    invoke-direct {v3, v4, v5}, Lorg/apache/kerberos/messages/value/SamType;-><init>(ILjava/lang/String;)V

    sput-object v3, Lorg/apache/kerberos/messages/value/SamType;->PA_SAM_TYPE_SKEY:Lorg/apache/kerberos/messages/value/SamType;

    .line 51
    new-instance v4, Lorg/apache/kerberos/messages/value/SamType;

    const/4 v5, 0x5

    const-string v6, "Security Dynamics"

    invoke-direct {v4, v5, v6}, Lorg/apache/kerberos/messages/value/SamType;-><init>(ILjava/lang/String;)V

    sput-object v4, Lorg/apache/kerberos/messages/value/SamType;->PA_SAM_TYPE_SECURID:Lorg/apache/kerberos/messages/value/SamType;

    .line 54
    new-instance v5, Lorg/apache/kerberos/messages/value/SamType;

    const/4 v6, 0x6

    const-string v7, "CRYPTOCard"

    invoke-direct {v5, v6, v7}, Lorg/apache/kerberos/messages/value/SamType;-><init>(ILjava/lang/String;)V

    sput-object v5, Lorg/apache/kerberos/messages/value/SamType;->PA_SAM_TYPE_CRYPTOCARD:Lorg/apache/kerberos/messages/value/SamType;

    .line 57
    new-instance v6, Lorg/apache/kerberos/messages/value/SamType;

    const/4 v7, 0x7

    const-string v8, "Apache Software Foundation"

    invoke-direct {v6, v7, v8}, Lorg/apache/kerberos/messages/value/SamType;-><init>(ILjava/lang/String;)V

    sput-object v6, Lorg/apache/kerberos/messages/value/SamType;->PA_SAM_TYPE_APACHE:Lorg/apache/kerberos/messages/value/SamType;

    .line 60
    filled-new-array/range {v0 .. v6}, [Lorg/apache/kerberos/messages/value/SamType;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/value/SamType;->values:[Lorg/apache/kerberos/messages/value/SamType;

    .line 67
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/kerberos/messages/value/SamType;->VALUES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lorg/apache/kerberos/messages/value/SamType;->ordinal:I

    .line 82
    iput-object p2, p0, Lorg/apache/kerberos/messages/value/SamType;->name:Ljava/lang/String;

    return-void
.end method

.method public static getTypeByOrdinal(I)Lorg/apache/kerberos/messages/value/SamType;
    .locals 3

    const/4 v0, 0x0

    .line 118
    :goto_0
    sget-object v1, Lorg/apache/kerberos/messages/value/SamType;->values:[Lorg/apache/kerberos/messages/value/SamType;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 120
    aget-object v1, v1, v0

    iget v2, v1, Lorg/apache/kerberos/messages/value/SamType;->ordinal:I

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    sget-object p0, Lorg/apache/kerberos/messages/value/SamType;->PA_SAM_TYPE_APACHE:Lorg/apache/kerberos/messages/value/SamType;

    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 106
    iget v0, p0, Lorg/apache/kerberos/messages/value/SamType;->ordinal:I

    check-cast p1, Lorg/apache/kerberos/messages/value/SamType;

    iget p1, p1, Lorg/apache/kerberos/messages/value/SamType;->ordinal:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 137
    iget v0, p0, Lorg/apache/kerberos/messages/value/SamType;->ordinal:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/kerberos/messages/value/SamType;->name:Ljava/lang/String;

    return-object v0
.end method
