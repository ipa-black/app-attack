.class public Lcom/bytedance/sdk/openadsdk/ApmHelper;
.super Ljava/lang/Object;
.source "ApmHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;,
        Lcom/bytedance/sdk/openadsdk/ApmHelper$cJ;
    }
.end annotation


# static fields
.field private static CJ:Z = false

.field private static volatile Qhi:Z = false

.field private static ROR:Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;

.field private static Tgh:Lcom/bytedance/sdk/openadsdk/ApmHelper$cJ;

.field private static ac:Ljava/lang/String;

.field private static final cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static fl:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    sput-boolean v1, Lcom/bytedance/sdk/openadsdk/ApmHelper;->fl:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic CJ()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->ac:Ljava/lang/String;

    return-object v0
.end method

.method private static CJ(Ljava/lang/String;)V
    .locals 6

    .line 257
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 260
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/js;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object v3

    .line 261
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 264
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v5, Lcom/bytedance/sdk/openadsdk/ApmHelper$2;

    invoke-direct {v5, p0, v2}, Lcom/bytedance/sdk/openadsdk/ApmHelper$2;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    const-string v4, "sdk_crash_info"

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(JLcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Gm/ac/Qhi;)V

    :cond_1
    return-void
.end method

.method private static Gm()Ljava/lang/String;
    .locals 1

    .line 284
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 286
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->ABk()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "support_mem_dynamic_1"

    return-object v0

    .line 289
    :cond_0
    const-string v0, "support_mem_dynamic_0"

    return-object v0

    .line 292
    :cond_1
    const-string v0, "release"

    return-object v0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;)Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;
    .locals 0

    .line 41
    sput-object p0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->ROR:Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/ApmHelper$cJ;)Lcom/bytedance/sdk/openadsdk/ApmHelper$cJ;
    .locals 0

    .line 41
    sput-object p0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Tgh:Lcom/bytedance/sdk/openadsdk/ApmHelper$cJ;

    return-object p0
.end method

.method static synthetic Qhi(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    sput-object p0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->ac:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Qhi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->ac(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic Qhi()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Qhi:Z

    return v0
.end method

.method static synthetic Qhi(Z)Z
    .locals 0

    .line 41
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->CJ:Z

    return p0
.end method

.method static synthetic ROR()Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;
    .locals 1

    .line 41
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->ROR:Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;

    return-object v0
.end method

.method static synthetic Sf()Lcom/bytedance/sdk/openadsdk/ApmHelper$cJ;
    .locals 1

    .line 41
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Tgh:Lcom/bytedance/sdk/openadsdk/ApmHelper$cJ;

    return-object v0
.end method

.method static synthetic Tgh()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->fl:Z

    return v0
.end method

.method private static WAv()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/cJ;->Qhi()Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 181
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->eN()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "adType"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->sRC()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "aid"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v2, "cid"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v2, "reqId"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->jWV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v2, "-1"

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CQU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rit"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CQU()I

    move-result v2

    .line 187
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EBS()I

    move-result v1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const/4 v2, -0x1

    .line 190
    :cond_0
    const-string v1, "render_type"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method static synthetic ac()Ljava/util/Map;
    .locals 1

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->WAv()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static ac(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 220
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 221
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 222
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 224
    :try_start_0
    const-string v3, "sdk_version"

    const-string v4, "6.2.0.6"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v3, "host_app_id"

    sget-object v4, Lcom/bytedance/sdk/openadsdk/ApmHelper;->ac:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    const-string v3, "custom"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v2, "os"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v2, "os_version"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v2, "device_model"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    const-string v2, "device_brand"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v2, "sdk_version_name"

    const-string v3, "0.0.5"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v2, "channel"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Gm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v2, "aid"

    const-string v3, "10000001"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v2, "update_version_code"

    const/16 v3, 0x183e

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 236
    const-string v2, "bd_did"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string p0, "header"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string p0, "local_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 242
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "local_time_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 244
    const-string v1, "launch"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 246
    const-string v1, "ApmHelper"

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private static ac(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 207
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ac(Z)Z
    .locals 0

    .line 41
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->fl:Z

    return p0
.end method

.method static synthetic cJ(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->CJ(Ljava/lang/String;)V

    return-void
.end method

.method private static cJ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/monitor/collect/c/session?version_code=6206&device_platform=android&aid=10000001"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->ac(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 201
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->ac()Lcom/bytedance/sdk/openadsdk/core/tP;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/tP;->Qhi(Lorg/json/JSONObject;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic cJ()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->CJ:Z

    return v0
.end method

.method static synthetic cJ(Z)Z
    .locals 0

    .line 41
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Qhi:Z

    return p0
.end method

.method static synthetic fl()Ljava/lang/String;
    .locals 1

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Gm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic hm()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 41
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static initApm(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/InitConfig;)V
    .locals 3

    .line 54
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 57
    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Qhi:Z

    if-eqz v0, :cond_1

    return-void

    .line 60
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;

    const-string v1, "init-apm"

    invoke-direct {v0, v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/ApmHelper$1;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/InitConfig;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method public static isIsInit()Z
    .locals 1

    .line 252
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Qhi:Z

    return v0
.end method

.method public static reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 158
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->Tgh:Lcom/bytedance/sdk/openadsdk/ApmHelper$cJ;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/ApmHelper$cJ;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 161
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->ROR:Lcom/bytedance/sdk/openadsdk/ApmHelper$Qhi;

    return-void
.end method

.method public static reportPvFromBackGround()V
    .locals 2

    .line 211
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/ApmHelper;->CJ:Z

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    .line 213
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/zc;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 214
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->zn()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->cJ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
