.class public Lorg/apache/kerberos/messages/value/KerberosTime;
.super Ljava/lang/Object;
.source "KerberosTime.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final INFINITY:Lorg/apache/kerberos/messages/value/KerberosTime;


# instance fields
.field private _localTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lorg/apache/kerberos/messages/value/KerberosTime;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>(J)V

    sput-object v0, Lorg/apache/kerberos/messages/value/KerberosTime;->INFINITY:Lorg/apache/kerberos/messages/value/KerberosTime;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 32
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 55
    :cond_0
    check-cast p1, Lorg/apache/kerberos/messages/value/KerberosTime;

    .line 58
    iget-wide v1, p0, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    iget-wide v3, p1, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    cmp-long p1, v1, v3

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public equals(Lorg/apache/kerberos/messages/value/KerberosTime;)Z
    .locals 4

    .line 88
    iget-wide v0, p0, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    iget-wide v2, p1, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getTime()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    return-wide v0
.end method

.method public greaterThan(Lorg/apache/kerberos/messages/value/KerberosTime;)Z
    .locals 4

    .line 80
    iget-wide v0, p0, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    iget-wide v2, p1, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isInClockSkew(J)Z
    .locals 5

    .line 75
    new-instance v0, Lorg/apache/kerberos/messages/value/KerberosTime;

    invoke-direct {v0}, Lorg/apache/kerberos/messages/value/KerberosTime;-><init>()V

    .line 76
    iget-wide v1, p0, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    iget-wide v3, v0, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isZero()Z
    .locals 4

    .line 92
    iget-wide v0, p0, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lessThan(Lorg/apache/kerberos/messages/value/KerberosTime;)Z
    .locals 4

    .line 84
    iget-wide v0, p0, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    iget-wide v2, p1, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toDate()Ljava/util/Date;
    .locals 3

    .line 71
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lorg/apache/kerberos/messages/value/KerberosTime;->_localTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method
