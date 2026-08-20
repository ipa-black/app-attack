.class public Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;
.super Ljava/lang/Object;
.source "UGenTemplateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;
    }
.end annotation


# static fields
.field private static volatile Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;
    .locals 1

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static Qhi()Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;
    .locals 2

    .line 45
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;

    if-nez v0, :cond_1

    .line 46
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;

    if-nez v1, :cond_0

    .line 48
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;

    .line 50
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 52
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;

    return-object v0
.end method

.method private Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;)V
    .locals 2

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    .line 236
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$4;

    const-string v1, "updateTmplTime"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;)V

    const/16 p1, 0xa

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;I)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->cJ()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;)V
    .locals 9

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/Qhi;->ac()Lcom/bytedance/sdk/component/ROR/cJ/cJ;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->cJ(Ljava/lang/String;)V

    const/4 v1, 0x7

    .line 145
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi(I)V

    .line 146
    const-string v1, "load_ug_t"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi(Ljava/lang/String;)V

    .line 147
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p5

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ROR/cJ/cJ;->Qhi(Lcom/bytedance/sdk/component/ROR/Qhi/Qhi;)V

    return-void

    :cond_1
    :goto_0
    if-eqz p5, :cond_2

    .line 139
    const-string p1, "template url or id  or md5 is empty"

    const-string p2, "net"

    const/4 p3, 0x1

    invoke-interface {p5, p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;->Qhi(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 81
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 83
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    move-object v5, p1

    .line 86
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 88
    :cond_2
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    .line 89
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;)V

    return-void

    :cond_3
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p5

    move-object v4, p4

    move-object v5, p1

    .line 91
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private cJ()V
    .locals 5

    .line 247
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->CJ()I

    move-result v0

    if-gtz v0, :cond_0

    const/16 v0, 0x64

    .line 251
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->cJ()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 252
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    goto :goto_2

    .line 258
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v0, v3

    sub-float/2addr v2, v0

    float-to-int v0, v2

    if-gtz v0, :cond_2

    return-void

    .line 263
    :cond_2
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 264
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    .line 265
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->CJ()Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 267
    :cond_3
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 269
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_4

    if-ge v3, v0, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 275
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    if-eqz v4, :cond_4

    .line 279
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 282
    :cond_5
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi(Ljava/util/Set;)V

    return-void

    :cond_6
    :goto_2
    if-nez v1, :cond_7

    goto :goto_3

    .line 253
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    :goto_3
    return-void
.end method

.method private cJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 223
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;-><init>()V

    .line 224
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p1

    .line 225
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->fl(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p1

    .line 226
    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p1

    .line 227
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p1

    .line 228
    invoke-virtual {p1, p5}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p1

    .line 229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->Qhi(Ljava/lang/Long;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    .line 230
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;)V

    .line 231
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->cJ()V

    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 206
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 210
    :cond_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;)V

    .line 211
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->fl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Ljava/lang/String;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;",
            ">;"
        }
    .end annotation

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 201
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->Qhi(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    const-string p1, "UGTemplateManager"

    const-string p2, "save ugen template error : tmpId is empty"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->Qhi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->ac()Ljava/lang/String;

    move-result-object v5

    .line 65
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->cJ()Ljava/lang/String;

    move-result-object v6

    .line 66
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->CJ()Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;->fl()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ad"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/hm;->CJ()Ljava/lang/String;

    move-result-object p1

    :cond_2
    move-object v8, p1

    .line 72
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$1;

    const-string v3, "saveUGenTemplate"

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xa

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;I)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;)V
    .locals 7

    .line 98
    const-string v0, "local"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 104
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 105
    invoke-direct {p0, v3, p4}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 106
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->fl()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;)V

    if-eqz p6, :cond_2

    .line 128
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->fl()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-interface {p6, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 130
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "parse json exception data is "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/Qhi;->fl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p6, p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;->Qhi(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 107
    :cond_3
    :goto_0
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$2;

    invoke-direct {v6, p0, p6}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;)V

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;)V

    return-void

    :cond_4
    :goto_1
    if-eqz p6, :cond_5

    .line 100
    const-string p1, "id  or md5 is empty"

    const-string p2, "net"

    const/4 p3, 0x1

    invoke-interface {p6, p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/cJ$Qhi;->Qhi(ILjava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public Qhi(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 292
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/Qhi/ac;->Qhi(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 294
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method
