.class public final Lcom/appodeal/ads/adapters/bidmachine/c;
.super Ljava/lang/Object;
.source "BidMachineUtils.java"


# direct methods
.method public static a(Ljava/lang/Object;)D
    .locals 4

    .line 153
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 154
    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 155
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 156
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    return-wide v0

    .line 157
    :cond_1
    instance-of v0, p0, Ljava/lang/String;

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-eqz v0, :cond_3

    .line 158
    check-cast p0, Ljava/lang/String;

    .line 159
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x2e

    .line 161
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-le v0, v3, :cond_2

    .line 162
    sget-object v0, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 164
    :cond_2
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-wide v1, v0

    :catch_0
    :cond_3
    return-wide v1
.end method

.method public static a()Lcom/explorestack/iab/utils/LogListener;
    .locals 2

    .line 103
    new-instance v0, Lcom/appodeal/ads/adapters/bidmachine/c$$ExternalSyntheticLambda0;

    const-string v1, "bm mraid event"

    invoke-direct {v0, v1}, Lcom/appodeal/ads/adapters/bidmachine/c$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lio/bidmachine/CustomParams;
    .locals 4

    .line 95
    new-instance v0, Lio/bidmachine/CustomParams;

    invoke-direct {v0}, Lio/bidmachine/CustomParams;-><init>()V

    if-eqz p0, :cond_0

    .line 98
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/CustomParams;->addParam(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/CustomParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lio/bidmachine/PriceFloorParams;
    .locals 10

    .line 125
    new-instance v0, Lio/bidmachine/PriceFloorParams;

    invoke-direct {v0}, Lio/bidmachine/PriceFloorParams;-><init>()V

    .line 126
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 131
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 132
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p0, v2, :cond_4

    .line 133
    invoke-virtual {v1, p0}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v2

    .line 134
    instance-of v3, v2, Lorg/json/JSONObject;

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    if-eqz v3, :cond_2

    .line 135
    check-cast v2, Lorg/json/JSONObject;

    .line 136
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 137
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 139
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/appodeal/ads/adapters/bidmachine/c;->a(Ljava/lang/Object;)D

    move-result-wide v7

    .line 140
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    cmpl-double v9, v7, v4

    if-lez v9, :cond_1

    .line 141
    invoke-virtual {v0, v6, v7, v8}, Lio/bidmachine/PriceFloorParams;->addPriceFloor(Ljava/lang/String;D)Lio/bidmachine/PriceFloorParams;

    goto :goto_1

    .line 145
    :cond_2
    invoke-static {v2}, Lcom/appodeal/ads/adapters/bidmachine/c;->a(Ljava/lang/Object;)D

    move-result-wide v2

    cmpl-double v4, v2, v4

    if-lez v4, :cond_3

    .line 147
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/PriceFloorParams;->addPriceFloor(D)Lio/bidmachine/PriceFloorParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    .line 152
    :catch_0
    new-instance p0, Lio/bidmachine/PriceFloorParams;

    invoke-direct {p0}, Lio/bidmachine/PriceFloorParams;-><init>()V

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/appodeal/ads/RestrictedData;)Lio/bidmachine/TargetingParams;
    .locals 7

    .line 1
    new-instance v0, Lio/bidmachine/TargetingParams;

    invoke-direct {v0}, Lio/bidmachine/TargetingParams;-><init>()V

    .line 4
    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/TargetingParams;->setUserId(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    .line 5
    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->getGender()Lcom/appodeal/ads/UserSettings$Gender;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/appodeal/ads/UserSettings$Gender;->MALE:Lcom/appodeal/ads/UserSettings$Gender;

    if-ne v1, v2, :cond_0

    .line 7
    sget-object v1, Lio/bidmachine/utils/Gender;->Male:Lio/bidmachine/utils/Gender;

    invoke-virtual {v0, v1}, Lio/bidmachine/TargetingParams;->setGender(Lio/bidmachine/utils/Gender;)Lio/bidmachine/TargetingParams;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v2, Lcom/appodeal/ads/UserSettings$Gender;->FEMALE:Lcom/appodeal/ads/UserSettings$Gender;

    if-ne v1, v2, :cond_1

    .line 9
    sget-object v1, Lio/bidmachine/utils/Gender;->Female:Lio/bidmachine/utils/Gender;

    invoke-virtual {v0, v1}, Lio/bidmachine/TargetingParams;->setGender(Lio/bidmachine/utils/Gender;)Lio/bidmachine/TargetingParams;

    goto :goto_0

    .line 10
    :cond_1
    sget-object v2, Lcom/appodeal/ads/UserSettings$Gender;->OTHER:Lcom/appodeal/ads/UserSettings$Gender;

    if-ne v1, v2, :cond_2

    .line 11
    sget-object v1, Lio/bidmachine/utils/Gender;->Omitted:Lio/bidmachine/utils/Gender;

    invoke-virtual {v0, v1}, Lio/bidmachine/TargetingParams;->setGender(Lio/bidmachine/utils/Gender;)Lio/bidmachine/TargetingParams;

    .line 14
    :cond_2
    :goto_0
    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->getAge()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/bidmachine/TargetingParams;->setBirthdayYear(Ljava/lang/Integer;)Lio/bidmachine/TargetingParams;

    .line 18
    :cond_3
    invoke-interface {p2, p0}, Lcom/appodeal/ads/RestrictedData;->getLocation(Landroid/content/Context;)Lcom/appodeal/ads/LocationData;

    move-result-object p0

    .line 19
    invoke-interface {p0}, Lcom/appodeal/ads/LocationData;->getDeviceLocation()Landroid/location/Location;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 21
    invoke-virtual {v0, p0}, Lio/bidmachine/TargetingParams;->setDeviceLocation(Landroid/location/Location;)Lio/bidmachine/TargetingParams;

    .line 23
    :cond_4
    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/bidmachine/TargetingParams;->setCountry(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    .line 24
    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->getCity()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/bidmachine/TargetingParams;->setCity(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    .line 25
    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->getZip()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/bidmachine/TargetingParams;->setZip(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    .line 28
    const-string p0, "sturl"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 29
    instance-of v1, p0, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 30
    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object p0, v2

    :goto_1
    if-eqz p0, :cond_6

    .line 31
    invoke-virtual {v0, p0}, Lio/bidmachine/TargetingParams;->setStoreUrl(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    .line 33
    :cond_6
    const-string p0, "paid"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 34
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_7

    .line 35
    check-cast p0, Ljava/lang/Boolean;

    goto :goto_2

    .line 36
    :cond_7
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 37
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_2

    :cond_8
    move-object p0, v2

    :goto_2
    if-eqz p0, :cond_9

    .line 38
    invoke-virtual {v0, p0}, Lio/bidmachine/TargetingParams;->setPaid(Ljava/lang/Boolean;)Lio/bidmachine/TargetingParams;

    .line 40
    :cond_9
    const-string p0, "keywords"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 41
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 42
    check-cast p0, Ljava/lang/String;

    goto :goto_3

    :cond_a
    move-object p0, v2

    :goto_3
    const-string v1, ","

    const/4 v3, 0x0

    if-eqz p0, :cond_c

    .line 43
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 44
    new-array p0, v3, [Ljava/lang/String;

    goto :goto_4

    .line 47
    :cond_b
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 49
    :catch_0
    new-array p0, v3, [Ljava/lang/String;

    .line 50
    :goto_4
    invoke-virtual {v0, p0}, Lio/bidmachine/TargetingParams;->setKeywords([Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    .line 52
    :cond_c
    const-string p0, "bcat"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 53
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 54
    check-cast p0, Ljava/lang/String;

    goto :goto_5

    :cond_d
    move-object p0, v2

    :goto_5
    if-eqz p0, :cond_f

    .line 55
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 56
    new-array p0, v3, [Ljava/lang/String;

    goto :goto_6

    .line 59
    :cond_e
    :try_start_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 61
    :catch_1
    new-array p0, v3, [Ljava/lang/String;

    .line 62
    :goto_6
    array-length v4, p0

    move v5, v3

    :goto_7
    if-ge v5, v4, :cond_f

    aget-object v6, p0, v5

    .line 63
    invoke-virtual {v0, v6}, Lio/bidmachine/TargetingParams;->addBlockedAdvertiserIABCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 66
    :cond_f
    const-string p0, "badv"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 67
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 68
    check-cast p0, Ljava/lang/String;

    goto :goto_8

    :cond_10
    move-object p0, v2

    :goto_8
    if-eqz p0, :cond_12

    .line 69
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 70
    new-array p0, v3, [Ljava/lang/String;

    goto :goto_9

    .line 73
    :cond_11
    :try_start_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    .line 75
    :catch_2
    new-array p0, v3, [Ljava/lang/String;

    .line 76
    :goto_9
    array-length v4, p0

    move v5, v3

    :goto_a
    if-ge v5, v4, :cond_12

    aget-object v6, p0, v5

    .line 77
    invoke-virtual {v0, v6}, Lio/bidmachine/TargetingParams;->addBlockedAdvertiserDomain(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 80
    :cond_12
    const-string p0, "bapps"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 81
    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_13

    .line 82
    move-object v2, p0

    check-cast v2, Ljava/lang/String;

    :cond_13
    if-eqz v2, :cond_15

    .line 83
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_14

    .line 84
    new-array p0, v3, [Ljava/lang/String;

    goto :goto_b

    .line 87
    :cond_14
    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    .line 89
    :catch_3
    new-array p0, v3, [Ljava/lang/String;

    .line 90
    :goto_b
    array-length p1, p0

    :goto_c
    if-ge v3, p1, :cond_15

    aget-object v1, p0, v3

    .line 91
    invoke-virtual {v0, v1}, Lio/bidmachine/TargetingParams;->addBlockedApplication(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 94
    :cond_15
    invoke-interface {p2}, Lcom/appodeal/ads/RestrictedData;->getCity()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/bidmachine/TargetingParams;->setCity(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Lcom/explorestack/iab/utils/Logger$LogLevel;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 104
    sget-object v0, Lcom/appodeal/ads/modules/common/internal/log/InternalLogKt;->observer:Lkotlin/jvm/functions/Function1;

    new-instance v1, Lcom/appodeal/ads/modules/common/internal/log/InternalLogEvent;

    .line 105
    sget-object v2, Lcom/appodeal/ads/adapters/bidmachine/c$a;->a:[I

    invoke-virtual {p1}, Lcom/explorestack/iab/utils/Logger$LogLevel;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    .line 117
    const-string p1, "verbose"

    goto :goto_0

    .line 118
    :cond_0
    const-string p1, "none"

    goto :goto_0

    .line 119
    :cond_1
    const-string p1, "error"

    goto :goto_0

    .line 120
    :cond_2
    const-string p1, "warning"

    goto :goto_0

    .line 121
    :cond_3
    const-string p1, "debug"

    goto :goto_0

    .line 122
    :cond_4
    const-string p1, "info"

    .line 123
    :goto_0
    invoke-direct {v1, p2, p0, p3, p1}, Lcom/appodeal/ads/modules/common/internal/log/InternalLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
