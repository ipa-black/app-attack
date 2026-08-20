.class public final Lcom/appodeal/ads/segments/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/appodeal/ads/segments/b;

.field public c:Ljava/lang/Object;

.field public d:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/segments/i;->a:Ljava/lang/String;

    const-string v1, "op"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appodeal/ads/segments/b;->a(Ljava/lang/String;)Lcom/appodeal/ads/segments/b;

    move-result-object v1

    iput-object v1, p0, Lcom/appodeal/ads/segments/i;->b:Lcom/appodeal/ads/segments/b;

    invoke-static {v0}, Lcom/appodeal/ads/segments/i;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appodeal/ads/segments/i;->d:I

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/segments/i;->a(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x9

    const/16 v2, 0x8

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "average_session_length"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v9, 0xe

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "part_of_audience"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v9, 0xd

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "inapp_amount"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v9, 0xc

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "country"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v9, 0xb

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "connection_type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v9, 0xa

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "os_version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    move v9, v1

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "session_count"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    move v9, v2

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "app"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    move v9, v3

    goto :goto_0

    :sswitch_8
    const-string v0, "age"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    move v9, v4

    goto :goto_0

    :sswitch_9
    const-string v0, "sdk_version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v9, 0x5

    goto :goto_0

    :sswitch_a
    const-string v0, "session_time"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    move v9, v5

    goto :goto_0

    :sswitch_b
    const-string v0, "app_version"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    move v9, v6

    goto :goto_0

    :sswitch_c
    const-string v0, "gender"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    move v9, v7

    goto :goto_0

    :sswitch_d
    const-string v0, "device_type"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    move v9, v8

    goto :goto_0

    :sswitch_e
    const-string v0, "bought_inapps"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v9, 0x0

    :goto_0
    packed-switch v9, :pswitch_data_0

    return v1

    :pswitch_0
    return v4

    :pswitch_1
    return v5

    :pswitch_2
    return v2

    :pswitch_3
    return v8

    :pswitch_4
    return v6

    :pswitch_5
    return v7

    :pswitch_6
    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d107115 -> :sswitch_e
        -0x5bf6507d -> :sswitch_d
        -0x4a7a0d3f -> :sswitch_c
        -0x35c17346 -> :sswitch_b
        -0x28e7492a -> :sswitch_a
        -0x16745a2d -> :sswitch_9
        0x178ff -> :sswitch_8
        0x17a21 -> :sswitch_7
        0xb116e26 -> :sswitch_6
        0x281aad7d -> :sswitch_5
        0x2b9f63fb -> :sswitch_4
        0x39175796 -> :sswitch_3
        0x4f93ff1b -> :sswitch_2
        0x62fc1d20 -> :sswitch_1
        0x6c65b311 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/appodeal/ads/segments/i;->d:I

    invoke-static {v0}, Lcom/appodeal/ads/m;->a(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "value"

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 1
    :pswitch_2
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Integer;

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 2
    :pswitch_3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 3
    :pswitch_4
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0

    .line 4
    :pswitch_5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_6
    new-instance v0, Lcom/appodeal/ads/utils/Version;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/appodeal/ads/utils/Version;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 7

    invoke-static {}, Lcom/appodeal/ads/segments/j;->b()Lcom/appodeal/ads/segments/j;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/segments/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    :goto_0
    move-object p1, v2

    goto :goto_2

    .line 5
    :cond_0
    :try_start_0
    sget-object v3, Lcom/appodeal/ads/segments/j;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appodeal/ads/segments/j$b;

    if-eqz v3, :cond_1

    invoke-interface {v3, p1, v0}, Lcom/appodeal/ads/segments/j$b;->a(Landroid/content/Context;Lcom/appodeal/ads/segments/j;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_2

    sget-object v0, Lcom/appodeal/ads/segments/j;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :goto_2
    const/4 v0, 0x0

    if-nez p1, :cond_3

    return v0

    .line 6
    :cond_3
    iget v1, p0, Lcom/appodeal/ads/segments/i;->d:I

    const/16 v3, 0x9

    if-ne v1, v3, :cond_f

    .line 7
    instance-of v1, p1, Ljava/lang/Integer;

    const/4 v4, 0x7

    const/4 v5, 0x6

    const/4 v6, 0x4

    if-eqz v1, :cond_4

    move v1, v6

    goto :goto_3

    :cond_4
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_5

    move v1, v5

    goto :goto_3

    :cond_5
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    move v1, v4

    goto :goto_3

    :cond_6
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_7

    const/4 v1, 0x2

    goto :goto_3

    :cond_7
    move v1, v3

    .line 8
    :goto_3
    iput v1, p0, Lcom/appodeal/ads/segments/i;->d:I

    if-ne v1, v6, :cond_9

    .line 9
    iget-object v1, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    .line 10
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_8

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_4

    :cond_8
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_e

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    goto :goto_4

    :cond_9
    if-ne v1, v5, :cond_c

    .line 11
    iget-object v1, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    .line 12
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_a

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    goto :goto_4

    :cond_a
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_b

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    goto :goto_4

    :cond_b
    instance-of v4, v1, Ljava/lang/Float;

    if-eqz v4, :cond_e

    move-object v2, v1

    check-cast v2, Ljava/lang/Float;

    goto :goto_4

    :cond_c
    if-ne v1, v4, :cond_f

    .line 13
    iget-object v1, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    .line 14
    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_d

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_4

    :cond_d
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_e

    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    .line 15
    :cond_e
    :goto_4
    iput-object v2, p0, Lcom/appodeal/ads/segments/i;->c:Ljava/lang/Object;

    .line 16
    :cond_f
    iget v1, p0, Lcom/appodeal/ads/segments/i;->d:I

    if-ne v1, v3, :cond_10

    return v0

    :cond_10
    iget-object v1, p0, Lcom/appodeal/ads/segments/i;->b:Lcom/appodeal/ads/segments/b;

    if-eqz v1, :cond_11

    .line 17
    iget-object v0, v1, Lcom/appodeal/ads/segments/b;->b:Lcom/appodeal/ads/segments/c;

    .line 18
    invoke-interface {v0, p0, p1}, Lcom/appodeal/ads/segments/c;->a(Lcom/appodeal/ads/segments/i;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_11
    return v0
.end method
