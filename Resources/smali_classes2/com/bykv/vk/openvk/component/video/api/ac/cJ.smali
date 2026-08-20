.class public Lcom/bykv/vk/openvk/component/video/api/ac/cJ;
.super Ljava/lang/Object;
.source "VideoInfo.java"


# instance fields
.field private ABk:I

.field private CJ:D

.field private Gm:D

.field private HzH:I

.field private MQ:I

.field private Qhi:I

.field private ROR:Ljava/lang/String;

.field private Sf:Ljava/lang/String;

.field private Tgh:Ljava/lang/String;

.field private WAv:Ljava/lang/String;

.field private ac:J

.field private cJ:I

.field private fl:Ljava/lang/String;

.field private hm:Ljava/lang/String;

.field private hpZ:I

.field private iMK:F

.field private kYc:I

.field private pA:I

.field private tP:I

.field private zc:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 47
    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->iMK:F

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->pA:I

    .line 50
    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->hpZ:I

    .line 54
    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->HzH:I

    .line 55
    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->kYc:I

    const v0, 0x4b000

    .line 56
    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->tP:I

    const/4 v0, 0x1

    .line 60
    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->MQ:I

    return-void
.end method


# virtual methods
.method public ABk()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->hm:Ljava/lang/String;

    return-object v0
.end method

.method public CJ()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ABk:I

    return v0
.end method

.method public CJ(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ABk:I

    return-void
.end method

.method public CJ(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Sf:Ljava/lang/String;

    return-void
.end method

.method public EBS()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->MQ:I

    return v0
.end method

.method public Gm()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ROR:Ljava/lang/String;

    return-object v0
.end method

.method public HzH()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->kYc:I

    return v0
.end method

.method public MQ()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->hpZ:I

    return v0
.end method

.method public Qhi()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->zc:I

    return v0
.end method

.method public Qhi(D)V
    .locals 0

    .line 114
    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->CJ:D

    return-void
.end method

.method public Qhi(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->zc:I

    return-void
.end method

.method public Qhi(J)V
    .locals 0

    .line 106
    iput-wide p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ac:J

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->fl:Ljava/lang/String;

    return-void
.end method

.method public ROR()D
    .locals 2

    .line 118
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Gm:D

    return-wide v0
.end method

.method public ROR(I)V
    .locals 0

    .line 228
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->kYc:I

    return-void
.end method

.method public Sf()F
    .locals 1

    .line 126
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->iMK:F

    return v0
.end method

.method public Sf(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->pA:I

    return-void
.end method

.method public Tgh()D
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->CJ:D

    return-wide v0
.end method

.method public Tgh(I)V
    .locals 0

    .line 220
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->HzH:I

    return-void
.end method

.method public Tgh(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->WAv:Ljava/lang/String;

    return-void
.end method

.method public WAv()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh:Ljava/lang/String;

    return-object v0
.end method

.method public WAv(I)V
    .locals 1

    const/4 v0, 0x1

    .line 308
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 v0, 0x4

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->MQ:I

    return-void
.end method

.method public ac()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->cJ:I

    return v0
.end method

.method public ac(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->cJ:I

    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ROR:Ljava/lang/String;

    return-void
.end method

.method public cJ()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Qhi:I

    return v0
.end method

.method public cJ(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Qhi:I

    return-void
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh:Ljava/lang/String;

    return-void
.end method

.method public fl()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ac:J

    return-wide v0
.end method

.method public fl(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->tP:I

    return-void
.end method

.method public fl(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->hm:Ljava/lang/String;

    return-void
.end method

.method public hm()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->fl:Ljava/lang/String;

    return-object v0
.end method

.method public hm(I)V
    .locals 0

    .line 275
    iput p1, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->hpZ:I

    return-void
.end method

.method public hpZ()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->HzH:I

    return v0
.end method

.method public iMK()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->WAv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ROR:Ljava/lang/String;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/api/Tgh/cJ;->Qhi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->WAv:Ljava/lang/String;

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->WAv:Ljava/lang/String;

    return-object v0
.end method

.method public kYc()Lorg/json/JSONObject;
    .locals 5

    .line 232
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 234
    :try_start_0
    const-string v1, "cover_height"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->cJ()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 235
    const-string v1, "cover_url"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->WAv()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string v1, "cover_width"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ac()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 237
    const-string v1, "endcard"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->zc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v1, "file_hash"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->iMK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v1, "resolution"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->hm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v1, "size"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->fl()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 241
    const-string v1, "video_duration"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 242
    const-string v1, "video_url"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Gm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v1, "playable_download_url"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ABk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v1, "if_playable_loading_show"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->tP()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 245
    const-string v1, "remove_loading_page_type"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->MQ()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 246
    const-string v1, "fallback_endcard_judge"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Qhi()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 247
    const-string v1, "video_preload_size"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->pA()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 248
    const-string v1, "reward_video_cached_type"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->hpZ()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 249
    const-string v1, "execute_cached_type"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->HzH()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 250
    const-string v1, "endcard_render"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->CJ()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 251
    const-string v1, "replay_time"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->EBS()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 252
    const-string v1, "play_speed_ratio"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Sf()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 253
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ROR()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    .line 254
    const-string v1, "start"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ROR()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public pA()I
    .locals 4

    .line 201
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->tP:I

    if-gez v0, :cond_0

    const v0, 0x4b000

    .line 202
    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->tP:I

    .line 204
    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->tP:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->ac:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    long-to-int v0, v2

    .line 205
    iput v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->tP:I

    .line 207
    :cond_1
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->tP:I

    return v0
.end method

.method public qMt()Z
    .locals 1

    .line 303
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->HzH:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public tP()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->pA:I

    return v0
.end method

.method public zc()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Sf:Ljava/lang/String;

    return-object v0
.end method
