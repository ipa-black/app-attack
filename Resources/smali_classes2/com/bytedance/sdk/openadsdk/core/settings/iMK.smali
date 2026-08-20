.class public Lcom/bytedance/sdk/openadsdk/core/settings/iMK;
.super Lcom/bytedance/sdk/openadsdk/core/settings/hpZ;
.source "SettingsDefaultRepository.java"


# static fields
.field static final CJ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ac:Z

.field private fl:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ja"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "en"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ko"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "zh"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "th"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "vi"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ru"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ar"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "fr"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "de"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "it"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "es"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "hi"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "pt"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "zh-Hant"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "ms"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "pl"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "tr"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->CJ:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/hpZ$Qhi;)V
    .locals 1

    .line 33
    const-string v0, "tt_sdk_settings.prop"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/hpZ;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/settings/hpZ$Qhi;)V

    .line 35
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->fl:Ljava/util/Set;

    return-void
.end method

.method public static Qhi(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 573
    :try_start_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0

    .line 575
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 576
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 577
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 578
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    return-object v0

    .line 583
    :catchall_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method


# virtual methods
.method public Qhi(Lorg/json/JSONObject;)V
    .locals 10

    .line 39
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi()Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->fl()Lorg/json/JSONObject;

    move-result-object v1

    .line 42
    const-string v2, "digest"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->ac:Z

    if-eqz v3, :cond_1

    .line 45
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    goto :goto_1

    .line 47
    :cond_1
    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 50
    :goto_1
    const-string v1, "data_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "data_time"

    invoke-interface {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 52
    const-string v1, "req_inter_min"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, 0xa

    .line 53
    invoke-virtual {p1, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v6, 0xea60

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_2

    const-wide/32 v6, 0x5265c00

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    :cond_2
    const-wide/32 v2, 0x927c0

    .line 58
    :cond_3
    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 61
    :cond_4
    const-string v1, "lp_new_style"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7fffffff

    if-eqz v1, :cond_5

    .line 62
    const-string v1, "lp_new_style"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 63
    const-string v3, "landingpage_new_style"

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 66
    :cond_5
    const-string v1, "blank_detect_rate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v3, 0x1e

    .line 67
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_6

    const/16 v6, 0x64

    if-le v3, v6, :cond_7

    :cond_6
    const/16 v3, 0x1e

    .line 71
    :cond_7
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 74
    :cond_8
    const-string v1, "feq_policy"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 76
    const-string v3, "duration"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 77
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    .line 78
    invoke-interface {v0, v3, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 80
    :cond_9
    const-string v3, "max"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 81
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 82
    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 86
    :cond_a
    const-string v1, "vbtt"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x5

    .line 87
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 88
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 92
    :cond_b
    const-string v1, "abtest"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 96
    const-string v3, "version"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 97
    const-string v3, "version"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    const-string v6, "ab_test_version"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 100
    :cond_c
    const-string v3, "param"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 101
    const-string v3, "param"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v3, "ab_test_param"

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    goto :goto_2

    .line 106
    :cond_d
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->ROR()V

    .line 109
    :cond_e
    :goto_2
    const-string v1, "log_rate_conf"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 111
    const-string v3, "global_rate"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 112
    invoke-virtual {v1, v3, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v1, v6

    .line 113
    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;F)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 117
    :cond_f
    const-string v1, "pyload_h5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 118
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 121
    :cond_10
    const-string v1, "pure_pyload_h5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 122
    const-string v1, "pure_pyload_h5"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 123
    const-string v3, "playableLoadH5Url"

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 126
    :cond_11
    const-string v1, "ads_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 127
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 130
    :cond_12
    const-string v1, "app_log_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 131
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 134
    :cond_13
    const-string v1, "coppa"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v3, -0x63

    .line 135
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 136
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/bytedance/sdk/openadsdk/core/hm;->CJ(I)V

    .line 137
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 139
    :cond_14
    const-string v1, "privacy_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 140
    const-string v1, "privacy_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 141
    const-string v3, "policy_url"

    invoke-interface {v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 143
    :cond_15
    const-string v1, "consent_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 144
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 147
    :cond_16
    const-string v1, "ivrv_downward"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 148
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 149
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 151
    :cond_17
    const-string v1, "dc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 152
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 155
    :cond_18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;)V

    .line 156
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->cJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;)V

    .line 158
    const-string v1, "if_both_open"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 159
    invoke-virtual {p1, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 160
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 162
    :cond_19
    const-string v1, "support_tnc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 163
    invoke-virtual {p1, v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 164
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 166
    :cond_1a
    const-string v1, "insert_js_config"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 167
    const-string v3, ""

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 171
    :cond_1b
    const-string v1, "max_tpl_cnts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/16 v3, 0x64

    .line 172
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 173
    invoke-interface {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 177
    :cond_1c
    const-string v1, "app_common_config"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 179
    const-string v3, "force_language"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 180
    const-string v3, "force_language"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1d

    sget-object v6, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->CJ:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 182
    const-string v6, "force_language"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 185
    :cond_1d
    const-string v3, "fetch_tpl_timeout_ctrl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 186
    const-string v3, "fetch_tpl_timeout_ctrl"

    const/16 v6, 0xbb8

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 187
    const-string v6, "fetch_tpl_timeout_ctrl"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 189
    :cond_1e
    const-string v3, "fetch_tpl_second"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 190
    const-string v3, "fetch_tpl_second"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 191
    const-string v6, "fetch_tpl_second"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 194
    :cond_1f
    const-string v3, "disable_rotate_banner_on_dislike"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 195
    const-string v3, "disable_rotate_banner_on_dislike"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 196
    const-string v6, "disable_rotate_banner_on_dislike"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 199
    :cond_20
    const-string v3, "support_gzip"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 200
    const-string v3, "support_gzip"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 201
    const-string v6, "support_gzip"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 204
    :cond_21
    const-string v3, "aes_key"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 205
    const-string v3, "aes_key"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    const-string v6, "aes_key"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 208
    :cond_22
    const-string v3, "support_rtl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 209
    const-string v3, "support_rtl"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 210
    const-string v6, "support_rtl"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 212
    :cond_23
    const-string v3, "ad_revenue_enable"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 213
    const-string v3, "ad_revenue_enable"

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 214
    const-string v6, "ad_revenue_enable"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 218
    :cond_24
    const-string v3, "gecko_hosts"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->fl:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 221
    const-string v3, "gecko_hosts"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 222
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-eqz v6, :cond_25

    move v6, v5

    .line 223
    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_25

    .line 224
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->fl:Ljava/util/Set;

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 227
    :cond_25
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->fl:Ljava/util/Set;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->Qhi(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v6

    iput-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->fl:Ljava/util/Set;

    .line 228
    const-string v6, "gecko_hosts"

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v3

    .line 230
    const-string v6, "GeckoLog: settings json error "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/ABk;->cJ(Ljava/lang/String;)V

    .line 235
    :cond_26
    :goto_4
    const-string v3, "read_video_from_cache"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 236
    const-string v3, "read_video_from_cache"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 237
    const-string v6, "read_video_from_cache"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 241
    :cond_27
    const-string v3, "ad_slot_conf_list"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 242
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ac;->Qhi(Lorg/json/JSONArray;)V

    .line 245
    const-string v3, "privacy"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 247
    const-string v6, "ad_enable"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 248
    const-string v6, "ad_enable"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 249
    const-string v7, "privacy_ad_enable"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 251
    :cond_28
    const-string v6, "personalized_ad"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 252
    const-string v6, "personalized_ad"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 253
    const-string v7, "privacy_personalized_ad"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 255
    :cond_29
    const-string v6, "sladar_enable"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 256
    const-string v6, "sladar_enable"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 257
    const-string v7, "privacy_sladar_enable"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 259
    :cond_2a
    const-string v6, "app_log_enable"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2b

    .line 260
    const-string v6, "app_log_enable"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 261
    const-string v7, "privacy_app_log_enable"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 264
    :cond_2b
    const-string v6, "debug_unlock"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2c

    .line 265
    const-string v6, "debug_unlock"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 266
    const-string v7, "privacy_debug_unlock"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 268
    :cond_2c
    const-string v6, "fields_allowed"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 269
    const-string v6, "fields_allowed"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2d

    .line 271
    const-string v6, "privacy_fields_allowed"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    goto :goto_5

    .line 273
    :cond_2d
    const-string v3, "privacy_fields_allowed"

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 278
    :cond_2e
    :goto_5
    const-string v3, "video_cache_config"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 279
    const-string v3, "video_cache_config"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    const-string v6, "video_cache_config"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 283
    :cond_2f
    const-string v3, "loaded_recall_time"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 284
    const-string v3, "loaded_recall_time"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_30

    if-eq v3, v4, :cond_30

    move v3, v5

    .line 288
    :cond_30
    const-string v6, "loadedCallbackOpportunity"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 291
    :cond_31
    const-string v3, "load_strategy"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 292
    const-string v3, "load_strategy"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_32

    if-eq v3, v4, :cond_32

    move v3, v5

    .line 296
    :cond_32
    const-string v6, "load_callback_strategy"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 299
    :cond_33
    const-string v3, "splash_video_load_strategy"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 300
    const-string v3, "splash_video_load_strategy"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_34

    const/4 v6, 0x3

    if-le v3, v6, :cond_35

    :cond_34
    move v3, v5

    .line 304
    :cond_35
    const-string v6, "splash_video_load_strategy"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 307
    :cond_36
    const-string v3, "support_mem_dynamic"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 308
    const-string v3, "support_mem_dynamic"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_37

    if-eq v3, v4, :cond_37

    move v3, v5

    .line 312
    :cond_37
    const-string v6, "support_mem_dynamic"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 315
    :cond_38
    const-string v3, "allow_blind_mode_request_ad"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 316
    const-string v3, "allow_blind_mode_request_ad"

    invoke-virtual {p1, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 317
    const-string v6, "allow_blind_mode_request_ad"

    invoke-interface {v0, v6, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 321
    :cond_39
    const-string v3, "bus_con"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 323
    const-string v6, "bus_con_send_log_type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 324
    const-string v6, "bus_con_send_log_type"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 325
    const-string v7, "bus_con_send_log_type"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 328
    :cond_3a
    const-string v6, "bus_con_sec_type"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 329
    const-string v6, "bus_con_sec_type"

    invoke-virtual {v3, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 330
    const-string v6, "bus_con_sec_type"

    invoke-interface {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 333
    :cond_3b
    const-string v2, "bus_con_dislike_report_raw"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 334
    const-string v2, "bus_con_dislike_report_raw"

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 335
    const-string v6, "bus_con_dislike_report_raw"

    invoke-interface {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 339
    :cond_3c
    const-string v2, "bus_con_adshow_check_enable"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 340
    const-string v2, "bus_con_adshow_check_enable"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 341
    const-string v6, "bus_con_adshow_check_enable"

    invoke-interface {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 345
    :cond_3d
    const-string v2, "bus_con_tnc_interval"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 346
    const-string v2, "bus_con_tnc_interval"

    const-wide/32 v6, 0x927c0

    invoke-virtual {v3, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 347
    const-string v2, "bus_con_tnc_interval"

    invoke-interface {v0, v2, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 350
    :cond_3e
    const-string v2, "bus_con_token_thread_count"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 351
    const-string v2, "bus_con_token_thread_count"

    const/4 v6, 0x4

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 352
    const-string v6, "bus_con_token_thread_count"

    invoke-interface {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 356
    :cond_3f
    const-string v2, "bus_con_video_keep_screen_on"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 357
    const-string v2, "bus_con_video_keep_screen_on"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 358
    const-string v6, "bus_con_video_keep_screen_on"

    invoke-interface {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 362
    :cond_40
    const-string v2, "bus_con_auto_click_delay"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 363
    const-string v2, "bus_con_auto_click_delay"

    const/16 v6, 0xbb8

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 364
    const-string v6, "bus_con_auto_click_delay"

    invoke-interface {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 367
    :cond_41
    const-string v2, "bus_con_express_host"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 368
    const-string v2, "bus_con_express_host"

    const-string v6, "https://sf16-static.i18n-pglstatp.com/obj/ad-pattern-sg/"

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 369
    const-string v6, "bus_con_express_host"

    invoke-interface {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 373
    :cond_42
    const-string v2, "bus_con_rewardedfull_link"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 374
    const-string v2, "bus_con_rewardedfull_link"

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 375
    const-string v6, "bus_con_rewardedfull_link"

    invoke-interface {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 378
    :cond_43
    const-string v2, "bus_con_check_clz"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 379
    const-string v2, "bus_con_check_clz"

    const-string v6, ""

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 380
    const-string v6, "bus_con_check_clz"

    invoke-interface {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 383
    :cond_44
    const-string v2, "bus_con_url_check"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 384
    const-string v2, "bus_con_url_check"

    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 385
    const-string v6, "bus_con_url_check"

    invoke-interface {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 388
    :cond_45
    const-string v2, "bus_con_behavior_count"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 389
    const-string v2, "bus_con_behavior_count"

    const/16 v6, 0x12c

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 390
    const-string v6, "bus_con_behavior_count"

    invoke-interface {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 393
    :cond_46
    const-string v2, "bus_con_collect_arbitrage"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 394
    const-string v2, "bus_con_collect_arbitrage"

    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 395
    const-string v6, "bus_con_collect_arbitrage"

    invoke-interface {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 398
    :cond_47
    const-string v2, "bus_con_arbitrage_loading_timeout"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 399
    const-string v2, "bus_con_arbitrage_loading_timeout"

    const/16 v6, 0x2710

    invoke-virtual {v3, v2, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 400
    const-string v6, "bus_con_arbitrage_loading_timeout"

    invoke-interface {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 403
    :cond_48
    const-string v2, "bus_con_arbitrage_loading_alpha"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 404
    const-string v2, "bus_con_arbitrage_loading_alpha"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v2, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    .line 405
    const-string v6, "bus_con_arbitrage_loading_alpha"

    double-to-float v2, v2

    invoke-interface {v0, v6, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;F)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 410
    :cond_49
    const-string v2, "perf_con"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 412
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_60

    .line 415
    const-string v6, "perf_con_stats_rate"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4a

    .line 416
    const-string v6, "perf_con_stats_rate"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 417
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4a

    .line 418
    const-string v7, "perf_con_stats_rate"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 422
    :cond_4a
    const-string v6, "perf_con_applog_send"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 423
    const-string v6, "perf_con_applog_send"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 424
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4b

    .line 425
    const-string v7, "perf_con_applog_send"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 429
    :cond_4b
    const-string v6, "perf_con_apm_native"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4c

    .line 430
    const-string v6, "perf_con_apm_native"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 431
    const-string v7, "perf_con_apm_native"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 434
    :cond_4c
    const-string v6, "perf_con_webview_preload_cache"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4d

    .line 435
    const-string v6, "perf_con_webview_preload_cache"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 436
    const-string v7, "perf_con_webview_preload_cache"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 439
    :cond_4d
    const-string v6, "perf_con_webview_preload_cache_v3"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 440
    const-string v6, "perf_con_webview_preload_cache_v3"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 441
    const-string v7, "perf_con_webview_preload_cache_v3"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 444
    :cond_4e
    const-string v6, "perf_con_webview_cache_count"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 445
    const-string v6, "perf_con_webview_cache_count"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 446
    const-string v7, "perf_con_webview_cache_count"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 449
    :cond_4f
    const-string v6, "perf_con_webview_cache_count_v3"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 450
    const-string v6, "perf_con_webview_cache_count_v3"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 451
    const-string v7, "perf_con_webview_cache_count_v3"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 455
    :cond_50
    const-string v6, "perf_con_thread_stack_size"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 456
    const-string v6, "perf_con_thread_stack_size"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const/high16 v7, -0x80000

    if-lt v6, v7, :cond_51

    if-gtz v6, :cond_51

    .line 458
    const-string v7, "perf_con_thread_stack_size"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 465
    :cond_51
    const-string v6, "perf_con_use_new_thread_pool"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 466
    const-string v6, "perf_con_use_new_thread_pool"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 467
    const-string v7, "perf_con_use_new_thread_pool"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 471
    :cond_52
    const-string v6, "perf_con_thread_pool_config"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 472
    const-string v6, "perf_con_thread_pool_config"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 473
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_53

    .line 474
    const-string v7, "perf_con_thread_pool_config"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 479
    :cond_53
    const-string v6, "perf_con_is_new_net_thread"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 480
    const-string v6, "perf_con_is_new_net_thread"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 481
    const-string v7, "perf_con_is_new_net_thread"

    invoke-interface {v0, v7, v6}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 485
    :cond_54
    const-string v6, "perf_con_use_prop"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 486
    const-string v6, "perf_con_use_prop"

    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/Dww;->Qhi(I)V

    .line 490
    :cond_55
    const-string v4, "perf_con_adlog_expire_time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_56

    .line 491
    const-string v4, "perf_con_adlog_expire_time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 492
    const-string v4, "perf_con_adlog_expire_time"

    invoke-interface {v0, v4, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 496
    :cond_56
    const-string v4, "perf_con_adlog_turn_off_retry_ad"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 497
    const-string v4, "perf_con_adlog_turn_off_retry_ad"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 498
    const-string v4, "perf_con_adlog_turn_off_retry_ad"

    invoke-interface {v0, v4, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 502
    :cond_57
    const-string v4, "perf_con_adlog_turn_off_retry_stats"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 503
    const-string v4, "perf_con_adlog_turn_off_retry_stats"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 504
    const-string v4, "perf_con_adlog_turn_off_retry_stats"

    invoke-interface {v0, v4, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 507
    :cond_58
    const-string v4, "perf_con_applog_rate"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 508
    const-string v4, "perf_con_applog_rate"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 509
    const-string v6, "perf_con_applog_rate"

    invoke-interface {v0, v6, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 512
    :cond_59
    const-string v4, "perf_con_track_url_strategy"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 513
    const-string v4, "perf_con_track_url_strategy"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 514
    const-string v6, "perf_con_track_url_strategy"

    invoke-interface {v0, v6, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 517
    :cond_5a
    const-string v4, "perf_con_drawable_code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 518
    const-string v4, "perf_con_drawable_code"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 519
    const-string v6, "perf_con_drawable_code"

    invoke-interface {v0, v6, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 521
    :cond_5b
    const-string v4, "perf_con_close_button_delay_check_time"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 522
    const-string v4, "perf_con_close_button_delay_check_time"

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 523
    const-string v6, "perf_con_close_button_delay_check_time"

    invoke-interface {v0, v6, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 527
    :cond_5c
    const-string v4, "perf_con_drop2rt_skip_label_list"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 528
    const-string v4, "perf_con_drop2rt_skip_label_list"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 529
    const-string v6, "perf_con_drop2rt_skip_label_list"

    invoke-interface {v0, v6, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 532
    :cond_5d
    const-string v4, "perf_con_crypt_V4_get_ad"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 533
    const-string v4, "perf_con_crypt_V4_get_ad"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 534
    const-string v6, "perf_con_crypt_V4_get_ad"

    invoke-interface {v0, v6, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 536
    :cond_5e
    const-string v4, "perf_con_crypt_V4_applog"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 537
    const-string v4, "perf_con_crypt_V4_applog"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 538
    const-string v6, "perf_con_crypt_V4_applog"

    invoke-interface {v0, v6, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 540
    :cond_5f
    const-string v4, "perf_con_crypt_V4"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 541
    const-string v4, "perf_con_crypt_V4"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 542
    const-string v4, "perf_con_crypt_V4"

    invoke-interface {v0, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v3

    .line 546
    const-string v4, "SettingsDefaultRepository"

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :cond_60
    :goto_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 552
    :try_start_2
    const-string v4, "app_common_config"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 554
    const-string v1, "bus_con"

    const-string v2, "bus_con"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v1

    .line 556
    const-string v2, "coreSettingJson"

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "SettingsDefaultRepository"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 558
    :goto_7
    const-string v1, "core_settings"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 560
    const-string v1, "dual_event_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 561
    const-string v1, "dual_event_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 562
    const-string v1, "dual_event_url"

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;

    .line 565
    :cond_61
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Tgh$Qhi;->Qhi()V

    .line 566
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->sDy()V

    .line 567
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/iMK;->CJ()V

    return-void
.end method
