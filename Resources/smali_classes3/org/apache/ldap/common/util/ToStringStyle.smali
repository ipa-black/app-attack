.class public abstract Lorg/apache/ldap/common/util/ToStringStyle;
.super Ljava/lang/Object;
.source "ToStringStyle.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/ldap/common/util/ToStringStyle$MultiLineToStringStyle;,
        Lorg/apache/ldap/common/util/ToStringStyle$SimpleToStringStyle;,
        Lorg/apache/ldap/common/util/ToStringStyle$ShortPrefixToStringStyle;,
        Lorg/apache/ldap/common/util/ToStringStyle$NoFieldNameToStringStyle;,
        Lorg/apache/ldap/common/util/ToStringStyle$DefaultToStringStyle;
    }
.end annotation


# static fields
.field public static final DEFAULT_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;

.field public static final MULTI_LINE_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;

.field public static final NO_FIELD_NAMES_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;

.field public static final SHORT_PREFIX_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;

.field public static final SIMPLE_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;


# instance fields
.field private arrayContentDetail:Z

.field private arrayEnd:Ljava/lang/String;

.field private arraySeparator:Ljava/lang/String;

.field private arrayStart:Ljava/lang/String;

.field private contentEnd:Ljava/lang/String;

.field private contentStart:Ljava/lang/String;

.field private defaultFullDetail:Z

.field private fieldNameValueSeparator:Ljava/lang/String;

.field private fieldSeparator:Ljava/lang/String;

.field private fieldSeparatorAtEnd:Z

.field private fieldSeparatorAtStart:Z

.field private nullText:Ljava/lang/String;

.field private sizeEndText:Ljava/lang/String;

.field private sizeStartText:Ljava/lang/String;

.field private summaryObjectEndText:Ljava/lang/String;

.field private summaryObjectStartText:Ljava/lang/String;

.field private useClassName:Z

.field private useFieldNames:Z

.field private useIdentityHashCode:Z

.field private useShortClassName:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Lorg/apache/ldap/common/util/ToStringStyle$DefaultToStringStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/util/ToStringStyle$DefaultToStringStyle;-><init>(Lorg/apache/ldap/common/util/ToStringStyle$1;)V

    sput-object v0, Lorg/apache/ldap/common/util/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;

    .line 61
    new-instance v0, Lorg/apache/ldap/common/util/ToStringStyle$MultiLineToStringStyle;

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/util/ToStringStyle$MultiLineToStringStyle;-><init>(Lorg/apache/ldap/common/util/ToStringStyle$1;)V

    sput-object v0, Lorg/apache/ldap/common/util/ToStringStyle;->MULTI_LINE_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;

    .line 66
    new-instance v0, Lorg/apache/ldap/common/util/ToStringStyle$NoFieldNameToStringStyle;

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/util/ToStringStyle$NoFieldNameToStringStyle;-><init>(Lorg/apache/ldap/common/util/ToStringStyle$1;)V

    sput-object v0, Lorg/apache/ldap/common/util/ToStringStyle;->NO_FIELD_NAMES_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;

    .line 71
    new-instance v0, Lorg/apache/ldap/common/util/ToStringStyle$ShortPrefixToStringStyle;

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/util/ToStringStyle$ShortPrefixToStringStyle;-><init>(Lorg/apache/ldap/common/util/ToStringStyle$1;)V

    sput-object v0, Lorg/apache/ldap/common/util/ToStringStyle;->SHORT_PREFIX_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;

    .line 76
    new-instance v0, Lorg/apache/ldap/common/util/ToStringStyle$SimpleToStringStyle;

    invoke-direct {v0, v1}, Lorg/apache/ldap/common/util/ToStringStyle$SimpleToStringStyle;-><init>(Lorg/apache/ldap/common/util/ToStringStyle$1;)V

    sput-object v0, Lorg/apache/ldap/common/util/ToStringStyle;->SIMPLE_STYLE:Lorg/apache/ldap/common/util/ToStringStyle;

    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useFieldNames:Z

    .line 86
    iput-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useClassName:Z

    const/4 v1, 0x0

    .line 91
    iput-boolean v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useShortClassName:Z

    .line 96
    iput-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useIdentityHashCode:Z

    .line 101
    const-string v2, "["

    iput-object v2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->contentStart:Ljava/lang/String;

    .line 106
    const-string v2, "]"

    iput-object v2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->contentEnd:Ljava/lang/String;

    .line 111
    const-string v2, "="

    iput-object v2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    .line 116
    iput-boolean v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldSeparatorAtStart:Z

    .line 121
    iput-boolean v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldSeparatorAtEnd:Z

    .line 126
    const-string v1, ","

    iput-object v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    .line 131
    const-string v2, "{"

    iput-object v2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 136
    iput-object v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arraySeparator:Ljava/lang/String;

    .line 141
    iput-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayContentDetail:Z

    .line 146
    const-string v1, "}"

    iput-object v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayEnd:Ljava/lang/String;

    .line 152
    iput-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->defaultFullDetail:Z

    .line 157
    const-string v0, "<null>"

    iput-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->nullText:Ljava/lang/String;

    .line 162
    const-string v0, "<size="

    iput-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->sizeStartText:Ljava/lang/String;

    .line 167
    const-string v0, ">"

    iput-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->sizeEndText:Ljava/lang/String;

    .line 172
    const-string v1, "<"

    iput-object v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    .line 177
    iput-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .locals 0

    .line 564
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 566
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 0

    .line 592
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 594
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 0

    .line 620
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 621
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 622
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 0

    .line 648
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 650
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    .line 508
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 509
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 510
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 0

    .line 480
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 482
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0

    .line 295
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 298
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/ldap/common/util/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/ldap/common/util/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 304
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .locals 0

    .line 536
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 537
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 538
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0

    .line 676
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 678
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V
    .locals 0

    .line 983
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 986
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 988
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/ldap/common/util/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 989
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto :goto_0

    .line 992
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    .line 995
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V
    .locals 0

    .line 1044
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 1047
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1049
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/ldap/common/util/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1050
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto :goto_0

    .line 1053
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    .line 1056
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V
    .locals 0

    .line 1105
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 1108
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1110
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/ldap/common/util/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1111
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 1114
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    .line 1117
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V
    .locals 0

    .line 1166
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 1169
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1171
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/ldap/common/util/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1172
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 1175
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    .line 1178
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V
    .locals 0

    .line 861
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 864
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 866
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/ldap/common/util/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 867
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto :goto_0

    .line 870
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    .line 873
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V
    .locals 0

    .line 800
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 803
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 805
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/ldap/common/util/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 806
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto :goto_0

    .line 809
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    .line 812
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0

    .line 704
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 707
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/ldap/common/util/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 710
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 713
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V
    .locals 0

    .line 922
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 925
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 927
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/ldap/common/util/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 928
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto :goto_0

    .line 931
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    .line 934
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V
    .locals 0

    .line 1227
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    if-nez p3, :cond_0

    .line 1230
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_0

    .line 1232
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/ldap/common/util/ToStringStyle;->isFullDetail(Ljava/lang/Boolean;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 1233
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 1236
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    .line 1239
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 1284
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useClassName:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 1285
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useShortClassName:Z

    if-eqz v0, :cond_0

    .line 1286
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1288
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    return-void
.end method

.method protected appendContentEnd(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1321
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendContentStart(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1312
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V
    .locals 0

    .line 578
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V
    .locals 0

    .line 606
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V
    .locals 0

    .line 634
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V
    .locals 0

    .line 662
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    .line 522
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V
    .locals 0

    .line 494
    invoke-virtual {p1, p3, p4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 427
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0

    .line 439
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 451
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V
    .locals 0

    .line 550
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V
    .locals 0

    .line 690
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 2

    .line 1008
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1009
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1011
    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1013
    :cond_0
    aget-byte v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1015
    :cond_1
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 2

    .line 1069
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1070
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1072
    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1074
    :cond_0
    aget-char v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1076
    :cond_1
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 3

    .line 1130
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1131
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1133
    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1135
    :cond_0
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1137
    :cond_1
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 2

    .line 1191
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1192
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1194
    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1196
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1198
    :cond_1
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 2

    .line 886
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 887
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 889
    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 891
    :cond_0
    aget v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 893
    :cond_1
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 3

    .line 825
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 826
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 828
    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 830
    :cond_0
    aget-wide v1, p3, v0

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 832
    :cond_1
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    .line 731
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 732
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 733
    aget-object v1, p3, v0

    if-lez v0, :cond_0

    .line 735
    iget-object v2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-nez v1, :cond_1

    .line 738
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1

    .line 741
    :cond_1
    iget-boolean v2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 744
    :cond_2
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 2

    .line 947
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 948
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 950
    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 952
    :cond_0
    aget-short v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 954
    :cond_1
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 2

    .line 1252
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 1253
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_1

    if-lez v0, :cond_0

    .line 1255
    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1257
    :cond_0
    aget-boolean v1, p3, v0

    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1259
    :cond_1
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0

    .line 252
    iget-boolean p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldSeparatorAtEnd:Z

    if-nez p2, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 255
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->appendContentEnd(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method protected appendFieldEnd(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    .line 1365
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    return-void
.end method

.method protected appendFieldSeparator(Ljava/lang/StringBuffer;)V
    .locals 1

    .line 1342
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendFieldStart(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 1

    .line 1352
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useFieldNames:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1353
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1354
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method protected appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 1

    .line 1300
    invoke-virtual {p0}, Lorg/apache/ldap/common/util/ToStringStyle;->isUseIdentityHashCode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    const/16 v0, 0x40

    .line 1301
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1302
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method protected appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    .line 327
    invoke-static {p3}, Lorg/apache/ldap/common/util/ReflectionToStringBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_0

    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p3, Ljava/lang/Character;

    if-nez v0, :cond_0

    .line 329
    invoke-static {p1, p3}, Lorg/apache/ldap/common/util/ObjectUtils;->appendIdentityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    .line 331
    :cond_0
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_2

    if-eqz p4, :cond_1

    .line 333
    check-cast p3, Ljava/util/Collection;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Collection;)V

    goto/16 :goto_0

    .line 335
    :cond_1
    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 338
    :cond_2
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_4

    if-eqz p4, :cond_3

    .line 340
    check-cast p3, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 342
    :cond_3
    check-cast p3, Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 345
    :cond_4
    instance-of v0, p3, [J

    if-eqz v0, :cond_6

    if-eqz p4, :cond_5

    .line 347
    check-cast p3, [J

    check-cast p3, [J

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 349
    :cond_5
    check-cast p3, [J

    check-cast p3, [J

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 352
    :cond_6
    instance-of v0, p3, [I

    if-eqz v0, :cond_8

    if-eqz p4, :cond_7

    .line 354
    check-cast p3, [I

    check-cast p3, [I

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 356
    :cond_7
    check-cast p3, [I

    check-cast p3, [I

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 359
    :cond_8
    instance-of v0, p3, [S

    if-eqz v0, :cond_a

    if-eqz p4, :cond_9

    .line 361
    check-cast p3, [S

    check-cast p3, [S

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 363
    :cond_9
    check-cast p3, [S

    check-cast p3, [S

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 366
    :cond_a
    instance-of v0, p3, [B

    if-eqz v0, :cond_c

    if-eqz p4, :cond_b

    .line 368
    check-cast p3, [B

    check-cast p3, [B

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 370
    :cond_b
    check-cast p3, [B

    check-cast p3, [B

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 373
    :cond_c
    instance-of v0, p3, [C

    if-eqz v0, :cond_e

    if-eqz p4, :cond_d

    .line 375
    check-cast p3, [C

    check-cast p3, [C

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_0

    .line 377
    :cond_d
    check-cast p3, [C

    check-cast p3, [C

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V

    goto/16 :goto_0

    .line 380
    :cond_e
    instance-of v0, p3, [D

    if-eqz v0, :cond_10

    if-eqz p4, :cond_f

    .line 382
    check-cast p3, [D

    check-cast p3, [D

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 384
    :cond_f
    check-cast p3, [D

    check-cast p3, [D

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V

    goto :goto_0

    .line 387
    :cond_10
    instance-of v0, p3, [F

    if-eqz v0, :cond_12

    if-eqz p4, :cond_11

    .line 389
    check-cast p3, [F

    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 391
    :cond_11
    check-cast p3, [F

    check-cast p3, [F

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V

    goto :goto_0

    .line 394
    :cond_12
    instance-of v0, p3, [Z

    if-eqz v0, :cond_14

    if-eqz p4, :cond_13

    .line 396
    check-cast p3, [Z

    check-cast p3, [Z

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 398
    :cond_13
    check-cast p3, [Z

    check-cast p3, [Z

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V

    goto :goto_0

    .line 401
    :cond_14
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p4, :cond_15

    .line 403
    check-cast p3, [Ljava/lang/Object;

    check-cast p3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 405
    :cond_15
    check-cast p3, [Ljava/lang/Object;

    check-cast p3, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_16
    if-eqz p4, :cond_17

    .line 410
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 412
    :cond_17
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    .line 1333
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->nullText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 235
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendClassName(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 236
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendIdentityHashCode(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 237
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->appendContentStart(Ljava/lang/StringBuffer;)V

    .line 238
    iget-boolean p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz p2, :cond_0

    .line 239
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    :cond_0
    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 464
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 465
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[B)V
    .locals 0

    .line 1028
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[C)V
    .locals 0

    .line 1089
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[D)V
    .locals 0

    .line 1150
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[F)V
    .locals 0

    .line 1211
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[I)V
    .locals 0

    .line 906
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[J)V
    .locals 0

    .line 845
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 784
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[S)V
    .locals 0

    .line 967
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummary(Ljava/lang/StringBuffer;Ljava/lang/String;[Z)V
    .locals 0

    .line 1272
    array-length p3, p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-void
.end method

.method protected appendSummarySize(Ljava/lang/StringBuffer;Ljava/lang/String;I)V
    .locals 0

    .line 1384
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->sizeStartText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1385
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 1386
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->sizeEndText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    .line 200
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    return-void
.end method

.method public appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 214
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->contentStart:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 215
    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->contentEnd:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    if-ltz v0, :cond_1

    if-ltz v1, :cond_1

    .line 217
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 218
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldSeparatorAtStart:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->removeLastFieldSeparator(Ljava/lang/StringBuffer;)V

    .line 221
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {p0, p1}, Lorg/apache/ldap/common/util/ToStringStyle;->appendFieldSeparator(Ljava/lang/StringBuffer;)V

    :cond_1
    return-void
.end method

.method protected getArrayEnd()Ljava/lang/String;
    .locals 1

    .line 1606
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getArraySeparator()Ljava/lang/String;
    .locals 1

    .line 1632
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arraySeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getArrayStart()Ljava/lang/String;
    .locals 1

    .line 1580
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentEnd()Ljava/lang/String;
    .locals 1

    .line 1684
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->contentEnd:Ljava/lang/String;

    return-object v0
.end method

.method protected getContentStart()Ljava/lang/String;
    .locals 1

    .line 1658
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->contentStart:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldNameValueSeparator()Ljava/lang/String;
    .locals 1

    .line 1710
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getFieldSeparator()Ljava/lang/String;
    .locals 1

    .line 1736
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    return-object v0
.end method

.method protected getNullText()Ljava/lang/String;
    .locals 1

    .line 1810
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method protected getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    .line 1420
    invoke-static {p1}, Lorg/apache/ldap/common/util/ClassUtils;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getSizeEndText()Ljava/lang/String;
    .locals 1

    .line 1871
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->sizeEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSizeStartText()Ljava/lang/String;
    .locals 1

    .line 1839
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->sizeStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectEndText()Ljava/lang/String;
    .locals 1

    .line 1935
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSummaryObjectStartText()Ljava/lang/String;
    .locals 1

    .line 1903
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    return-object v0
.end method

.method protected isArrayContentDetail()Z
    .locals 1

    .line 1560
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayContentDetail:Z

    return v0
.end method

.method protected isDefaultFullDetail()Z
    .locals 1

    .line 1539
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->defaultFullDetail:Z

    return v0
.end method

.method protected isFieldSeparatorAtEnd()Z
    .locals 1

    .line 1788
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldSeparatorAtEnd:Z

    return v0
.end method

.method protected isFieldSeparatorAtStart()Z
    .locals 1

    .line 1764
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldSeparatorAtStart:Z

    return v0
.end method

.method protected isFullDetail(Ljava/lang/Boolean;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 1405
    iget-boolean p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->defaultFullDetail:Z

    return p1

    .line 1407
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected isShortClassName()Z
    .locals 1

    .line 1466
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useShortClassName:Z

    return v0
.end method

.method protected isUseClassName()Z
    .locals 1

    .line 1434
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useClassName:Z

    return v0
.end method

.method protected isUseFieldNames()Z
    .locals 1

    .line 1518
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useFieldNames:Z

    return v0
.end method

.method protected isUseIdentityHashCode()Z
    .locals 1

    .line 1498
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useIdentityHashCode:Z

    return v0
.end method

.method protected isUseShortClassName()Z
    .locals 1

    .line 1455
    iget-boolean v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useShortClassName:Z

    return v0
.end method

.method protected reflectionAppendArrayDetail(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 757
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayStart:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 758
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 760
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-lez v1, :cond_0

    .line 762
    iget-object v3, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arraySeparator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    if-nez v2, :cond_1

    .line 765
    invoke-virtual {p0, p1, p2}, Lorg/apache/ldap/common/util/ToStringStyle;->appendNullText(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_1

    .line 768
    :cond_1
    iget-boolean v3, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayContentDetail:Z

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/apache/ldap/common/util/ToStringStyle;->appendInternal(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 771
    :cond_2
    iget-object p2, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayEnd:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method protected removeLastFieldSeparator(Ljava/lang/StringBuffer;)V
    .locals 6

    .line 265
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 266
    iget-object v1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v0, :cond_2

    if-lez v1, :cond_2

    if-lt v0, v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v2

    .line 270
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    iget-object v4, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    add-int/lit8 v5, v1, -0x1

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v0, v1

    .line 276
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected setArrayContentDetail(Z)V
    .locals 0

    .line 1569
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayContentDetail:Z

    return-void
.end method

.method protected setArrayEnd(Ljava/lang/String;)V
    .locals 1

    .line 1618
    iget-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayStart:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1619
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayStart:Ljava/lang/String;

    .line 1621
    :cond_0
    iput-object p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayEnd:Ljava/lang/String;

    return-void
.end method

.method protected setArraySeparator(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1645
    const-string p1, ""

    .line 1647
    :cond_0
    iput-object p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arraySeparator:Ljava/lang/String;

    return-void
.end method

.method protected setArrayStart(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1593
    const-string p1, ""

    .line 1595
    :cond_0
    iput-object p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->arrayStart:Ljava/lang/String;

    return-void
.end method

.method protected setContentEnd(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1697
    const-string p1, ""

    .line 1699
    :cond_0
    iput-object p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->contentEnd:Ljava/lang/String;

    return-void
.end method

.method protected setContentStart(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1671
    const-string p1, ""

    .line 1673
    :cond_0
    iput-object p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->contentStart:Ljava/lang/String;

    return-void
.end method

.method protected setDefaultFullDetail(Z)V
    .locals 0

    .line 1549
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->defaultFullDetail:Z

    return-void
.end method

.method protected setFieldNameValueSeparator(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1723
    const-string p1, ""

    .line 1725
    :cond_0
    iput-object p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldNameValueSeparator:Ljava/lang/String;

    return-void
.end method

.method protected setFieldSeparator(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1749
    const-string p1, ""

    .line 1751
    :cond_0
    iput-object p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldSeparator:Ljava/lang/String;

    return-void
.end method

.method protected setFieldSeparatorAtEnd(Z)V
    .locals 0

    .line 1799
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldSeparatorAtEnd:Z

    return-void
.end method

.method protected setFieldSeparatorAtStart(Z)V
    .locals 0

    .line 1775
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->fieldSeparatorAtStart:Z

    return-void
.end method

.method protected setNullText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1823
    const-string p1, ""

    .line 1825
    :cond_0
    iput-object p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->nullText:Ljava/lang/String;

    return-void
.end method

.method protected setShortClassName(Z)V
    .locals 0

    .line 1487
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useShortClassName:Z

    return-void
.end method

.method protected setSizeEndText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1887
    const-string p1, ""

    .line 1889
    :cond_0
    iput-object p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->sizeEndText:Ljava/lang/String;

    return-void
.end method

.method protected setSizeStartText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1855
    const-string p1, ""

    .line 1857
    :cond_0
    iput-object p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->sizeStartText:Ljava/lang/String;

    return-void
.end method

.method protected setSummaryObjectEndText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1951
    const-string p1, ""

    .line 1953
    :cond_0
    iput-object p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->summaryObjectEndText:Ljava/lang/String;

    return-void
.end method

.method protected setSummaryObjectStartText(Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 1919
    const-string p1, ""

    .line 1921
    :cond_0
    iput-object p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->summaryObjectStartText:Ljava/lang/String;

    return-void
.end method

.method protected setUseClassName(Z)V
    .locals 0

    .line 1443
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useClassName:Z

    return-void
.end method

.method protected setUseFieldNames(Z)V
    .locals 0

    .line 1527
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useFieldNames:Z

    return-void
.end method

.method protected setUseIdentityHashCode(Z)V
    .locals 0

    .line 1507
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useIdentityHashCode:Z

    return-void
.end method

.method protected setUseShortClassName(Z)V
    .locals 0

    .line 1476
    iput-boolean p1, p0, Lorg/apache/ldap/common/util/ToStringStyle;->useShortClassName:Z

    return-void
.end method
