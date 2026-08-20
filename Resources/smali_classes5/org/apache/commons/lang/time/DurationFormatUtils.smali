.class Lorg/apache/commons/lang/time/DurationFormatUtils;
.super Ljava/lang/Object;
.source "DurationFormatUtils.java"


# static fields
.field public static final ISO_EXTENDED_FORMAT:Lorg/apache/commons/lang/time/FastDateFormat;

.field public static final ISO_EXTENDED_FORMAT_PATTERN:Ljava/lang/String; = "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    const-string v0, "\'P\'yyyy\'Y\'M\'M\'d\'DT\'H\'H\'m\'M\'s.S\'S\'"

    invoke-static {v0}, Lorg/apache/commons/lang/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/apache/commons/lang/time/FastDateFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/time/DurationFormatUtils;->ISO_EXTENDED_FORMAT:Lorg/apache/commons/lang/time/FastDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatISO(J)Ljava/lang/String;
    .locals 5

    const-wide/32 v0, 0x36ee80

    .line 109
    div-long v0, p0, v0

    long-to-int v0, v0

    const v1, 0x36ee80

    mul-int/2addr v1, v0

    int-to-long v1, v1

    sub-long/2addr p0, v1

    const-wide/32 v1, 0xea60

    .line 111
    div-long v1, p0, v1

    long-to-int v1, v1

    const v2, 0xea60

    mul-int/2addr v2, v1

    int-to-long v2, v2

    sub-long/2addr p0, v2

    const-wide/16 v2, 0x3e8

    .line 113
    div-long v2, p0, v2

    long-to-int v2, v2

    mul-int/lit16 v3, v2, 0x3e8

    int-to-long v3, v3

    sub-long/2addr p0, v3

    long-to-int p0, p0

    .line 117
    new-instance p1, Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-direct {p1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 118
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v0, 0x3a

    .line 119
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 120
    div-int/lit8 v3, v1, 0xa

    const/16 v4, 0x30

    add-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    .line 121
    rem-int/2addr v1, v3

    add-int/2addr v1, v4

    int-to-char v1, v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 123
    div-int/lit8 v0, v2, 0xa

    add-int/2addr v0, v4

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    rem-int/2addr v2, v3

    add-int/2addr v2, v4

    int-to-char v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/16 v0, 0x2e

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ge p0, v3, :cond_0

    .line 127
    const-string v0, "00"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-ge p0, v0, :cond_1

    .line 129
    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 131
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatWords(JZZ)Ljava/lang/String;
    .locals 11

    const-wide/32 v0, 0x5265c00

    .line 156
    div-long v0, p0, v0

    const-wide/32 v2, 0x36ee80

    .line 157
    div-long v2, p0, v2

    const-wide/16 v4, 0x18

    rem-long/2addr v2, v4

    const-wide/32 v4, 0xea60

    .line 158
    div-long v4, p0, v4

    const-wide/16 v6, 0x3c

    rem-long/2addr v4, v6

    const-wide/16 v8, 0x3e8

    .line 159
    div-long/2addr p0, v8

    rem-long/2addr p0, v6

    const/4 v6, 0x4

    new-array v7, v6, [J

    const/4 v8, 0x0

    aput-wide v0, v7, v8

    const/4 v0, 0x1

    aput-wide v2, v7, v0

    const/4 v1, 0x2

    aput-wide v4, v7, v1

    const/4 v2, 0x3

    aput-wide p0, v7, v2

    .line 160
    new-array p0, v6, [Ljava/lang/String;

    const-string p1, " day "

    aput-object p1, p0, v8

    const-string p1, " hour "

    aput-object p1, p0, v0

    const-string p1, " minute "

    aput-object p1, p0, v1

    const-string p1, " second"

    aput-object p1, p0, v2

    .line 161
    new-array p1, v6, [Ljava/lang/String;

    const-string v3, " days "

    aput-object v3, p1, v8

    const-string v3, " hours "

    aput-object v3, p1, v0

    const-string v3, " minutes "

    aput-object v3, p1, v1

    const-string v1, " seconds"

    aput-object v1, p1, v2

    .line 163
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    move v2, v8

    :goto_0
    if-ge v8, v6, :cond_4

    .line 167
    aget-wide v3, v7, v8

    const-wide/16 v9, 0x0

    cmp-long v5, v3, v9

    if-nez v5, :cond_1

    const/16 v3, 0x30

    if-eqz v2, :cond_0

    if-nez p3, :cond_3

    .line 172
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, p1, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_0
    if-nez p2, :cond_3

    .line 176
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    aget-object v4, p1, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    const-wide/16 v9, 0x1

    cmp-long v2, v3, v9

    if-nez v2, :cond_2

    const/16 v2, 0x31

    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p0, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 186
    :cond_2
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p1, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    move v2, v0

    :cond_3
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 190
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
