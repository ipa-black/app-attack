.class public Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;
.super Ljava/lang/Object;
.source "VideoPreloadFactory.java"


# static fields
.field public static final Qhi:Lcom/bykv/vk/openvk/component/video/api/fl/Qhi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/Qhi;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/component/video/Qhi/Qhi/cJ/Qhi;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi:Lcom/bykv/vk/openvk/component/video/api/fl/Qhi;

    return-void
.end method

.method public static Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;)V
    .locals 12

    .line 48
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ac()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->WAv()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->pA()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->pA()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/16 v0, 0x1770

    .line 57
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->CJ(I)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->fl(I)V

    .line 59
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->Tgh(I)V

    .line 61
    const-string v0, "material_meta"

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->fl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->fl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 62
    :goto_0
    const-string v4, "ad_slot"

    invoke-virtual {p0, v4}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->fl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->fl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    .line 66
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->fl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 67
    invoke-virtual {p0, v4}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->fl(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 68
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    move-object v8, v1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    move-object v8, v0

    .line 72
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 75
    new-instance v11, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;

    move-object v1, v11

    move-object v2, p1

    move-object v3, v0

    move-object v4, v8

    move-wide v5, v9

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$1;-><init>(Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;JLcom/bykv/vk/openvk/component/video/api/ac/ac;)V

    .line 121
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz p1, :cond_5

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x194

    invoke-interface {p1, p0, v2, v1}, Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;ILjava/lang/String;)V

    .line 128
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v4, v1, v9

    const/4 v6, -0x1

    .line 129
    const-string v7, "video url is invalid"

    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;JILjava/lang/String;)V

    return-void

    .line 133
    :cond_6
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$2;

    const-string v0, "VideoPreload"

    invoke-direct {p1, v0, p0, v11}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl$2;-><init>(Ljava/lang/String;Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;)V

    .line 147
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->fl()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 148
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void

    .line 150
    :cond_7
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Sf/hm;->run()V

    return-void

    :cond_8
    :goto_3
    if-eqz p1, :cond_9

    const/16 v0, 0x64

    .line 53
    invoke-interface {p1, p0, v0}, Lcom/bykv/vk/openvk/component/video/api/fl/Qhi$Qhi;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;I)V

    :cond_9
    return-void
.end method

.method static synthetic Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->ac(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;JILjava/lang/String;)V
    .locals 0

    .line 39
    invoke-static/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;JILjava/lang/String;)V

    return-void
.end method

.method private static Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static Qhi(Ljava/lang/String;)Z
    .locals 8

    .line 229
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 232
    const-string v5, "ws:"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 234
    const-string v5, "wss:"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "https:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 238
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/bytedance/sdk/component/cJ/Qhi/Sf;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/component/cJ/Qhi/Sf;

    move-result-object p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private static ac(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 5

    .line 215
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 219
    invoke-static {p1, v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lorg/json/JSONObject;

    move-result-object v0

    .line 220
    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/WAv;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ac()I

    move-result p0

    int-to-long v3, p0

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/WAv;-><init>(Ljava/lang/String;J)V

    .line 221
    new-instance p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;)V

    .line 222
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;)V

    return-void
.end method

.method private static cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 4

    .line 163
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->WAv()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->hm()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ac()I

    move-result v0

    int-to-long v0, v0

    .line 167
    :goto_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 168
    invoke-static {p1, v2, v3, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lorg/json/JSONObject;

    move-result-object v2

    .line 169
    new-instance v3, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/zc;

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/zc;-><init>(Ljava/lang/String;J)V

    .line 170
    new-instance p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;)V

    .line 171
    const-string p1, "load_video_start"

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;)V

    return-void
.end method

.method private static cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;J)V
    .locals 4

    .line 194
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 198
    invoke-static {p1, v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lorg/json/JSONObject;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ABk;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ABk;-><init>()V

    .line 200
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ABk;->Qhi(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ac()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ABk;->Qhi(J)V

    .line 202
    invoke-virtual {v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ABk;->cJ(J)V

    .line 203
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->tP()I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_1

    const-wide/16 p3, 0x1

    .line 204
    invoke-virtual {v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ABk;->ac(J)V

    goto :goto_0

    :cond_1
    const-wide/16 p3, 0x0

    .line 206
    invoke-virtual {v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ABk;->ac(J)V

    .line 209
    :goto_0
    new-instance p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;)V

    .line 210
    const-string p1, "load_video_success"

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;)V

    return-void
.end method

.method private static cJ(Lcom/bykv/vk/openvk/component/video/api/ac/ac;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;JILjava/lang/String;)V
    .locals 4

    .line 176
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/video/CJ/fl;->Qhi(Lcom/bykv/vk/openvk/component/video/api/ac/ac;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/js;->ac(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 180
    invoke-static {p1, v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/api/ac/ac;)Lorg/json/JSONObject;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Gm;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Gm;-><init>()V

    .line 182
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ABk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Gm;->Qhi(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/ac;->ac()I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Gm;->Qhi(J)V

    .line 184
    invoke-virtual {v1, p3, p4}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Gm;->cJ(J)V

    .line 185
    invoke-virtual {v1, p5}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Gm;->Qhi(I)V

    .line 186
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string p3, ""

    if-eqz p0, :cond_1

    move-object p6, p3

    :cond_1
    invoke-virtual {v1, p6}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Gm;->cJ(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v1, p3}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Gm;->ac(Ljava/lang/String;)V

    .line 188
    new-instance p0, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/ac;)V

    .line 189
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/cJ/CJ/Qhi/Qhi;->Qhi(Lcom/bytedance/sdk/openadsdk/cJ/CJ/cJ/Qhi;)V

    return-void
.end method
