.class public abstract Lcom/bytedance/sdk/openadsdk/core/model/tP;
.super Ljava/lang/Object;
.source "MaterialMeta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;
    }
.end annotation


# instance fields
.field private Qhi:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi:J

    return-void
.end method

.method public static CJ(Ljava/lang/String;)I
    .locals 0

    .line 216
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lorg/json/JSONObject;)I

    move-result p0

    return p0
.end method

.method public static CJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Qhi()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    :goto_0
    return v0
.end method

.method public static Qhi(Lorg/json/JSONObject;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 221
    const-string v1, "ut"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public static Qhi(Ljava/lang/String;)J
    .locals 2

    .line 180
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 181
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lorg/json/JSONObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;
    .locals 9

    const/4 v0, 0x0

    .line 159
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->js(I)V

    .line 160
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->sqa()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    :goto_0
    move v8, v1

    .line 176
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ohm()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Ki()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v5

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->zTC()I

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->LcF()I

    move-result v7

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/video/Qhi/cJ;-><init>(Ljava/lang/String;Lcom/bykv/vk/openvk/component/video/api/ac/cJ;Lcom/bykv/vk/openvk/component/video/api/ac/cJ;III)V

    return-object v0
.end method

.method public static Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->sqa()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->sqa()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_3

    .line 261
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->js()Z

    move-result v1

    if-nez v1, :cond_2

    return-object v0

    .line 264
    :cond_2
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;

    move-result-object p0

    .line 265
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->CJ()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;ZZZZ)Z
    .locals 2

    .line 103
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p4, :cond_4

    if-eqz p0, :cond_4

    .line 106
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p4

    invoke-virtual {p4}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->zc()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p4

    if-eqz p4, :cond_2

    return p3

    .line 112
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Qhi()I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_3

    return p2

    :cond_3
    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method private static Tgh(Lorg/json/JSONObject;)D
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 198
    const-string v2, "pack_time"

    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static ac()Lcom/bytedance/sdk/openadsdk/core/model/tP;
    .locals 1

    .line 227
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/Dww;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Dww;-><init>()V

    return-object v0
.end method

.method public static ac(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 205
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 209
    const-string v0, "MaterialMeta"

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->CJ()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static cJ(Ljava/lang/String;)D
    .locals 2

    .line 192
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 193
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Tgh(Lorg/json/JSONObject;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static cJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    .line 278
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/act/Qhi;->Qhi(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 279
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception p0

    .line 285
    const-string p1, "MaterialMeta"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 1

    .line 129
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ac(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static fl(Lorg/json/JSONObject;)J
    .locals 3

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 186
    const-string v2, "uid"

    invoke-virtual {p0, v2, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public static fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gga()I

    move-result v1

    .line 152
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x5

    if-eq v1, p0, :cond_2

    const/16 p0, 0xf

    if-eq v1, p0, :cond_2

    const/16 p0, 0x32

    if-ne v1, p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract ABk()I
.end method

.method public abstract ABk(I)V
.end method

.method public abstract ABk(Ljava/lang/String;)V
.end method

.method public abstract CJ(I)V
.end method

.method public abstract CJ(Lorg/json/JSONObject;)V
.end method

.method public abstract CJ(Z)V
.end method

.method public abstract CJ()Z
.end method

.method public abstract CQU()I
.end method

.method public abstract CQU(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract CQU(I)V
.end method

.method public abstract DS()Ljava/lang/String;
.end method

.method public abstract DaO()Z
.end method

.method public abstract Dq()Ljava/lang/String;
.end method

.method public abstract Dww()I
.end method

.method public abstract Dww(I)V
.end method

.method public abstract Dww(Ljava/lang/String;)V
.end method

.method public abstract EBS()I
.end method

.method public abstract EBS(I)V
.end method

.method public abstract EBS(Ljava/lang/String;)V
.end method

.method public abstract EGK()Ljava/lang/String;
.end method

.method public abstract Eh()Ljava/lang/String;
.end method

.method public abstract Eh(I)V
.end method

.method public abstract Eh(Ljava/lang/String;)V
.end method

.method public abstract Em()Z
.end method

.method public abstract Ewb()Z
.end method

.method public abstract FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;
.end method

.method public abstract FQ(I)V
.end method

.method public abstract GN()Z
.end method

.method public abstract Gm()Lcom/bytedance/sdk/openadsdk/core/model/fl;
.end method

.method public abstract Gm(I)V
.end method

.method public abstract Gm(Ljava/lang/String;)V
.end method

.method public abstract Gy()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract HLI()Ljava/lang/String;
.end method

.method public abstract HUk()Z
.end method

.method public abstract HWc()Z
.end method

.method public abstract Hf()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract Hy()I
.end method

.method public abstract HzH()I
.end method

.method public abstract HzH(I)V
.end method

.method public abstract HzH(Ljava/lang/String;)V
.end method

.method public abstract IC()Z
.end method

.method public abstract Jma()Ljava/lang/String;
.end method

.method public abstract Jma(I)V
.end method

.method public abstract KW()Lorg/json/JSONObject;
.end method

.method public abstract Ki()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;
.end method

.method public abstract LcF()I
.end method

.method public abstract LpL()Z
.end method

.method public abstract Ls()Z
.end method

.method public abstract MIe()Ljava/lang/String;
.end method

.method public abstract MND()I
.end method

.method public abstract MQ()Ljava/lang/String;
.end method

.method public abstract MQ(I)V
.end method

.method public abstract MQ(Ljava/lang/String;)V
.end method

.method public abstract NBs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract NFd()I
.end method

.method public abstract NFd(I)V
.end method

.method public abstract NLs()Lcom/bytedance/sdk/openadsdk/core/model/EBS;
.end method

.method public abstract Ohm()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;
.end method

.method public abstract Oy()F
.end method

.method public abstract PAe()Ljava/lang/String;
.end method

.method public abstract PAe(I)V
.end method

.method public abstract PER()Z
.end method

.method public abstract Px()V
.end method

.method public abstract Qe()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;
.end method

.method public abstract Qhi(D)V
.end method

.method public abstract Qhi(F)V
.end method

.method public abstract Qhi(I)V
.end method

.method public abstract Qhi(II)V
.end method

.method public Qhi(J)V
    .locals 0

    .line 92
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi:J

    return-void
.end method

.method public abstract Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/cJ;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/core/model/ABk;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/core/model/EBS;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/core/model/Tgh;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/core/model/WAv;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/core/model/ac;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/core/model/bxS;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/core/model/fl;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/core/model/iMK;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/core/model/kYc;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/core/model/zc;)V
.end method

.method public abstract Qhi(Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;)V
.end method

.method public abstract Qhi(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract Qhi(Z)V
.end method

.method public Qhi()Z
    .locals 3

    .line 79
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EBS()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract ROR()Ljava/lang/String;
.end method

.method public abstract ROR(I)V
.end method

.method public abstract ROR(Ljava/lang/String;)V
.end method

.method public abstract ROR(Z)V
.end method

.method public abstract ReL()Lcom/bytedance/sdk/openadsdk/core/model/zc;
.end method

.method public abstract Ri()Ljava/lang/String;
.end method

.method public abstract SL()I
.end method

.method public abstract SNp()I
.end method

.method public abstract SO()Lorg/json/JSONObject;
.end method

.method public abstract Sf(I)V
.end method

.method public abstract Sf(Ljava/lang/String;)V
.end method

.method public abstract Sf(Z)V
.end method

.method public Sf()Z
    .locals 1

    .line 252
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Tgh()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ROR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract TGC()Z
.end method

.method public abstract TKG()I
.end method

.method public abstract Tgh()Ljava/lang/String;
.end method

.method public abstract Tgh(I)V
.end method

.method public abstract Tgh(Ljava/lang/String;)V
.end method

.method public abstract Tgh(Z)V
.end method

.method public abstract Ttc()Z
.end method

.method public abstract Ug()I
.end method

.method public abstract Ura()J
.end method

.method public abstract VV()Z
.end method

.method public abstract VnT()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;"
        }
    .end annotation
.end method

.method public abstract WAv()Lcom/bytedance/sdk/openadsdk/core/model/Tgh;
.end method

.method public abstract WAv(I)V
.end method

.method public abstract WAv(Ljava/lang/String;)V
.end method

.method public abstract Wrw()I
.end method

.method public abstract XH()I
.end method

.method public abstract Xx()Z
.end method

.method public abstract XyJ()I
.end method

.method public abstract YAV()Z
.end method

.method public abstract YB()Ljava/lang/String;
.end method

.method public abstract YCN()Z
.end method

.method public abstract YD()I
.end method

.method public abstract ZRq()Z
.end method

.method public abstract aP()I
.end method

.method public abstract aP(I)V
.end method

.method public abstract aP(Ljava/lang/String;)V
.end method

.method public abstract ac(I)V
.end method

.method public abstract ac(J)V
.end method

.method public abstract ac(Lcom/bykv/vk/openvk/component/video/api/ac/cJ;)V
.end method

.method public abstract ac(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)V
.end method

.method public abstract ac(Lorg/json/JSONObject;)V
.end method

.method public abstract ac(Z)V
.end method

.method public abstract af()Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;
.end method

.method public abstract bIO()Ljava/lang/String;
.end method

.method public abstract bM()Ljava/lang/String;
.end method

.method public abstract bxS(I)V
.end method

.method public abstract bxS(Ljava/lang/String;)V
.end method

.method public abstract bxS()Z
.end method

.method public abstract cBj()Ljava/lang/String;
.end method

.method public cJ()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/tP;->Qhi:J

    return-wide v0
.end method

.method public abstract cJ(D)V
.end method

.method public abstract cJ(I)V
.end method

.method public abstract cJ(J)V
.end method

.method public abstract cJ(Lcom/bykv/vk/openvk/component/video/api/ac/cJ;)V
.end method

.method public abstract cJ(Lcom/bytedance/sdk/openadsdk/core/model/hpZ;)V
.end method

.method public abstract cJ(Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;)V
.end method

.method public abstract cJ(Lorg/json/JSONObject;)V
.end method

.method public abstract cJ(Z)V
.end method

.method public abstract cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;
.end method

.method public abstract cfS()Z
.end method

.method public abstract cjC()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/hpZ;",
            ">;"
        }
    .end annotation
.end method

.method public abstract czB()Z
.end method

.method public abstract dI()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract dIT()Lcom/bytedance/sdk/openadsdk/core/model/hpZ;
.end method

.method public abstract dVA()Ljava/lang/String;
.end method

.method public abstract eG()Lcom/bytedance/sdk/openadsdk/core/model/iMK;
.end method

.method public abstract eN()I
.end method

.method public abstract ejU()Z
.end method

.method public abstract es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;
.end method

.method public abstract es(I)V
.end method

.method public abstract et()Lorg/json/JSONObject;
.end method

.method public abstract fl(I)V
.end method

.method public abstract fl(Ljava/lang/String;)V
.end method

.method public abstract fl(Z)V
.end method

.method public abstract fl()Z
.end method

.method public abstract gSh()J
.end method

.method public abstract gT()Z
.end method

.method public abstract gga()I
.end method

.method public abstract gt()V
.end method

.method public abstract hU()Z
.end method

.method public abstract hm()Lcom/bytedance/sdk/openadsdk/core/model/kYc;
.end method

.method public abstract hm(I)V
.end method

.method public abstract hm(Ljava/lang/String;)V
.end method

.method public abstract hm(Z)V
.end method

.method public abstract hpZ()I
.end method

.method public abstract hpZ(I)V
.end method

.method public abstract hpZ(Ljava/lang/String;)V
.end method

.method public abstract iMK()J
.end method

.method public abstract iMK(I)V
.end method

.method public abstract iMK(Ljava/lang/String;)V
.end method

.method public abstract iWr()Z
.end method

.method public abstract id()V
.end method

.method public abstract ip()I
.end method

.method public abstract ip(I)V
.end method

.method public abstract is()V
.end method

.method public abstract jN()I
.end method

.method public abstract jPH()Z
.end method

.method public abstract jWV()Ljava/lang/String;
.end method

.method public abstract js(I)V
.end method

.method public abstract js()Z
.end method

.method public abstract kYc()I
.end method

.method public abstract kYc(I)V
.end method

.method public abstract kYc(Ljava/lang/String;)V
.end method

.method public abstract lB()Lcom/bytedance/sdk/openadsdk/AdSlot;
.end method

.method public abstract lB(I)V
.end method

.method public abstract lG()I
.end method

.method public abstract lG(I)V
.end method

.method public abstract mZ()Lorg/json/JSONObject;
.end method

.method public abstract mz()I
.end method

.method public abstract nR()I
.end method

.method public abstract ne()Lcom/bytedance/sdk/component/widget/cJ/Qhi;
.end method

.method public abstract oU()Ljava/lang/String;
.end method

.method public abstract ots()Ljava/lang/String;
.end method

.method public abstract pA()Lcom/bytedance/sdk/openadsdk/core/model/bxS;
.end method

.method public abstract pA(I)V
.end method

.method public abstract pA(Ljava/lang/String;)V
.end method

.method public abstract pF()I
.end method

.method public abstract pM()I
.end method

.method public abstract pM(I)V
.end method

.method public abstract pM(Ljava/lang/String;)V
.end method

.method public abstract pv()Lcom/bytedance/sdk/openadsdk/core/model/ac;
.end method

.method public abstract qMt()I
.end method

.method public abstract qMt(I)V
.end method

.method public abstract qMt(Ljava/lang/String;)V
.end method

.method public abstract qb()Z
.end method

.method public abstract rB()Z
.end method

.method public abstract rP()Z
.end method

.method public abstract sDy()Lcom/bytedance/sdk/openadsdk/core/model/WAv;
.end method

.method public abstract sDy(I)V
.end method

.method public abstract sRC()J
.end method

.method public abstract smJ()Z
.end method

.method public abstract sqa()I
.end method

.method public abstract tP()I
.end method

.method public abstract tP(I)V
.end method

.method public abstract tP(Ljava/lang/String;)V
.end method

.method public abstract tcw()I
.end method

.method public abstract up()Lcom/bytedance/sdk/openadsdk/utils/Jma;
.end method

.method public abstract usK()Ljava/lang/String;
.end method

.method public abstract uyf()Z
.end method

.method public abstract vml()I
.end method

.method public abstract wI()V
.end method

.method public abstract wa()Ljava/lang/String;
.end method

.method public abstract wp()Lorg/json/JSONObject;
.end method

.method public abstract wv()Lcom/bytedance/sdk/openadsdk/core/ugen/fl/Qhi;
.end method

.method public abstract xyz(I)V
.end method

.method public abstract xyz()Z
.end method

.method public abstract yBk()D
.end method

.method public abstract yN()I
.end method

.method public abstract yN(I)V
.end method

.method public abstract yoW()Z
.end method

.method public abstract yt()I
.end method

.method public abstract yy()Ljava/lang/String;
.end method

.method public abstract zTC()I
.end method

.method public abstract zc()I
.end method

.method public abstract zc(I)V
.end method

.method public abstract zc(Ljava/lang/String;)V
.end method

.method public abstract zjb()Ljava/lang/String;
.end method

.method public abstract zn()I
.end method

.method public abstract zn(I)V
.end method
