.class Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;
.super Ljava/lang/Object;
.source "FastDateFormat.java"

# interfaces
.implements Lorg/apache/commons/lang/time/FastDateFormat$Rule;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeZoneNameRule"
.end annotation


# instance fields
.field private final mDaylight:Ljava/lang/String;

.field private final mLocale:Ljava/util/Locale;

.field private final mStandard:Ljava/lang/String;

.field private final mStyle:I

.field private final mTimeZone:Ljava/util/TimeZone;

.field private final mTimeZoneForced:Z


# direct methods
.method constructor <init>(Ljava/util/TimeZone;ZLjava/util/Locale;I)V
    .locals 0

    .line 1205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    iput-object p1, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mTimeZone:Ljava/util/TimeZone;

    .line 1207
    iput-boolean p2, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mTimeZoneForced:Z

    .line 1208
    iput-object p3, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mLocale:Ljava/util/Locale;

    .line 1209
    iput p4, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mStyle:I

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 1212
    invoke-static {p1, p2, p4, p3}, Lorg/apache/commons/lang/time/FastDateFormat;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mStandard:Ljava/lang/String;

    const/4 p2, 0x1

    .line 1213
    invoke-static {p1, p2, p4, p3}, Lorg/apache/commons/lang/time/FastDateFormat;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mDaylight:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1215
    iput-object p1, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mStandard:Ljava/lang/String;

    .line 1216
    iput-object p1, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mDaylight:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public appendTo(Ljava/lang/StringBuffer;Ljava/util/Calendar;)V
    .locals 3

    .line 1231
    iget-boolean v0, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mTimeZoneForced:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_1

    .line 1232
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-eqz p2, :cond_0

    .line 1233
    iget-object p2, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mDaylight:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1235
    :cond_0
    iget-object p2, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mStandard:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1238
    :cond_1
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1239
    invoke-virtual {v0}, Ljava/util/TimeZone;->useDaylightTime()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result p2

    if-eqz p2, :cond_2

    .line 1240
    iget p2, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mStyle:I

    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mLocale:Ljava/util/Locale;

    const/4 v2, 0x1

    invoke-static {v0, v2, p2, v1}, Lorg/apache/commons/lang/time/FastDateFormat;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1242
    :cond_2
    iget p2, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mStyle:I

    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mLocale:Ljava/util/Locale;

    const/4 v2, 0x0

    invoke-static {v0, v2, p2, v1}, Lorg/apache/commons/lang/time/FastDateFormat;->getTimeZoneDisplay(Ljava/util/TimeZone;ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method public estimateLength()I
    .locals 2

    .line 1221
    iget-boolean v0, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mTimeZoneForced:Z

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mStandard:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mDaylight:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 1223
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang/time/FastDateFormat$TimeZoneNameRule;->mStyle:I

    if-nez v0, :cond_1

    const/4 v0, 0x4

    return v0

    :cond_1
    const/16 v0, 0x28

    return v0
.end method
