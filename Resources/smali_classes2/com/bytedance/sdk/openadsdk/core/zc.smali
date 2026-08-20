.class public Lcom/bytedance/sdk/openadsdk/core/zc;
.super Ljava/lang/Object;
.source "IdUtils.java"


# static fields
.field private static CJ:Ljava/lang/String;

.field private static Qhi:Ljava/lang/String;

.field private static ac:Ljava/lang/String;

.field private static cJ:Ljava/lang/String;

.field private static fl:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CJ(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    if-nez p0, :cond_0

    .line 45
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static Qhi()Ljava/lang/String;
    .locals 6

    .line 161
    const-string v0, "zh"

    const-string v1, ""

    .line 163
    :try_start_0
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 168
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    if-eqz v2, :cond_3

    .line 170
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 171
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x5

    if-lt v2, v5, :cond_1

    .line 173
    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 175
    :cond_1
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    return-object v0

    .line 178
    :cond_2
    const-string v0, "zh-Hant"

    return-object v0

    :cond_3
    return-object v4

    :catchall_0
    return-object v1
.end method

.method public static Qhi(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 49
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi:Ljava/lang/String;

    return-object p0

    .line 52
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/zc;->Tgh(Landroid/content/Context;)V

    .line 53
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi:Ljava/lang/String;

    return-object p0
.end method

.method public static Qhi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ac;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/ac;

    move-result-object p0

    .line 91
    const-string v0, "did"

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ac;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi:Ljava/lang/String;

    .line 94
    :cond_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 95
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi:Ljava/lang/String;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/fl/ac;->cJ(Ljava/lang/String;)V

    .line 96
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi:Ljava/lang/String;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/Gm;->Qhi(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static Tgh(Landroid/content/Context;)V
    .locals 2

    .line 118
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/zc;->CJ(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ac;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/ac;

    move-result-object p0

    const-string v0, "did"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ac;->cJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi:Ljava/lang/String;

    return-void
.end method

.method public static ac(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 70
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/zc;->CJ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/zc;->fl:Z

    if-nez v0, :cond_1

    .line 72
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/zc;

    monitor-enter v0

    .line 73
    :try_start_0
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/zc;->fl:Z

    if-nez v1, :cond_0

    .line 74
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/zc;->fl(Landroid/content/Context;)V

    .line 76
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 79
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/zc;->CJ:Ljava/lang/String;

    return-object p0
.end method

.method private static cJ()Ljava/lang/String;
    .locals 3

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/CQU;->fl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 132
    const-string v1, "MIUI-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/CQU;->cJ()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    const-string v1, "FLYME-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/CQU;->iMK()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/CQU;->Qhi(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    const-string v2, "EMUI-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_3
    :goto_0
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :catch_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cJ(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 57
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/zc;->ac:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 58
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/zc;->fl:Z

    if-nez v0, :cond_1

    .line 59
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/zc;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-boolean v1, Lcom/bytedance/sdk/openadsdk/core/zc;->fl:Z

    if-nez v1, :cond_0

    .line 61
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/zc;->fl(Landroid/content/Context;)V

    .line 63
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 66
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/zc;->ac:Ljava/lang/String;

    return-object p0
.end method

.method private static fl(Landroid/content/Context;)V
    .locals 2

    .line 103
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/zc;->fl:Z

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/zc;->CJ(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 110
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/zc;->cJ()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/zc;->cJ:Ljava/lang/String;

    .line 112
    sget-wide v0, Landroid/os/Build;->TIME:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/zc;->ac:Ljava/lang/String;

    .line 113
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/ac;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/ac;

    move-result-object p0

    const-string v0, "uuid"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ac;->cJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/zc;->CJ:Ljava/lang/String;

    const/4 p0, 0x1

    .line 114
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/zc;->fl:Z

    return-void
.end method
